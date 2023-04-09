#include <stdio.h>
#include <stdint.h>

typedef int (*printf_ptr_t)(const char *format, ...);

void* _memcpy(void* dst, void* src, int size) {
	char* dst_p = dst;
	const char* src_p = src;
	while (size--) {
		*dst_p++ = *src_p++;
	}
	return dst;
}
void solver(printf_ptr_t fptr) {

	char ptr[8] = {'\0'};
	// canary
	_memcpy(ptr, ptr+0x08, 8); 
	fptr("val: %016lx\t", *(uint64_t*)ptr);
	// rbp
	_memcpy(ptr, ptr+0x10, 8);
	fptr("val: %016lx\t", *(uint64_t*)ptr);
	// return address
	_memcpy(ptr, ptr+0x18, 8);
	fptr("val: %016lx\n", *(uint64_t*)ptr);

	fflush(stdout);
	return ;
}

int main() {
	char fmt[16] = "** main = %p\n";
	printf(fmt, main);
	solver(printf);
	return 0;
}