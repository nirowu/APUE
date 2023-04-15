#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>
#include <signal.h>
#include <stdarg.h>
#include <string.h>
#include <limits.h>
#include <fcntl.h>
#include <stdint.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/wait.h>

#define PAGE_SIZE sysconf(_SC_PAGESIZE)
#define BUF_SIZE 1024

unsigned long base_min = 0, base_max;


static int     (*old_open)(const char *, int, ...);


int get_loggerfd() {
    char* fd_name = getenv("LOGGER_FD");
    if (fd_name != NULL) {

    }
    int fd_num = strtol(fd_name, NULL, 10);

    return fd_num;
}
int is_in_blacklist() {
    int     fd, sz;
    char    buf[16384], *s = buf, *line, *saveptr;
	if ((fd = open("config.txt", O_RDONLY)) < 0) perror("is_in_blacklist/open");
    while ((sz = read(fd, s, sizeof(buf)-1-(s-buf))) > 0) { s += sz; }
    *s = 0;
    s = buf;
	close(fd);
	while((line = strtok_r(s, "\n\r", &saveptr)) != NULL) { s = NULL;
        if(strstr(line, "open") != NULL) {
            printf("%s\n", line);
		}
	}
}

int my_open(const char *pathname, int flags, ...) {
    printf("myopen--\n");

    va_list vl; va_start(vl, flags); 
    mode_t mode = (flags & O_CREAT)? va_arg(vl, mode_t): 0;

    void* handle = dlopen("libc.so.6", RTLD_LAZY);
    open(pathname, flags);
    printf("haha");
    char test[12] = "hoho";
    int logger = get_loggerfd();
    write(logger, test, 4);

    old_open = dlsym(handle, "open");
    int val = old_open(pathname, flags, mode);
    return val;
}


void print_base () {
	int fd, sz, i = 0;
	char buf[16384], *s = buf, *line, *saveptr;
	if ((fd = open("/proc/self/maps", O_RDONLY)) < 0) perror("get_base/open");
    while ((sz = read(fd, s, sizeof(buf)-1-(s-buf))) > 0) { s += sz; }
    *s = 0;
    s = buf;
	close(fd);
	while((line = strtok_r(s, "\n\r", &saveptr)) != NULL) { s = NULL;
        if(strstr(line, "/usr/bin/cat") != NULL) {
            printf("%s\n", line);
		}
        if (i > 3) break;
        i ++;
	}
    printf("-------\n");
    return;
}
void get_base() {
	int fd, sz, i = 0;
	char buf[16384], *s = buf, *line, *saveptr;
	if((fd = open("/proc/self/maps", O_RDONLY)) < 0) {
        perror("get_base/open");
    }
    while((sz = read(fd, s, sizeof(buf)-1-(s-buf))) > 0) { s += sz; }
    *s = 0;
    s = buf;
	close(fd);
	while((line = strtok_r(s, "\n\r", &saveptr)) != NULL) { s = NULL;
        // printf("%s\n", line);
        if(strstr(line, "/usr/bin/cat" ) != NULL && (i == 0)) {
            // printf("haha");
            // printf("%s\n", line);
            sscanf(line, "%lx-%lx ", &base_min, &base_max);
            // printf("base_min:%lx\n", base_min);
            break;
		}
        i ++;
	}
    return;
}

unsigned long get_offset(char* buf, char* api_func) {

    char*   tok;
    char*   env[]  = { NULL };
    int     pipefd[2];
    pid_t   pid; 
    unsigned long offset;

    pipe(pipefd);
    pid = fork();
    if (pid == 0) {
        close(pipefd[0]);
        dup2(pipefd[1], STDOUT_FILENO);
        execle("/bin/sh", "/bin/sh", "-c", "readelf /usr/bin/cat -r | grep open", NULL, env);
        exit(0);
    }
    else if (pid > 0) {
        wait(NULL);

        close(pipefd[1]);
        size_t bytes = read(pipefd[0], buf, BUF_SIZE);
        tok = strtok(buf, " ");
        offset = strtol(tok, NULL, 16);
    }
    return offset;
}

void reset_got_entry(long base, long offset, long* my_addr) {

    printf("[+] reset GOT entry start\n");

    if (offset < 0) return;
    long* old_func = (long*) ((base + offset) & ~(PAGE_SIZE - 1));
    if ((mprotect(old_func , PAGE_SIZE * 1, PROT_READ | PROT_WRITE | PROT_EXEC)) == -1) {
        perror("reset_got_entry/mprotect");
        exit(EXIT_FAILURE);
    }
    memcpy(old_func, &my_addr, sizeof(long));

    printf("[-] reset GOT entry end\n");

    return;
}

void init_sandbox() {

    printf("[+] init sandbox start\n");

    // get the address of my_func && old_function with base_min and offset

    long* my_open_ptr = (long*) my_open;

    void* handle_sb = dlopen("sandbox.so", RTLD_NOW);
    long* tar_addr = (long*) dlsym(handle_sb, "my_open");

    char            buf[1024], api_open[5] = "open";
    unsigned long   offset_open;

    get_base();
    offset_open = get_offset(buf, api_open);
    reset_got_entry(base_min, offset_open, my_open_ptr);
    
    printf("[-] init sandbox end\n");
    return;
} 

int __libc_start_main(int (*main) (int,char **,char **),
                      int argc, char **argv,
                      void (*init) (void),
                      void (*fini)(void),
                      void (*rtld_fini)(void),
                      void (*stack_end)) {
                        
    int (*original__libc_start_main)(int (*main) (int,char **,char **),
                                     int argc, char **argv,
                                     void (*init) (void),
                                     void (*fini)(void),
                                     void (*rtld_fini)(void),
                                     void (*stack_end));

    original__libc_start_main = dlsym(RTLD_NEXT, "__libc_start_main");
    init_sandbox();
    printf("-------------end---------------\n");
    return original__libc_start_main(main, argc, argv, init, fini,
                                     rtld_fini, stack_end);
}
