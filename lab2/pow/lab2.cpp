#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <sys/stat.h>

void find_magic_num(char *path, char *str) {
    DIR* dir = opendir(path);
    struct dirent *dp;
    struct stat st;
    
    while ((dp = readdir(dir))) {
        char filepath[1000];
        sprintf(filepath, "%s/%s", path, dp->d_name);
        
        if (lstat(filepath, &st)) {
            perror("lstat()");
            continue;
        }
        if (S_ISDIR(st.st_mode)) {
            if (strcmp(dp->d_name, ".") == 0 || strcmp(dp->d_name, "..") == 0) {
                continue;
            }
            find_magic_num(filepath, str);
        } 
        else if (S_ISREG(st.st_mode)) {
            FILE *fp = fopen(filepath, "r");
            char buf[1000];
            
            if (!fp) continue;
            while(fgets(buf, sizeof(buf), fp)) {
                if (strstr(buf, str)) {
                    printf("%s\n", filepath);
                    exit(0);
                }
            }
            
            fclose(fp);
        }
    }
    closedir(dir);
    return;
}

int main(int argc, char** argv) {
    char path[1000];
    char str[100];

    strcpy(path, argv[1]);
    strcpy(str, argv[2]);
    
    find_magic_num(path, str);
    return 0;
}