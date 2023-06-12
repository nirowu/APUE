// #include "sdb.h"
#include <elf.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/user.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sys/ptrace.h>
#include <capstone/capstone.h>

#define NAME_SIZE 256
#define BYTE_SIZE 256
#define ASM_SIZE 64
#define PEEK_SIZE 8
#define BUF_SIZE 4096
#define BREAK_NUMS 64

typedef struct {
    uint8_t     e_ident[16];    // Magic number and other information
    uint16_t    e_type;         // Object file type
    uint16_t    e_machine;      // Architecture
    uint32_t    e_version;      // Object file version
    uint64_t    e_entry;        // Entry point virtual address
    uint64_t    e_phoff;        // Program header table file offset
    uint64_t    e_shoff;        // Section header table file offset
    uint32_t    e_flags;        // Processor-specific flags
    uint16_t    e_ehsize;       // ELF header size in bytes
    uint16_t    e_phentsize;    // Program header table entry size
    uint16_t    e_phnum;        // Program header table entry count
    uint16_t    e_shentsize;    // Section header table entry size
    uint16_t    e_shnum;        // Section header table entry count
    uint16_t    e_shstrndx;     // Section header string table index
} Elf64Ehdr;

typedef struct {
    uint32_t    sh_name;        // Section name (index into the section header string table)
    uint32_t    sh_type;        // Section type
    uint64_t    sh_flags;       // Section flags
    uint64_t    sh_addr;        // Address in memory image
    uint64_t    sh_offset;      // Offset in file
    uint64_t    sh_size;        // Size in bytes
    uint32_t    sh_link;        // Index of a related section
    uint32_t    sh_info;        // Depends on section type
    uint64_t    sh_addralign;   // Alignment in bytes
    uint64_t    sh_entsize;     // Size of each entry in section
} Elf64Shdr;

typedef struct {
    bool                used;
    bool                hit;
    unsigned long long  address;
    unsigned char       origin[8];
    unsigned char       revised[8];
} bp_t;


typedef struct {
    unsigned char*      stack;
    unsigned char*      heap;
    unsigned char*      memory;
} anchor_t;

typedef struct sdb_info {
    pid_t           pid;
    char*           filename;
    csh             handle;
    Elf64Ehdr       elf_header;
    Elf64Shdr       section_header;
    uint64_t        text_addr;
    uint64_t        text_size;
    bp_t            breakpoint[BREAK_NUMS];
    anchor_t        anchor;
    struct          user_regs_struct regs;
} sdb_t;


sdb_t* sdb_create() {
    sdb_t* sdb = malloc(sizeof(sdb_t));

    sdb->pid = -1;
    sdb->filename = malloc(NAME_SIZE);
    sdb->text_addr = -1;
    sdb->text_size = -1;
    memset(&sdb->breakpoint, 0, sizeof(bp_t));
    memset(&sdb->elf_header, 0, sizeof(Elf64Ehdr)); 
    memset(&sdb->section_header, 0, sizeof(Elf64Shdr));

    cs_err err = cs_open(CS_ARCH_X86, CS_MODE_64, &(sdb->handle));
    if (err != CS_ERR_OK) {
        printf("[+] ERROR: sdb_create/cs_open \n");
    }
    return sdb;
}
void sdb_launch(sdb_t* sdb, char* filename) {

    snprintf(sdb->filename, NAME_SIZE, "%s", filename);
    FILE *fp = fopen(filename, "r");
    if (fp == NULL) {
        perror("fopen error"); exit(-1);
    }

    fread(&sdb->elf_header, 1, sizeof(sdb->elf_header), fp);
    fseek(fp, sdb->elf_header.e_shoff + sdb->elf_header.e_shstrndx * sizeof(sdb->section_header), SEEK_SET);
    fread(&sdb->section_header, 1, sizeof(sdb->section_header), fp);

    char section_name[sdb->section_header.sh_size]; 
    memset(section_name, 0, sizeof(section_name));

    fseek(fp, sdb->section_header.sh_offset, SEEK_SET);
    fread(section_name, 1, sdb->section_header.sh_size, fp);

    for (int i = 0; i < sdb->elf_header.e_shnum; i++) {
        fseek(fp, sdb->elf_header.e_shoff + i * sizeof(sdb->section_header), SEEK_SET);
        fread(&sdb->section_header, 1, sizeof(sdb->section_header), fp);

        if (strcmp(section_name + sdb->section_header.sh_name, ".text") == 0) {
            sdb->text_addr = sdb->section_header.sh_addr;
            sdb->text_size = sdb->section_header.sh_size; 
            break;
        }
    }
    printf("** program '%s' loaded. entry point 0x%lx\n", sdb->filename, sdb->elf_header.e_entry);
}

