import os
import sys
# import pow as pw
# from pwn import *
import ctypes

libc = ctypes.CDLL('libc.so.6')
LEN_CODE = (10*0x10000)

global codeint
codeint = (ctypes.c_uint32 * (LEN_CODE // 4))()

libc.srand()
for i in range(LEN_CODE // 4):
    codeint[i] = (libc.rand() << 16) | (libc.rand() & 0xffff)


codeint[libc.rand() % (LEN_CODE // 4 - 1)] = 0xc3050f
asm_mprotect = asm(f"""
    pop rax 10
    ret
    pop rdi {code_start}
    ret
    pop rsi {LEN_CODE}
    ret
    pop rdx {prot}
    ret
    syscall
    ret
""") 