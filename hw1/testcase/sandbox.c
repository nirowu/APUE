#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdbool.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <dlfcn.h>
#include <signal.h>
#include <string.h>
#include <limits.h>
#include <fcntl.h>
#include <ctype.h>
#include <errno.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>



#define PAGE_SIZE sysconf(_SC_PAGESIZE)
#define BUF_SIZE 1024
#define LIST_NAME_SIZE 96
#define LIST_SIZE 1024
#define LIST_LEN 1024
unsigned long base_min = 0, base_max;

typedef struct configinfo{
    char listname[LIST_NAME_SIZE];
    char listdata[LIST_SIZE][LIST_LEN];
    int listlen;
} Blacklist;

Blacklist open_blacklist = {"", {'\0'}, 0};
Blacklist read_blacklist = {"", {'\0'}, 0};
Blacklist connect_blacklist = {"", {'\0'}, 0};
Blacklist getaddrinfo_blacklist = {"", {'\0'}, 0};

static int      (*old_system)(const char*);
static int      (*old_open)(const char *, int, ...);
static int      (*old_connect)(int , const struct sockaddr *, socklen_t );
static int      (*old_getaddrinfo)(const char *, const char *, const struct addrinfo *,struct addrinfo **);
static ssize_t  (*old_read)(int , void *, size_t );
static ssize_t  (*old_write)(int, const void *, size_t);

char* domain_name;
                       
int get_loggerfd() {
    char* fd_name = getenv("LOGGER_FD");
    if (fd_name == NULL) { perror("get_loggerfd/wrong_fd");}
    return strtol(fd_name, NULL, 10);
}

FILE* get_logger_file() {
    char* fd_name = getenv("LOGGER_FD");
    return fdopen(strtol(fd_name, NULL, 10), "w");
}

void write_logfile(int fd, pid_t pid, char* api, char* msg) {
    char filename[48];
    sprintf(filename, "%d-%d-%s.log", pid, fd, api);
    FILE* fp = fopen(filename, "a");
    if (fp == NULL) { perror("write_logfile/fopen"); exit(EXIT_FAILURE);}
    fwrite(msg, sizeof(char), strlen(msg), fp);
    return;
}
void add_blacklist(Blacklist* blacklist, const char* listname, char* lineptr) {
    // printf("add_\n");
    if (blacklist == NULL | listname == NULL | lineptr == NULL) {
        return;
    }
    // printf("%s&&\n", listname);
    // printf("%s**\n", blacklist->listname);
    if (strncmp(listname, blacklist->listname, strlen(listname)) != 0) {
        blacklist->listlen = 0;
        strcpy(blacklist->listname, listname);
    }
    // printf("%s:%ld\n", blacklist->listname, strlen(blacklist->listname));
    if (blacklist->listlen < LIST_LEN) {
        lineptr[strlen(lineptr) - 1] = '\0';
        // printf("%s*\n", lineptr);
        strcpy(blacklist->listdata[blacklist->listlen], lineptr);
        blacklist->listlen ++;
    }
    return;
}