// unsigned long last_addr;
void sdb_disasm(sdb_t* sdb, unsigned long long rip) {

	char buf[64]; memset(buf, 0, sizeof(buf));
    char bytes[128]; memset(bytes, 0, sizeof(bytes));

	unsigned long long idx = rip;
    for (idx = rip; idx < rip + sizeof(buf); idx += sizeof(long)) {
		long peek_text = ptrace(PTRACE_PEEKTEXT, sdb->pid, idx, NULL);
		memcpy(&buf[idx-rip], &peek_text, sizeof(long));
	}
	
    int count;  cs_insn *insn;
    if ((count = cs_disasm(sdb->handle, (uint8_t*) buf, idx - rip, rip, 0, &insn)) > 0) {
        for (int i = 0; i < 5; i++) {

            if ((sdb->text_addr + sdb->text_size) < insn[i].address) {
                printf("** the address is out of the range of the text section.\n");
                break;
            }
            memset(bytes, 0, sizeof(bytes));
            for (int j = 0; j < insn[i].size; j++) {
                snprintf(&bytes[j * 3], 4, "%2.2x ", insn[i].bytes[j]);
            }
            printf("%*lx: %-32s\t%-10s%s\n", 12, insn[i].address, bytes, insn[i].mnemonic, insn[i].op_str);

            // last_addr = insn[i].address;
            // printf("last_addr:%lu\n", last_addr);
            // printf("last_addr:%lu\n", insn[i].address);
        }
		cs_free(insn, count);
	} 
    return;
}
void sdb_cont(sdb_t* sdb) {
    if (ptrace(PTRACE_CONT, sdb->pid, 0, 0) < 0) {
        perror("sdb_cont/ptrace\n");
    }
    return;
}
void sdb_si(sdb_t* sdb) {
    if (ptrace(PTRACE_SINGLESTEP, sdb->pid, 0, 0) < 0){
        perror("sdb_si/ptrace");
    }
    return;
}
void sdb_status (int status) {
    if (WIFEXITED(status)) {
        printf("** the target program terminated.\n");
    } 
    else {
        printf("** the target program terminated with error (code %d)\n", status);
    }
    return;
}
void sdb_break(sdb_t* sdb, char* command) {

    unsigned long long bp_addr = strtoll(command + 8, NULL, 16);

    for (int i = 0; i < BREAK_NUMS; i++) {
        if (sdb->breakpoint[i].used) continue;
        sdb->breakpoint[i].used = true;
        sdb->breakpoint[i].address = bp_addr;

        struct user_regs_struct break_regs;
        ptrace(PTRACE_GETREGS, sdb->pid, 0, &break_regs);
        
        long peek_text = ptrace(PTRACE_PEEKTEXT, sdb->pid, sdb->breakpoint[i].address, NULL);
        memcpy(&sdb->breakpoint[i].origin, &peek_text, PEEK_SIZE);
        memcpy(&sdb->breakpoint[i].revised, &peek_text, PEEK_SIZE);

        sdb->breakpoint[i].revised[0] = 0xcc;
        if (ptrace(PTRACE_POKETEXT, sdb->pid, sdb->breakpoint[i].address, *(unsigned long *)sdb->breakpoint[i].revised) != 0) {
            perror("poketext");
        }
        break;
        
    }

    printf("** set a breakpoint at %s\n", command + 6);

    return;
}


long stack_min, stack_max;
long heap_min, heap_max;
long mem_min, mem_max;

