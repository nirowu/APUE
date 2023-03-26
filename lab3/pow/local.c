#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <libunwind.h>
#include "libpoem.h"
#include <dlfcn.h>
#include <errno.h>
#include <sys/mman.h>
#include "shuffle.h"

unsigned long base_min = 0, base_max = 0;
unsigned long protect_min = 0, protect_max = 0;

void get_chals_base () {
	int fd, sz, i = 0;
	char buf[16384], *s = buf, *line, *saveptr;
	// if(poem_max != 0) return;
	if((fd = open("/proc/self/maps", O_RDONLY)) < 0) {
        perror("get_base/open");
    }
    while((sz = read(fd, s, sizeof(buf)-1-(s-buf))) > 0) { s += sz; }
    *s = 0;
    s = buf;
	close(fd);
	while((line = strtok_r(s, "\n\r", &saveptr)) != NULL) { s = NULL;
        if(strstr(line, "/chals") != NULL) {
            printf("%s\n", line);
            if (i == 0) {
                sscanf(line, "%lx-%lx ", &base_min, &base_max);
                // break;
            }
            // if (i == 3) {
            //     sscanf(line, "%lx-%lx ", &protect_min, &protect_max);
            // }
            i ++;
		}
	}
    return;
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
        if(strstr(line, "/chals") != NULL) {
            printf("%s\n", line);
		}
	}
    return;
}
int init() {
    void *handle = dlopen("libpoem.so", RTLD_LAZY);
    if (!handle) {
        fprintf(stderr, "%s\n", dlerror());
        exit(EXIT_FAILURE);
    }
    get_chals_base();
    printf("main_min:%lx\n", base_min);

    unsigned long func_start = base_min + 0x17000;

    mprotect((void*)func_start, getpagesize() * 2, PROT_READ | PROT_WRITE | PROT_EXEC);
    printf("protect start: 0x%lx, size: %d\n", func_start, getpagesize() * 2);
    print_base();

    char filename[] = "offset.txt";
    int              idx;
    unsigned long    got, addr;
    for (int i = 0; i < sizeof(ndat) / 4; i++) {
        FILE *fp = fopen(filename, "r");
        if (fp == NULL) {
            perror("fp()");
        }
        // target function 
        char func_name[20];     
        sprintf(func_name, "code_%d", i); 
        long* tar_ptr = (long*) dlsym(handle, func_name);

        // find original function position
        while (fscanf(fp, "code_%d %lx %lx\n", &idx, &got, &addr) != EOF) {
            if (idx == ndat[i]) {   
                void * func_pos = (void*)(base_min + got);   
                memcpy(func_pos, &tar_ptr, 8);
                break;
            }
        }
        fclose(fp);
    }
    // mprotect((void*)func_start, getpagesize() * 2, PROT_READ | PROT_EXEC);
    puts("end of init()");
    dlclose(handle);
    return 0;
}