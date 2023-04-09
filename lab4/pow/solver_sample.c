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
	// char msg[16] = "hello, world!";
	// fptr("%s\n", msg);

	// for (int i = 0; i < 0x100; i+=8) {
	// 	fptr("%02x: %016lx\n", i, *(unsigned long*)&msg[0]);
	// }

	char ptr[8] = {'\0'};
	_memcpy(ptr, ptr+0x08, 8);
	fptr("val: %016lx\t", *(uint64_t*)ptr);
	_memcpy(ptr, ptr+0x10, 8);
	fptr("val: %016lx\t", *(uint64_t*)ptr);
	_memcpy(ptr, ptr+0x18, 8);
	fptr("val: %016lx\n", *(uint64_t*)ptr);

	// fptr("%016lx\n", (ptr)+0x08); // canary
	// fptr("%016lx\n", (ptr)+0x10); // rbp
	// fptr("%lx\n", (ptr)+0x18); // ra

	// unsigned long long rbp, *rbp_p;
	// __asm__ volatile("movq %%rbp, %0; movq %0, %1" : "=r" (rbp), "=rm" (*rbp_p));
 

    // fptr("rbp_val:%016lx\n", *((ptr)+0x10));
    // fptr("rbp_add:%016lx\n", (ptr)+0x10);

	// fptr("ret_val:%016lx\n", *((ptr)+0x18));
	// fptr("ret_add:%016lx\n", (ptr)+0x18);

	// fptr("can_val:%016lx\n", *((ptr)+0x08));
	// fptr("can_add:%016lx\n", (ptr)+0x08);

	fflush(stdout);
	return ;
}

int main() {
	char fmt[16] = "** main = %p\n";
	printf(fmt, main);
	solver(printf);
	return 0;
}