void sdb_anchor(sdb_t* sdb) {

	int fd, sz;
    long mini, maxi, peek_text;
	char buf[16384], *s = buf, *line, *saveptr;
    char maps_file[25];
    sprintf(maps_file, "/proc/%d/maps", sdb->pid);
	if((fd = open(maps_file, O_RDONLY)) < 0) perror("sdb_anchor/open");
	if((sz = read(fd, buf, sizeof(buf)-1)) < 0) perror("sdb_anchor/read");
	buf[sz] = 0;
	close(fd);

    bool flag = false;

	while((line = strtok_r(s, "\n\r", &saveptr)) != NULL) { s = NULL;
        if (strstr(line, " rwxp ") || strstr(line, " rw-p ")) {
            if(sscanf(line, "%lx-%lx ", &mini, &maxi) != 2) perror("sdb_anchor/sscanf");
            flag = true;
        }
        else {
            flag = false;
        }
        if (flag) {
            if (strstr(line, "stack") != NULL) {
                stack_min = mini; stack_max = maxi;
                sdb->anchor.stack = (unsigned char*) malloc((maxi - mini) * sizeof(unsigned char));
                for (unsigned long long idx = mini; idx < maxi; idx += sizeof(long)) {
                    peek_text = ptrace(PTRACE_PEEKTEXT, sdb->pid, idx, NULL);
                    memcpy(&sdb->anchor.stack[idx-mini], &peek_text, sizeof(long));
                }
            } 
            else if (strstr(line, "heap") != NULL) {
                heap_min = mini; heap_max = maxi;
                sdb->anchor.heap = (unsigned char*) malloc((maxi - mini) * sizeof(unsigned char));
                for (unsigned long long idx = mini; idx < maxi; idx += sizeof(long)) {
                    peek_text = ptrace(PTRACE_PEEKTEXT, sdb->pid, idx, NULL);
                    memcpy(&sdb->anchor.heap[idx-mini], &peek_text, sizeof(long));
                }
            } 
            else {
                mem_min = mini; mem_max = maxi;
                sdb->anchor.memory = (unsigned char*) malloc((maxi - mini) * sizeof(unsigned char));
                for (unsigned long long idx = mini; idx < maxi; idx += sizeof(long)) {
                    peek_text = ptrace(PTRACE_PEEKTEXT, sdb->pid, idx, NULL);
                    memcpy(&sdb->anchor.memory[idx-mini], &peek_text, sizeof(long));
                }
            }
        }

	}

    if (ptrace(PTRACE_GETREGS, sdb->pid, 0, &sdb->regs) != 0) perror("sdb_anchor/getregs");

    printf("** dropped an anchor\n");

	return;
}
void restore_Memory(sdb_t *sdb, unsigned long long min, unsigned long long max, unsigned char *buffer) {
    for (unsigned long long idx = min; idx < max; idx += sizeof(long)) {
        unsigned long value;
        memcpy(&value, buffer + (idx - min), sizeof(unsigned long));
        if (ptrace(PTRACE_POKETEXT, sdb->pid, idx, value) != 0) {
            perror("poketext");
        }
    }
    // free(sdb->anchor.stack);
    // free(sdb->anchor.heap);
    // free(sdb->anchor.memory);
    return;
}
void sdb_timetravel(sdb_t* sdb) {

    restore_Memory(sdb, stack_min, stack_max, sdb->anchor.stack);
    restore_Memory(sdb, heap_min, heap_max, sdb->anchor.heap);
    restore_Memory(sdb, mem_min, mem_max, sdb->anchor.memory);

    if (ptrace(PTRACE_SETREGS, sdb->pid, 0, &sdb->regs) != 0) {
        perror("sdb_timetravel/setregs");
    }

    for (int i = 0; i < BREAK_NUMS; i++) {
        if (!sdb->breakpoint[i].used) break; 
        if (sdb->breakpoint[i].address > sdb->regs.rip) {
            sdb->breakpoint[i].hit = 0;
        }
        else {
            continue;
        }
    }
    printf("** go back to the anchor point\n");

    return;
}

