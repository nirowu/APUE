#include <stdio.h>
#include <stdint.h>

typedef int (*printf_ptr_t)(const char *format, ...);

void solver(printf_ptr_t fptr) {
    uint64_t rbp, *rbp_p;
    __asm__ volatile("movq %%rbp, %0; movq %0, %1" : "=r" (rbp), "=rm" (rbp_p));
	fptr("val: %016lx\t", *((rbp_p-0x08))); // canary
	fptr("val: %016lx\t", *(rbp_p)); // rbp 
	fptr("val: %016lx\n", *(rbp_p+0x08)); // return address

}

int main() {
	// char fmt[16] = "** main = %p\n";
	// printf(fmt, main);
	solver(printf);
	return 0;
}