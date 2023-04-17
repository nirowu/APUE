#!/usr/bin/env python3
import os
import sys
import pow as pw
from pwn import *

context.arch = 'amd64'
# context.os = 'linux'

shellcode = """
    1149:	f3 0f 1e fa          	endbr64 
    114d:	55                   	push   rbp
    114e:	48 89 e5             	mov    rbp,rsp
    1151:	48 83 ec 10          	sub    rsp,0x10
    1155:	48 89 e8             	mov    rax,rbp
    1158:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    115c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1160:	48 83 c0 40          	add    rax,0x40
    1164:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    1167:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    116b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    116e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1172:	48 83 e8 40          	sub    rax,0x40
    1176:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1179:	48 89 c6             	mov    rsi,rax
    117c:	48 8d 05 85 0e 00 00 	lea    rax,[rip+0xe85]        # 2008 <_IO_stdin_used+0x8>
    1183:	48 89 c7             	mov    rdi,rax
    1186:	b8 00 00 00 00       	mov    eax,0x0
    118b:	e8 c0 fe ff ff       	call   1050 <printf@plt>
    1190:	90                   	nop
    1191:	c9                   	leave  
    1192:	c3                   	ret    
"""

shellcode_bytes = asm(shellcode)
print(shellcode_bytes)
# print(len(shellcode_bytes))