int main (int argc, char** argv) {
    if (argc < 2) {
        printf("[+] usage: ./sdb [program]\n");
        exit(-1);
    }
     
    char command[BUF_SIZE]; memset(command, 0, sizeof(command));
    sdb_t* sdb = sdb_create();  
    
    /* -------------------------------------------------------------------------- */    
    sdb->pid = fork();
    // printf("%d", sdb->pid);

    if (sdb->pid == 0) {
        ptrace(PTRACE_TRACEME, 0, NULL, NULL);
        execl(argv[1], argv[1], NULL);
    }
    else if (sdb->pid < 0) {
        printf("[+] ERROR: main/fork\n");
        exit(-1);
    }
    else {
        int status;
        waitpid(sdb->pid, &status, 0);
        ptrace(PTRACE_SETOPTIONS, sdb->pid, 0, PTRACE_O_EXITKILL);

        bool disasm_right = true;
        bool timetv_right = false;

        /* ------- print the name of the executable and the entry point addres ------ */
        sdb_launch(sdb, argv[1]);
        struct user_regs_struct regs;
        if (ptrace(PTRACE_GETREGS, sdb->pid, 0, &regs) < 0 ) {
            perror("main/ptrace_getregs");
        }
        /* -------------------------------------------------------------------------- */
        while (true) {
            if (!WIFSTOPPED(status)) break;
            /* ----------------------- check if hit the breakpoint ---------------------- */
            if (ptrace(PTRACE_GETREGS, sdb->pid, 0, &regs) < 0 ) {
                perror("main/ptrace_getregs");
            }
            // printf("regs:%llx\n", regs.rip);
            bool hit_flag = false;
            for (int i = 0; i < BREAK_NUMS; i++) {
                if (!sdb->breakpoint[i].used) break;
                if (sdb->breakpoint[i].address == regs.rip && !sdb->breakpoint[i].hit) {
                    if (ptrace(PTRACE_POKETEXT, sdb->pid , sdb->breakpoint[i].address, *(unsigned long *)sdb->breakpoint[i].origin) != 0){
                        perror("poketext");
                    }
                    sdb->breakpoint[i].hit = 1;
                    if (!timetv_right) {
                        printf("** hit a breakpoint 0x%llx\n", regs.rip);
                        hit_flag = true;
                    }
                    else{
                        timetv_right = false;
                    }
                    break;
                }
                if (!sdb->breakpoint[i].hit) {
                    if (ptrace(PTRACE_POKETEXT, sdb->pid, sdb->breakpoint[i].address, *(unsigned long *)sdb->breakpoint[i].origin) != 0){
                        perror("poke");
                    }
                }
            }

            if (disasm_right) sdb_disasm(sdb, regs.rip);
            
            for (int i = 0; i < BREAK_NUMS; i++) {
                if (!sdb->breakpoint[i].used) break;
                if (!sdb->breakpoint[i].hit) {
                    if (ptrace(PTRACE_POKETEXT, sdb->pid, sdb->breakpoint[i].address, *(unsigned long *)sdb->breakpoint[i].revised) != 0) {
                        perror("poke");
                    }
                }
            }

            /* ---------------------------- deal with command --------------------------- */
            printf("(sdb) ");
            memset(command, 0, sizeof(command));
            fgets(command, BUF_SIZE, stdin);
            command[strcspn(command, "\n")] = '\0';

            disasm_right = false; timetv_right = false;

            if (strncmp(command, "si", 2) == 0) {
                disasm_right = true;
                sdb_si(sdb);
                waitpid(sdb->pid, &status, 0);
                // if (WIFSTOPPED(status)) {
                //     if (ptrace(PTRACE_GETREGS, sdb->pid, 0, &regs) == 0) {
                //         regs.rip--;
                //         if (ptrace(PTRACE_SETREGS, sdb->pid, 0, &regs) != 0) {
                //             perror("main/cont/setregs");
                //         }
                //     } else {
                //         perror("main/cont/getregs");
                //     }
                // }
            }
            else if (strncmp(command, "cont", 4) == 0) {
                disasm_right = true;
                sdb_cont(sdb);
                waitpid(sdb->pid, &status, 0);
                if (WIFSTOPPED(status)) {
                    if (ptrace(PTRACE_GETREGS, sdb->pid, 0, &regs) == 0) {
                        regs.rip--;
                        if (ptrace(PTRACE_SETREGS, sdb->pid, 0, &regs) != 0) {
                            perror("main/cont/setregs");
                        }
                    } else {
                        perror("main/cont/getregs");
                    }
                }
                // printf("cont:%llx\n", regs.rip);

            }
            else if (strncmp(command, "break", 5) == 0) {
                sdb_break(sdb, command);
                timetv_right = true;
            }
            else if (strncmp(command, "anchor", 6) == 0) {
                sdb_anchor(sdb);
            }
            else if (strncmp(command, "timetravel", 10) == 0) {
                disasm_right = true;
                timetv_right = true;
                sdb_timetravel(sdb);
            }
            else{
                printf("- wrong command!\n");
            }
        }
    }
    printf("** the target program terminated.\n");

    return 0;
}