#include <stdio.h>


int foo();

/* 全局变量 */
int *got_entry = (int *)&foo;

int main() {
    printf("foo() address before: %p\n", foo);

    *got_entry = (int)&printf;

    printf("foo() address after: %p\n", foo);
    foo();  /* 现在将调用printf()而不是原来的foo() */
    return 0;
}

int foo() {
    printf("Hello world!\n");
    return 0;
}






    // void **got_ptr = (void **)code_498_ptr - 1;

    // printf("dlsym: %p\n", got_ptr);

    // uintptr_t Page_start = (uintptr_t) code_498_ptr & ~(uintptr_t) (getpagesize() - 1);
    // printf("%p\n", (void*)Page_start);

    // mprotect((void*)Page_start, getpagesize(), PROT_READ | PROT_WRITE | PROT_EXEC);

    // *(void**) code_498_ptr = code_44;
    // printf("%p\n", (void*)Page_start);

    // mprotect((void*)Page_start, getpagesize(), PROT_READ | PROT_EXEC);
    // printf("end\n");

    
                // printf("dlsym: %p\n", func_ptr);
                // printf("Index: %d, GOT: %lx, ADDR: %lx\n", idx, got, addr);        
                // printf("%lx\n", func_pos);


                                // printf("original: %p\n", func_got);
                // printf("target  : %p\n", func_ptr);
                // memcpy(func_got, func_ptr, sizeof(int));
                // func_got = (unsigned long)func_ptr;