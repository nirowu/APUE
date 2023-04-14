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


static int     (*old_open)(const char *, int, ...);


unsigned long base_min = 0, base_max;

int get_loggerfd() {
    char* fd_name = getenv("LOGGER_FD");
    int fd_num = strtol(fd_name, NULL, 10);
    return fd_num;
}
void print_base () {
	int fd, sz, i = 0;
	char buf[16384], *s = buf, *line, *saveptr;
	// if(poem_max != 0) return;
	if ((fd = open("/proc/self/maps", O_RDONLY)) < 0) errquit("get_base/open");
    while ((sz = read(fd, s, sizeof(buf)-1-(s-buf))) > 0) { s += sz; }
    *s = 0;
    s = buf;
	close(fd);
	while((line = strtok_r(s, "\n\r", &saveptr)) != NULL) { s = NULL;
        
        if(strstr(line, "/usr/bin/cat") != NULL) {
            printf("%s\n", line);
            // break;
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
        if(strstr(line, "/usr/bin/cat" ) != NULL && (i == 1)) {
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

        // printf("token :%s*\n", tok);
        // printf("offset:%012lx*\n", offset);
    }
    return offset;
}
void get_GOTentry(long base, long offset, long* my_addr) {
    printf("--gotentry start--\n");
    long* old_func = (long*) ((base + offset) & ~(PAGE_SIZE - 1));
    printf("base:%lx\n", base);
    printf("offs:%lx\n", offset);
    printf("old_fun:%p\n", old_func);

    print_base();
    mprotect(old_func , PAGE_SIZE, PROT_READ | PROT_WRITE | PROT_EXEC);
    print_base();
    // printf("tar_fun:%p\n", my_addr);
    
    memcpy(old_func, &my_addr, sizeof(long));
    printf("--gotentry end  --\n");

}
int __libc_start_main(int (*main) (int,char **,char **),
                      int argc, char **ubp_av,
                      void (*init) (void),
                      void (*fini)(void),
                      void (*rtld_fini)(void),
                      void (*stack_end)) {


    int (*original__libc_start_main)(int (*main) (int,char **,char **),
                                     int argc, char **ubp_av,
                                     void (*init) (void),
                                     void (*fini)(void),
                                     void (*rtld_fini)(void),
                                     void (*stack_end));

    // get the address of old_function with base_min and offset
    void* handle_sb = dlopen("sandbox.so", RTLD_NOW);
    long* tar_addr = (long*) dlsym(handle_sb, "my_open");

    unsigned long   offset;
    char            buf[1024], api_open[5] = "open";
    get_base();
    offset = get_offset(buf, api_open);
    
    printf("base:%lx\n", base_min);
    printf("offs:%lx\n", offset);
    get_GOTentry(base_min, offset, tar_addr);

    // dlclose(handle_sb);

    void* handle_libc = dlopen("libc.6.so", RTLD_NOW);
    original__libc_start_main = dlsym(handle_libc, "__libc_start_main");
    int ret_val = original__libc_start_main(main, argc,ubp_av, init, fini,
                                     rtld_fini, stack_end);
    dlclose(handle_libc);
    printf("haha\n");

    return ret_val;
}

int my_open(const char *pathname, int flags, ...) {
    va_list vl; va_start(vl, flags); 
    mode_t mode = (flags & O_CREAT)? va_arg(vl, mode_t): 0;
    void* handle = dlopen("libc.so.6", RTLD_NOW);
    printf("haha");
    char test[12] = "hoho";
    int logger = get_loggerfd();
    write(logger, test, 5);

    old_open = dlsym(handle, "open");
    int val = old_open(pathname, flags, mode);
    return val;
}

// int my_close() {

// }
// int my_read() {

// }
