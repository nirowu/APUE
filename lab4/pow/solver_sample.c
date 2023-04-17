#include <stdio.h>
#include <stdint.h>

typedef int (*printf_ptr_t)(const char *format, ...);


void solver(printf_ptr_t fptr) {

	char ptr[8] = {'\0'};
	fptr("val: %016lx\t", *(uint64_t*)(ptr+0x08)); // canary
	fptr("val: %016lx\t", *(uint64_t*)(ptr+0x10)); // rbp 
	fptr("val: %016lx\n", *(uint64_t*)(ptr+0x18)); // return address

	fflush(stdout);
	return ;
}

int main() {
	char fmt[16] = "** main = %p\n";
	printf(fmt, main);
	solver(printf);
	return 0;
}