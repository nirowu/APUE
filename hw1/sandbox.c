#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <stdint.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/socket.h>
#include <netdb.h>
#include <dlfcn.h>
#include <signal.h>
#include <string.h>
#include <limits.h>
#include <fcntl.h>
#include <ctype.h>

#define PAGE_SIZE sysconf(_SC_PAGESIZE)
#define BUF_SIZE 1024
#define LIMIT 32
unsigned long base_min = 0, base_max;

// typedef Blac

static int      (*old_system)(const char*);
static int      (*old_open)(const char *, int, ...);
static int      (*old_connect)(int , const struct sockaddr *, socklen_t );
static int      (*old_getaddrinfo)(const char *, const char *, const struct addrinfo *,struct addrinfo **);
static ssize_t  (*old_read)(int , void *, size_t );
static ssize_t  (*old_write)(int, const void *, size_t);


int get_loggerfd() {
    char* fd_name = getenv("LOGGER_FD");
    if (fd_name == NULL) { perror("get_loggerfd/wrong_fd");}
    return strtol(fd_name, NULL, 10);
}

FILE* get_logger_file() {
    char* fd_name = getenv("LOGGER_FD");
    return fdopen(strtol(fd_name, NULL, 10), "w");
}
void parse_blacklist() {
    printf("--parse_blacklist--\n");
    char* conf_path = getenv("SANDBOX_CONFIG");
    FILE * fptr;
    fptr = fopen(conf_path , "r");
    if (fptr == NULL) { perror("parse_blacklist/fopen");}
    // while (!feof(fptr)) {
    //     fscanf(fptr, "%s", buf);
    // }
    // char buf[4096];

    // fscanf(fptr, "BEGIN %s-blacklist\n", buf);
    // printf("open:%s\n", buf);
    fclose(fptr);
    return;
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
void get_string(const void *buf, char *str, size_t count) {
    size_t total = (count < LIMIT)? count: LIMIT;
    memset(str, 0, LIMIT + 1); strncpy(str, (const char *) buf, total);

    for (size_t i = 0; i < total; i++) {
        if (!isprint(str[i])) str[i] = '.';
    }

    if (total == LIMIT) str[LIMIT] = 0;
}

int my_open(const char *pathname, int flags, ...) {

    va_list vl; va_start(vl, flags); 
    mode_t mode = (flags & O_CREAT)? va_arg(vl, mode_t): 0;

    void* handle = dlopen("libc.so.6", RTLD_NOW);
    old_open = dlsym(handle, "open");
    int value = old_open(pathname, flags, mode);

    int logger_fd = get_loggerfd(); FILE *flogger = get_logger_file();
    char filename[PATH_MAX]; get_filename(filename, pathname, -1, NULL);

    
    if (dprintf(logger_fd, "[logger] open(\"%s\", %o, %o) = %d\n", filename, flags, mode, value) < 0) {
            perror("open dprintf error");
    }
    // if (fwrite(flogger, "[logger] open(\"%s\", %o, %o) = %d\n", filename, flags, mode, value) < 0) {
    //     perror("open fprintf error");
    // }

    parse_blacklist();
    return value;
}
ssize_t my_read(int fd, void* buf, size_t count) {


    void* handle = dlopen("libc.so.6", RTLD_NOW);

    old_open = dlsym(handle, "read");

    // ssize_t value = old_read(fd, buf, count);

    // int logger_fd = get_loggerfd();
    // char str[LIMIT + 1]; get_string(buf, str, value);
    // char filename[PATH_MAX]; get_filename(filename, NULL, fd, NULL);

    // if (dprintf(logger_fd, "[logger] read(\"%s\", \"%s\", %ld) = %ld\n", filename, str, count, value) < 0) {
    //         perror("open dprintf error");
    // }
    return 0;

}
ssize_t my_write(int fd, const void *buf, size_t count) {
    printf("--my_write--\n");
    return 0;
}
int my_connect(int sockfd, const struct sockaddr *addr, socklen_t addrlen) {
    printf("--my_connect--\n");
    return 0;
}
int my_getaddrinfo(const char *node, const char *service, const struct addrinfo *hints, struct addrinfo **res) {
    printf("--my_getaddrinfo--\n");
    return 0;
}
int my_system(const char *command){
    printf("--my_system--\n");
    return 0;
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

unsigned long get_offset(char* cmd, char* api_func) {

    char*   tok;
    char*   env[]  = { NULL };
    char    buf[1024], command[64]; 
    int     pipefd[2];
    pid_t   pid; 
    unsigned long offset;

    sprintf(command, "readelf /usr/bin/%s -r | grep %s", cmd, api_func);

    pipe(pipefd);
    pid = fork();
    if (pid == 0) {
        close(pipefd[0]);
        dup2(pipefd[1], STDOUT_FILENO);
        // execle("/bin/sh", "/bin/sh", "-c", "readelf /usr/bin/cat -r | grep open", NULL, env);
        execle("/bin/sh", "/bin/sh", "-c", command, NULL, env);

        exit(0);
    }
    else if (pid > 0) {
        close(pipefd[1]);
        size_t bytes = read(pipefd[0], buf, BUF_SIZE);
        tok = strtok(buf, " ");
        offset = strtol(tok, NULL, 16);
        wait(NULL);
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

    if ((mprotect(old_page , PAGE_SIZE * 1, PROT_READ | PROT_EXEC)) == -1) {
        perror("reset_got_entry/mprotect");
        exit(EXIT_FAILURE);
    }
    // printf("[-] reset GOT entry end\n");

    return;
}

void init_sandbox(int argc, char** argv) {

    // printf("[+] init sandbox start\n");

    // get the address of my_func && old_function with base_min and offset
    long* my_open_ptr = (long*) my_open;
    long* my_read_ptr = (long*) my_read;
    long* my_write_ptr = (long*) my_write;
    long* my_connect_ptr = (long*) my_connect;
    long* my_getaddrinfo_ptr = (long*) my_getaddrinfo;
    long* my_system_ptr = (long*) my_system;


    char            buf[1024], 
                    api_open[5] = "open", api_read[5] = "read", api_write[6] = "write",
                    api_connect[8] = "connect", api_getaddrinfo[12] = "getaddrinfo", api_system[7] = "system";
    unsigned long   offset_open, offset_read, offset_write, 
                    offset_connect, offset_getaddrinfo,  offset_system;

    get_base();

    // modify GOT - open
    offset_open = get_offset(argv[0], api_open);
    reset_got_entry(base_min, offset_open, my_open_ptr);
    // modify GOT - read
    offset_read = get_offset(argv[0], api_read);
    reset_got_entry(base_min, offset_read, my_read_ptr);
    // modify GOT - write
    offset_write = get_offset(argv[0], api_write);
    reset_got_entry(base_min, offset_write, my_write_ptr);
    // modify GOT - connect
    offset_write = get_offset(argv[0], api_connect);
    reset_got_entry(base_min, offset_connect, my_connect_ptr);
    // modify GOT - getaddrinfo
    offset_write = get_offset(argv[0], api_getaddrinfo);
    reset_got_entry(base_min, offset_getaddrinfo, my_getaddrinfo_ptr);
    // modify GOT - system
    offset_write = get_offset(argv[0], api_system);
    reset_got_entry(base_min, offset_system, my_system_ptr);

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
    init_sandbox(argc, argv);
    printf("-------------end---------------\n");
    return original__libc_start_main(main, argc, argv, init, fini,
                                     rtld_fini, stack_end);
}
