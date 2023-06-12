	%include "libasm.inc"
    global _start:function

    section .data
tmp dd  0x10000

    section .text
_start:
    mov eax, 9999 
    mov ebx, 9999
    mul ebx
    push rbp
    mov rbp, rsp
    mov rax, 0x1