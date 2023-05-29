#include <stdio.h>
#include <sys/ptrace.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <dlfcn.h>
#include <sys/user.h>
#include <string.h>
#include <errno.h>

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("usage:./chal sample1\n");
        return -1;
    }
    struct user_regs_struct regs;
    char num[] = "0000000000";

    char *program = argv[1];
    printf("%s\n", program);

    pid_t pid = fork();
    if (pid == 0) {
        ptrace(PTRACE_TRACEME, 0, NULL, NULL);
        execl(program, program, NULL);
    } else if (pid > 0) {
        int status;
        long orig_data, new_data;

        long data;
        ptrace(PTRACE_SETOPTIONS, pid, NULL, PTRACE_O_EXITKILL);
        ptrace(PTRACE_ATTACH, pid, NULL, NULL);
        waitpid(pid, &status, 0);

        ptrace(PTRACE_CONT, pid, NULL, NULL);
        waitpid(pid, &status, 0);

        ptrace(PTRACE_CONT, pid, NULL, NULL);
        waitpid(pid, &status, 0);

        ptrace(PTRACE_CONT, pid, NULL, NULL);
        waitpid(pid, &status, 0);

        ptrace(PTRACE_GETREGS, pid, NULL, &regs);
        long magic_address = regs.rax; 
        printf("magic address: %lx\n", magic_address);

        ptrace(PTRACE_CONT, pid, NULL, NULL);
        waitpid(pid, &status, 0);
        ptrace(PTRACE_GETREGS, pid, NULL, &regs);
        
        struct user_regs_struct storage;
        storage = regs;

        for (int k = 0; k < 1024; k++) {  
            char buffer[sizeof(num)];
            memcpy(buffer, num, sizeof(num));

            for (size_t i = 0; i < sizeof(num); i++) {
                unsigned long value = ptrace(PTRACE_PEEKDATA, pid, magic_address + i, NULL);
                value &= 0xFFFFFFFFFFFFFC00;  
                value |= buffer[i] & 0x3FF;   
                ptrace(PTRACE_POKEDATA, pid, magic_address + i, value);
            }

            ptrace(PTRACE_CONT, pid, NULL, NULL);
            waitpid(pid, &status, 0);

            struct user_regs_struct tmp_regs;
            ptrace(PTRACE_GETREGS, pid, NULL, &tmp_regs);
            long int return_value = tmp_regs.rax; 

            if(return_value == 0 && k != 0){
                break;
            }
    
        regs = storage;
        ptrace(PTRACE_SETREGS, pid, NULL, &regs);

        for (int j = sizeof(num) - 2; j >= 0; j--) {
            if (num[j] == '0') {
                num[j] = '1';
                break;
            } else {
                num[j] = '0';
            }
        }

        ptrace(PTRACE_CONT, pid, NULL, NULL);
        waitpid(pid, &status, 0);

        }

        ptrace(PTRACE_DETACH, pid, NULL, NULL);
    } 
    else {
        perror("Fork failed\n");
        return -1;
    }
    return 0;
}