void parse_blacklist() {
    // printf("--parse_blacklist--\n");
    char* conf_path = getenv("SANDBOX_CONFIG");
    FILE * fptr;
    fptr = fopen(conf_path , "r");
    if (fptr == NULL) { perror("parse_blacklist/fopen");}
    char line[64], cur_listname[64];
    char list_name[5][48] = {"open-blacklist", "read-blacklist", "connect-blacklist", "getaddrinfo-blacklist"};
   
    while (fgets(line, sizeof(line), fptr)) {
        char *line_ptr = line; int linecnt = 0;
        while (*line_ptr == ' ' || *line_ptr == '\t' || *line_ptr == '\r' || *line_ptr == '\n') {
            line_ptr++;
        }
        if (strncmp(line_ptr, "BEGIN", 5) == 0) {
            strcpy(cur_listname, line_ptr + 6);
            cur_listname[strlen(cur_listname) - 1] = '\0';
            continue;
        }
        else if (strncmp(line_ptr, "END", 3) == 0) {
            strcpy(cur_listname, "");
            continue;
        }
        else {
            if (strncmp(cur_listname, list_name[0], strlen(list_name[0])) == 0) {
                // printf("%s", cur_listname);
                add_blacklist(&open_blacklist, cur_listname, line_ptr);
            }
            else if (strncmp(cur_listname, list_name[1], strlen(list_name[1])) == 0) {
                add_blacklist(&read_blacklist, cur_listname, line_ptr);
            }
            else if (strncmp(cur_listname, list_name[2], strlen(list_name[2])) == 0){
                add_blacklist(&connect_blacklist, cur_listname, line_ptr);
            }
            else if (strncmp(cur_listname, list_name[3], strlen(list_name[3])) == 0) {
                add_blacklist(&getaddrinfo_blacklist, cur_listname, line_ptr);
            }
            linecnt++;
        }


    }
    fclose(fptr);
    return;
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

void check_blacklist(Blacklist* blacklist) {
    printf("check\n");
    printf("name:%s*\n", blacklist->listname);
    printf("len:%d*\n", blacklist->listlen);
    for (int i =0 ;i < blacklist->listlen; i++) {
        printf("data:%s*\n", blacklist->listdata[i]);
    }
    printf("endcheck\n");
    return;
}

bool is_file_permitted(const char* argv, Blacklist* blacklist, char* api_name) {
    // printf("[+] is_file_permitted\n");
    if (strncmp(api_name, blacklist->listname, strlen(api_name)) != 0) {
        printf("the api in not blacklist\n");
    }
    // printf("%s\n", api_name);

    bool conn_flag = false, open_flag = false;
    if (strcmp(api_name, "connect-blacklist") == 0) {
        conn_flag = true;
        // printf("gotcha\n");
    }  
    if (strcmp(api_name, "open-blacklist") == 0) {
        open_flag = true;
        // printf("gotcha\n");
    }  
    if (open_flag) {
        for (int i = 0; i < blacklist->listlen; i++) {

            char link_path[1024]; 
            ssize_t len;
            struct stat sb;
            int result = lstat(link_path, &sb);

            if( result != -1 ){
                len = readlink(blacklist->listdata[i], link_path, sizeof(link_path) - 1);
                if (len == -1) {
                    // perror("readlink");
                    exit(EXIT_FAILURE);
                }
                link_path[len] = '\0';
            } 
            else {
                strncpy(link_path, blacklist->listdata[i], sizeof(link_path) - 1);
                link_path[sizeof(link_path) - 1] = '\0';
            }

            if (strncmp(argv, link_path, strlen(argv)) == 0) {
                // printf("not allowed\n");
                return false;
            }
        }
        return true;
    }
    if (!conn_flag) {
        for (int i = 0; i < blacklist->listlen; i++) {
            if (strncmp(argv, blacklist->listdata[i], strlen(argv)) == 0) {
                // printf("not allowed\n");
                return false;
            }
        }
        return true;
    }
    else{
        char* checkstr = argv;
        char* new_hostname = strtok(checkstr, ":");
        char* port = strtok(NULL, ":");
        int new_port = atoi(port);

        for (int i = 0; i < blacklist->listlen; i++) {
           
            char *black = strdup(blacklist->listdata[i]);
            char *hostname = strtok(black, ":");
            char *temp = strtok(NULL, ":");
            int port = atoi(temp);
           
            if (strcmp(hostname, domain_name) == 0 && port == new_port) {
                // printf("same\n");
                return false;
            }
        }
    }

    // printf("[+] is_file_permitted\n");

    return true;
}

bool is_containing(void *buf, char *str) {

    // printf("buf: %s\n", buf);
    // printf("str: %s\n", str);

    char* buf_ptr = buf;
    while (true) {
        if (*buf_ptr == '\0' || *str == '\0') {
            break;
        }
        if ( *buf_ptr == *str ) {
            str++;
        }
        buf_ptr++;
    }
    if(*str == '\0') {
        return true;
    }
    return false;
}


int my_open(const char *pathname, int flags, ...) {
    // printf("[+] open\n");
    va_list vl; va_start(vl, flags);
    mode_t mode = (flags & O_CREAT)? va_arg(vl, mode_t): 0;



    char new_path[1024]; 
    ssize_t len;
    struct stat sb;
    int result = lstat(new_path, &sb);

    if( result != -1 ){
        if (readlink(pathname, new_path, sizeof(new_path) - 1) == -1) {
            perror("readlink");
            exit(EXIT_FAILURE);
        }
        new_path[len] = '\0';
    }
    else {
        // strcpy(new_path, pathname);
        // new_path[sizeof(new_path) - 1] = '\0';
        strncpy(new_path, pathname, sizeof(new_path) - 1);
        new_path[sizeof(new_path) - 1] = '\0';
    }
   
    void* handle = dlopen("libc.so.6", RTLD_NOW);
    old_open = dlsym(handle, "open");
    int value = old_open(new_path, flags, mode);

    int logger_fd = get_loggerfd();
    char filename[PATH_MAX];
    int file_ret = get_filename(filename, pathname, -1, NULL);


    char api_name[] = "open-blacklist";
    bool permission = is_file_permitted(new_path, &open_blacklist, api_name);
    if (!permission ) {
        if (dprintf(logger_fd, "[logger] open(\"%str\", %o, %o) = %d\n", new_path, flags, mode, -1) < 0) {
            perror("open dprintf error");
        }
        errno = EACCES;
        return -1;
    }
    else {
        if (dprintf(logger_fd, "[logger] open(\"%s\", %o, %o) = %d\n", new_path, flags, mode, value) < 0) {
            perror("open dprintf error");
        }
    }
    return value;
}
ssize_t my_read(int fd, void* buf, size_t count) {

    void* handle = dlopen("libc.so.6", RTLD_NOW);
    old_read = dlsym(handle, "read");
    ssize_t value = old_read(fd, buf, count);

    pid_t pid = getpid();
    int logger_fd = get_loggerfd();

    char filename[PATH_MAX]; get_filename(filename, NULL, fd, NULL);
    char    api_name[] = "read-blacklist",
            api[] = "read",
            msg[1024];


    if (value < 0) {
        perror("[logger] read");
        exit(EXIT_FAILURE);
    }
    // printf("black: %s\n", read_blacklist.listdata[0]);
    bool permission = !(is_containing(buf, read_blacklist.listdata[0]));

    if (permission) {   // not match content with blacklist
        // printf("haha\n");
        if (dprintf(logger_fd, "[logger] read(%d, %p, %ld) = %ld\n", fd, buf, count, value) < 0) {
            perror("read dprintf error");
        }
        sprintf(msg, "[logger] read(\"%d\", %p, %ld) = %ld\n", fd, buf, count, value);
        write_logfile(fd, pid, api, msg);
        write_logfile(fd, pid, api, buf);

    }
    else {  // match content with blacklist
        // printf("hoho\n");

        if (dprintf(logger_fd, "[logger] read(%d, %p, %ld) = %d\n", fd, buf, count, -1) < 0) {
            perror("read dprintf error");
        }
        errno = EIO;
        close(fd);
        return -1;
    }

    return value;
}
ssize_t my_write(int fd, const void *buf, size_t count) {

    void* handle = dlopen("libc.so.6", RTLD_NOW);
    old_write = dlsym(handle, "write");
    ssize_t value = old_write(fd, buf, count);

    pid_t pid = getpid();
    int logger_fd = get_loggerfd();

    if (dprintf(logger_fd, "[logger] write(%d, %p, %ld) = %ld\n", fd, buf, count, value) < 0) {
        perror("write dprintf error");
    }

    char    api[6] = "write",
            msg[256];
    sprintf(msg, "[logger] write(%d, %p, %ld) = %ld\n", fd, buf, count, value);
    write_logfile(fd, pid, api, msg);
    write_logfile(fd, pid, api, buf);


    return value;
}
int my_getaddrinfo(const char *node, const char *service, const struct addrinfo *hints, struct addrinfo **res) {


    void* handle = dlopen("libc.so.6", RTLD_NOW);
    old_getaddrinfo = dlsym(handle, "getaddrinfo");

    int value = old_getaddrinfo(node, service, hints, res);

    char api_name[] = "getaddrinfo-blacklist";
    int logger_fd = get_loggerfd();
    bool permission = is_file_permitted(node, &getaddrinfo_blacklist, api_name);
    if (!permission) {
        if (dprintf(logger_fd, "[logger] getaddrinfo(\"%s\", \"%s\", 0x%p, 0x%p) = %d\n", node, service, (void*)hints, (void*)res, -2) < 0) {
            perror("getaddrinfo dprintf error");
        }
        return EAI_NONAME;
    }
    else{
        if (dprintf(logger_fd, "[logger] getaddrinfo(\"%s\", \"%s\", 0x%p, 0x%p) = %d\n", node, service, (void*)hints, (void*)res, 0) < 0) {
            perror("getaddrinfo dprintf error");
        }
    }

    return value;
    // printf("[+] my_getaddrinfo\n");

}
int my_connect(int sockfd, const struct sockaddr *addr, socklen_t addrlen) {

    old_connect = dlsym(RTLD_NEXT, "connect");
    ssize_t value = old_connect(sockfd, addr, addrlen);

    pid_t pid = getpid();
    int logger_fd = get_loggerfd();

    struct sockaddr_in *s = (struct sockaddr_in *)addr;
    char ip_port[INET_ADDRSTRLEN + 6];
    sprintf(ip_port, "%s:%d", inet_ntoa(s->sin_addr), ntohs(s->sin_port));

    char api_name[] = "connect-blacklist";
    bool permission = (is_file_permitted(ip_port, &connect_blacklist, api_name));
    if (!permission) {
        if (dprintf(logger_fd, "[logger] connect(%d, \"%s\", %ld) = %d\n", sockfd, inet_ntoa(s->sin_addr), sizeof(struct sockaddr_in), -1) < 0) {
            perror("connect dprintf error");
        }
        errno = ECONNREFUSED;
        return -1;
    }
    else{
        if (dprintf(logger_fd, "[logger] connect(%d, \"%s\", %ld) = %ld\n", sockfd, inet_ntoa(s->sin_addr), sizeof(struct sockaddr_in), value) < 0) {
            perror("connect dprintf error");
        }
    }

    return value;
}

int my_system(const char *command){

    int logger_fd = get_loggerfd();
    if (dprintf(logger_fd, "[logger] system(\"%s\")\n", command)< 0) {
        perror("system dprintf error");
    }
    int value = system(command);

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
void get_base(char* keyword) {
    int fd, sz;
    char buf[16384], *s = buf, *line, *saveptr;
    char argv[100];
    sprintf(argv, "%s", keyword);

    if((fd = open("/proc/self/maps", O_RDONLY)) < 0) {
        perror("get_base/fd");
    }
    if((sz = read(fd, buf, sizeof(buf)-1)) < 0) {
        perror("get_base/sz");
    }        
    buf[sz] = 0;
    close(fd);
    while((line = strtok_r(s, "\n\r", &saveptr)) != NULL) { s = NULL;
        // if(strstr(line, " r--p") == NULL) continue;
        // printf("argv:%s\n", argv);
        // if(strstr(line, argv) != NULL) {
            if(sscanf(line, "%lx-%lx ", &base_min, &base_max) == 2) {
                // printf("%s\n", line);
                
                return;
            }
        // }
    }
    return;
}
unsigned long get_offset(char* cmd, char* api_func) {

    char*   tok;
    char*   env[]  = { NULL };
    char    buf[1024], command[256];
    int     pipefd[2];
    pid_t   pid;
    unsigned long offset;

    // printf("%s\n", cmd);
    if (strcmp(cmd, "./case3") == 0) {
        sprintf(command, "readelf %s -r | grep \"%s@GLIBC_2.2.5 + 0\" -w", cmd,  api_func);
    }
    else {
        sprintf(command, "readelf /usr/bin/%s -r | grep \"%s@GLIBC_2.2.5 + 0\" -w", cmd, api_func);
    }
    // printf("%s\n", command);


    pipe(pipefd);
    pid = fork();
    if (pid == 0) {
        close(pipefd[0]);
        dup2(pipefd[1], STDOUT_FILENO);
        int exe_ret = execle("/bin/sh", "/bin/sh", "-c", command, NULL, env);
        if (exe_ret < 0 ) {
            perror("get_offset/exe");
            exit(EXIT_FAILURE);
        }
        exit(0);
    }
    else if (pid > 0) {
        close(pipefd[1]);
        size_t bytes = read(pipefd[0], buf, BUF_SIZE);
        if (bytes == 0) {
            return 0;
        }
        tok = strtok(buf, " ");
        offset = strtol(tok, NULL, 16);
        wait(NULL);
    }
    return offset;
}

void reset_got_entry(long base, long offset, long* my_addr) {

    if (offset <= 0) return;
    long* old_page = (long*) ((base + offset) & ~(PAGE_SIZE - 1));
    long* old_func = (long*) (base + offset);

    if ((mprotect(old_page , PAGE_SIZE * 1, PROT_READ | PROT_WRITE | PROT_EXEC)) == -1) {
        perror("reset_got_entry/mprotect/set");
        exit(EXIT_FAILURE);
    }
    memcpy(old_func, &my_addr, sizeof(long));

    if ((mprotect(old_page , PAGE_SIZE * 1, PROT_READ | PROT_EXEC)) == -1) {
        perror("reset_got_entry/mprotect/reset");
        exit(EXIT_FAILURE);
    }
    return;
}
void parse_dn(int argc, char** argv) {
    if (argc >= 2) {
        domain_name = (char*) malloc(strlen(argv[1]) + 1);
        strcpy(domain_name, argv[1]);
        char* ptr = strstr(domain_name, "://");
        if (ptr != NULL) {
            ptr += 3;
        }
        else {
            ptr = domain_name;  
        }
        domain_name = strdup(ptr);
    }
}
void init_sandbox(int argc, char** argv) {

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
    unsigned long   offset_open = 0, offset_read = 0, offset_write = 0,
                    offset_connect = 0, offset_getaddrinfo = 0,  offset_system = 0;

    get_base(argv[0]);

    // modify GOT - open
    offset_open = get_offset(argv[0], api_open);
    reset_got_entry(base_min, offset_open, my_open_ptr);

    // modify GOT - read
    offset_read = get_offset(argv[0], api_read);
    reset_got_entry(base_min, offset_read, my_read_ptr);

    // modify GOT - write
    offset_write = get_offset(argv[0], api_write);
    reset_got_entry(base_min, offset_write, my_write_ptr);

    // modify GOT - getaddrinfo
    offset_getaddrinfo = get_offset(argv[0], api_getaddrinfo);
    reset_got_entry(base_min, offset_getaddrinfo, my_getaddrinfo_ptr);

    // modify GOT - connect
    offset_connect = get_offset(argv[0], api_connect);
    reset_got_entry(base_min, offset_connect, my_connect_ptr);
    parse_dn(argc, argv);
 
    // modify GOT - system
    offset_system = get_offset(argv[0], api_system);
    // printf("offset: %lx, base:%lx\n", offset_system, base_min);
    reset_got_entry(base_min, offset_system, my_system_ptr);

    parse_blacklist();

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

    // printf("-------------end---------------\n");
    return original__libc_start_main(main, argc, argv, init, fini,
                                     rtld_fini, stack_end);
}


