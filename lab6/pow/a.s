quick_sort:
        cmp     esi, 1
        jle     .L31
        push    r13
        mov     r10, rdi
        push    r12
        push    rbp
        mov     ebp, esi
        push    rbx
        lea     edx, [rbp-1]
        sub     rsp, 24
        cmp     ebp, 120
        jg      .L3
.L9:
        mov     eax, ebp
        xor     ebx, ebx
        sar     eax
        cdqe
        mov     rsi, QWORD PTR [r10+rax*8]
.L13:
        movsx   rax, ebx
        sal     rax, 3
        lea     r9, [r10+rax]
        cmp     ebx, edx
        jg      .L14
.L37:
        movsx   r11, edx
        mov     rcx, QWORD PTR [r9]
        lea     rax, [r10+8+rax]
        lea     r8, [r10+r11*8]
        mov     rdi, QWORD PTR [r8]
        cmp     rcx, rsi
        jge     .L36
.L10:
        mov     r9, rax
        mov     rcx, QWORD PTR [rax]
        add     rax, 8
        add     ebx, 1
        cmp     rcx, rsi
        jl      .L10
        cmp     rsi, rdi
        jge     .L11
.L18:
        lea     rax, [r10-8+r11*8]
.L12:
        mov     r8, rax
        mov     rdi, QWORD PTR [rax]
        sub     rax, 8
        sub     edx, 1
        cmp     rdi, rsi
        jg      .L12
.L11:
        cmp     edx, ebx
        jl      .L13
        mov     QWORD PTR [r9], rdi
        add     ebx, 1
        sub     edx, 1
        mov     QWORD PTR [r8], rcx
.L40:
        movsx   rax, ebx
        sal     rax, 3
        lea     r9, [r10+rax]
        cmp     ebx, edx
        jle     .L37
.L14:
        lea     esi, [rdx+1]
        mov     rdi, r10
        sub     ebp, ebx
        mov     QWORD PTR [rsp+8], r9
        call    quick_sort
        cmp     ebp, 1
        jle     .L1
        mov     r10, QWORD PTR [rsp+8]
        lea     edx, [rbp-1]
        cmp     ebp, 120
        jle     .L9
.L3:
        xor     r11d, r11d
        mov     rbx, r10
        mov     r9d, r11d
        add     r11d, 1
        mov     r12, QWORD PTR [rbx]
        cmp     r11d, ebp
        jge     .L20
.L39:
        lea     r13, [rbx+8]
        mov     rdi, r12
        mov     ecx, r11d
        mov     rax, r13
        jmp     .L7
.L38:
        movsx   rsi, r9d
        add     ecx, 1
        add     rax, 8
        lea     r8, [r10+rsi*8]
        cmp     ebp, ecx
        je      .L5
.L7:
        mov     rsi, QWORD PTR [rax]
        mov     r8, rax
        cmp     rsi, rdi
        jge     .L38
        mov     r9d, ecx
        add     ecx, 1
        mov     rdi, rsi
        add     rax, 8
        cmp     ebp, ecx
        jne     .L7
.L5:
        mov     QWORD PTR [rbx], rdi
        mov     rbx, r13
        mov     QWORD PTR [r8], r12
        cmp     r11d, edx
        je      .L9
.L35:
        mov     r9d, r11d
        add     r11d, 1
        mov     r12, QWORD PTR [rbx]
        cmp     r11d, ebp
        jl      .L39
.L20:
        mov     r8, rbx
        mov     rdi, r12
        lea     r13, [rbx+8]
        mov     QWORD PTR [rbx], rdi
        mov     rbx, r13
        mov     QWORD PTR [r8], r12
        cmp     r11d, edx
        jne     .L35
        jmp     .L9
.L36:
        cmp     rsi, rdi
        jl      .L18
        mov     QWORD PTR [r9], rdi
        add     ebx, 1
        sub     edx, 1
        mov     QWORD PTR [r8], rcx
        jmp     .L40
.L1:
        add     rsp, 24
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret
.L31:
        ret