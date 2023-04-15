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
    if (fd_name == NULL) {
        perror("get_loggerfd/wrong_fd");
    }
    int fd_num = strtol(fd_name, NULL, 10);
    
    return fd_num;
}
FILE* get_logger() {
    char* fd_name = getenv("LOGGER_FD");
    return fdopen(strtol(fd_name, NULL, 10), "w");
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
int get_filename(char *filename, const char *pathname, int fd, FILE *stream) {
    char path[PATH_MAX]; memset(path, 0, PATH_MAX); memset(filename, 0, PATH_MAX);

    if (pathname != NULL) {
        if (realpath(pathname, filename) == NULL) {
            return -1;
        }
    } else {
        if (fd >= 0) {
            snprintf(path, PATH_MAX, "/proc/self/fd/%d", fd);
        }

        if (stream != NULL) {
            snprintf(path, PATH_MAX, "/proc/self/fd/%d", fileno(stream));
        }

        if (readlink(path, filename, PATH_MAX) < 0) {
            return -1;
        }
    }

    return 0;
}
int my_open(const char *pathname, int flags, ...) {
    printf("--myopen--\n");

    va_list vl; va_start(vl, flags); 
    mode_t mode = (flags & O_CREAT)? va_arg(vl, mode_t): 0;

    void* handle = dlopen("libc.so.6", RTLD_NOW);
    old_open = dlsym(handle, "open");
    int value = old_open(pathname, flags, mode);

    // open(pathname, flags);

    char test[12] = "hoho\n";
    int logger = get_loggerfd(); FILE* LOGGER = get_logger();
    // char filename[PATH_MAX]; get_filename(filename, pathname, -1, NULL);

    if (write(logger, test, 5) < 0) {
        perror("my_open/write");
    }
 
    // if (logger == -1) {
    //     if (fprintf(LOGGER, "[logger] open(\"%s\", %03o, %03o) = %d\n", filename, flags, mode, value) < 0) {
    //         perror("open fprintf error");
    //     }
    // } else {
    //     if (dprintf(logger, "[logger] open(\"%s\", %03o, %03o) = %d\n", filename, flags, mode, value) < 0) {
    //         perror("open dprintf error");
    //     }
    // }


    return value;
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
        if(strstr(line, "/usr/bin/cat" ) != NULL && (i == 0)) {
            sscanf(line, "%lx-%lx ", &base_min, &base_max);
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

    // printf("[+] reset GOT entry start\n");

    if (offset < 0) return;
    long* old_page = (long*) ((base + offset) & ~(PAGE_SIZE - 1));
    long* old_func = (long*) (base + offset);
    if ((mprotect(old_page , PAGE_SIZE * 1, PROT_READ | PROT_WRITE | PROT_EXEC)) == -1) {
        perror("reset_got_entry/mprotect");
        exit(EXIT_FAILURE);
    }
    memcpy(old_func, &my_addr, sizeof(long));

    // printf("[-] reset GOT entry end\n");

    return;
}

void init_sandbox() {

    // printf("[+] init sandbox start\n");

    // get the address of my_func && old_function with base_min and offset

    long* my_open_ptr = (long*) my_open;

    char            buf[1024], api_open[5] = "open";
    unsigned long   offset_open;

    get_base();
    offset_open = get_offset(buf, api_open);
    reset_got_entry(base_min, offset_open, my_open_ptr);
    
    // printf("[-] init sandbox end\n");
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
