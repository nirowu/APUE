
solver:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000318 <.interp>:
 318:	2f                   	(bad)  
 319:	6c                   	ins    BYTE PTR es:[rdi],dx
 31a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
 321:	2d 6c 69 6e 75       	sub    eax,0x756e696c
 326:	78 2d                	js     355 <__abi_tag-0x37>
 328:	78 38                	js     362 <__abi_tag-0x2a>
 32a:	36 2d 36 34 2e 73    	ss sub eax,0x732e3436
 330:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 331:	2e 32 00             	cs xor al,BYTE PTR [rax]

Disassembly of section .note.gnu.property:

0000000000000338 <.note.gnu.property>:
 338:	04 00                	add    al,0x0
 33a:	00 00                	add    BYTE PTR [rax],al
 33c:	20 00                	and    BYTE PTR [rax],al
 33e:	00 00                	add    BYTE PTR [rax],al
 340:	05 00 00 00 47       	add    eax,0x47000000
 345:	4e 55                	rex.WRX push rbp
 347:	00 02                	add    BYTE PTR [rdx],al
 349:	00 00                	add    BYTE PTR [rax],al
 34b:	c0 04 00 00          	rol    BYTE PTR [rax+rax*1],0x0
 34f:	00 03                	add    BYTE PTR [rbx],al
 351:	00 00                	add    BYTE PTR [rax],al
 353:	00 00                	add    BYTE PTR [rax],al
 355:	00 00                	add    BYTE PTR [rax],al
 357:	00 02                	add    BYTE PTR [rdx],al
 359:	80 00 c0             	add    BYTE PTR [rax],0xc0
 35c:	04 00                	add    al,0x0
 35e:	00 00                	add    BYTE PTR [rax],al
 360:	01 00                	add    DWORD PTR [rax],eax
 362:	00 00                	add    BYTE PTR [rax],al
 364:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .note.gnu.build-id:

0000000000000368 <.note.gnu.build-id>:
 368:	04 00                	add    al,0x0
 36a:	00 00                	add    BYTE PTR [rax],al
 36c:	14 00                	adc    al,0x0
 36e:	00 00                	add    BYTE PTR [rax],al
 370:	03 00                	add    eax,DWORD PTR [rax]
 372:	00 00                	add    BYTE PTR [rax],al
 374:	47                   	rex.RXB
 375:	4e 55                	rex.WRX push rbp
 377:	00 b6 0d ba e7 7a    	add    BYTE PTR [rsi+0x7ae7ba0d],dh
 37d:	3a cf                	cmp    cl,bh
 37f:	10 f2                	adc    dl,dh
 381:	6a 2c                	push   0x2c
 383:	58                   	pop    rax
 384:	4e e2 90             	rex.WRX loop 317 <__abi_tag-0x75>
 387:	47 04 79             	rex.RXB add al,0x79
 38a:	f3 96                	repz xchg esi,eax

Disassembly of section .note.ABI-tag:

000000000000038c <__abi_tag>:
 38c:	04 00                	add    al,0x0
 38e:	00 00                	add    BYTE PTR [rax],al
 390:	10 00                	adc    BYTE PTR [rax],al
 392:	00 00                	add    BYTE PTR [rax],al
 394:	01 00                	add    DWORD PTR [rax],eax
 396:	00 00                	add    BYTE PTR [rax],al
 398:	47                   	rex.RXB
 399:	4e 55                	rex.WRX push rbp
 39b:	00 00                	add    BYTE PTR [rax],al
 39d:	00 00                	add    BYTE PTR [rax],al
 39f:	00 03                	add    BYTE PTR [rbx],al
 3a1:	00 00                	add    BYTE PTR [rax],al
 3a3:	00 02                	add    BYTE PTR [rdx],al
 3a5:	00 00                	add    BYTE PTR [rax],al
 3a7:	00 00                	add    BYTE PTR [rax],al
 3a9:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .gnu.hash:

00000000000003b0 <.gnu.hash>:
 3b0:	02 00                	add    al,BYTE PTR [rax]
 3b2:	00 00                	add    BYTE PTR [rax],al
 3b4:	06                   	(bad)  
 3b5:	00 00                	add    BYTE PTR [rax],al
 3b7:	00 01                	add    BYTE PTR [rcx],al
 3b9:	00 00                	add    BYTE PTR [rax],al
 3bb:	00 06                	add    BYTE PTR [rsi],al
 3bd:	00 00                	add    BYTE PTR [rax],al
 3bf:	00 00                	add    BYTE PTR [rax],al
 3c1:	00 81 00 00 00 00    	add    BYTE PTR [rcx+0x0],al
 3c7:	00 06                	add    BYTE PTR [rsi],al
 3c9:	00 00                	add    BYTE PTR [rax],al
 3cb:	00 00                	add    BYTE PTR [rax],al
 3cd:	00 00                	add    BYTE PTR [rax],al
 3cf:	00 d1                	add    cl,dl
 3d1:	65 ce                	gs (bad) 
 3d3:	6d                   	ins    DWORD PTR es:[rdi],dx

Disassembly of section .dynsym:

00000000000003d8 <.dynsym>:
	...
 3f0:	10 00                	adc    BYTE PTR [rax],al
 3f2:	00 00                	add    BYTE PTR [rax],al
 3f4:	12 00                	adc    al,BYTE PTR [rax]
	...
 406:	00 00                	add    BYTE PTR [rax],al
 408:	4a 00 00             	rex.WX add BYTE PTR [rax],al
 40b:	00 20                	add    BYTE PTR [rax],ah
	...
 41d:	00 00                	add    BYTE PTR [rax],al
 41f:	00 22                	add    BYTE PTR [rdx],ah
 421:	00 00                	add    BYTE PTR [rax],al
 423:	00 12                	add    BYTE PTR [rdx],dl
	...
 435:	00 00                	add    BYTE PTR [rax],al
 437:	00 66 00             	add    BYTE PTR [rsi+0x0],ah
 43a:	00 00                	add    BYTE PTR [rax],al
 43c:	20 00                	and    BYTE PTR [rax],al
	...
 44e:	00 00                	add    BYTE PTR [rax],al
 450:	75 00                	jne    452 <__abi_tag+0xc6>
 452:	00 00                	add    BYTE PTR [rax],al
 454:	20 00                	and    BYTE PTR [rax],al
	...
 466:	00 00                	add    BYTE PTR [rax],al
 468:	01 00                	add    DWORD PTR [rax],eax
 46a:	00 00                	add    BYTE PTR [rax],al
 46c:	22 00                	and    al,BYTE PTR [rax]
	...

Disassembly of section .dynstr:

0000000000000480 <.dynstr>:
 480:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 483:	63 78 61             	movsxd edi,DWORD PTR [rax+0x61]
 486:	5f                   	pop    rdi
 487:	66 69 6e 61 6c 69    	imul   bp,WORD PTR [rsi+0x61],0x696c
 48d:	7a 65                	jp     4f4 <__abi_tag+0x168>
 48f:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 492:	6c                   	ins    BYTE PTR es:[rdi],dx
 493:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
 49a:	72 74                	jb     510 <__abi_tag+0x184>
 49c:	5f                   	pop    rdi
 49d:	6d                   	ins    DWORD PTR es:[rdi],dx
 49e:	61                   	(bad)  
 49f:	69 6e 00 70 72 69 6e 	imul   ebp,DWORD PTR [rsi+0x0],0x6e697270
 4a6:	74 66                	je     50e <__abi_tag+0x182>
 4a8:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
 4ac:	63 2e                	movsxd ebp,DWORD PTR [rsi]
 4ae:	73 6f                	jae    51f <__abi_tag+0x193>
 4b0:	2e 36 00 47 4c       	cs ss add BYTE PTR [rdi+0x4c],al
 4b5:	49                   	rex.WB
 4b6:	42                   	rex.X
 4b7:	43 5f                	rex.XB pop r15
 4b9:	32 2e                	xor    ch,BYTE PTR [rsi]
 4bb:	32 2e                	xor    ch,BYTE PTR [rsi]
 4bd:	35 00 47 4c 49       	xor    eax,0x494c4700
 4c2:	42                   	rex.X
 4c3:	43 5f                	rex.XB pop r15
 4c5:	32 2e                	xor    ch,BYTE PTR [rsi]
 4c7:	33 34 00             	xor    esi,DWORD PTR [rax+rax*1]
 4ca:	5f                   	pop    rdi
 4cb:	49 54                	rex.WB push r12
 4cd:	4d 5f                	rex.WRB pop r15
 4cf:	64 65 72 65          	fs gs jb 538 <__abi_tag+0x1ac>
 4d3:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 4da:	4d 
 4db:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 4dd:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 4de:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 4df:	65 54                	gs push rsp
 4e1:	61                   	(bad)  
 4e2:	62                   	(bad)  
 4e3:	6c                   	ins    BYTE PTR es:[rdi],dx
 4e4:	65 00 5f 5f          	add    BYTE PTR gs:[rdi+0x5f],bl
 4e8:	67 6d                	ins    DWORD PTR es:[edi],dx
 4ea:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 4eb:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 4ec:	5f                   	pop    rdi
 4ed:	73 74                	jae    563 <__abi_tag+0x1d7>
 4ef:	61                   	(bad)  
 4f0:	72 74                	jb     566 <__abi_tag+0x1da>
 4f2:	5f                   	pop    rdi
 4f3:	5f                   	pop    rdi
 4f4:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 4f7:	54                   	push   rsp
 4f8:	4d 5f                	rex.WRB pop r15
 4fa:	72 65                	jb     561 <__abi_tag+0x1d5>
 4fc:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 503:	4d 
 504:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 506:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 507:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 508:	65 54                	gs push rsp
 50a:	61                   	(bad)  
 50b:	62                   	.byte 0x62
 50c:	6c                   	ins    BYTE PTR es:[rdi],dx
 50d:	65                   	gs
	...

Disassembly of section .gnu.version:

0000000000000510 <.gnu.version>:
 510:	00 00                	add    BYTE PTR [rax],al
 512:	02 00                	add    al,BYTE PTR [rax]
 514:	01 00                	add    DWORD PTR [rax],eax
 516:	03 00                	add    eax,DWORD PTR [rax]
 518:	01 00                	add    DWORD PTR [rax],eax
 51a:	01 00                	add    DWORD PTR [rax],eax
 51c:	03 00                	add    eax,DWORD PTR [rax]

Disassembly of section .gnu.version_r:

0000000000000520 <.gnu.version_r>:
 520:	01 00                	add    DWORD PTR [rax],eax
 522:	02 00                	add    al,BYTE PTR [rax]
 524:	29 00                	sub    DWORD PTR [rax],eax
 526:	00 00                	add    BYTE PTR [rax],al
 528:	10 00                	adc    BYTE PTR [rax],al
 52a:	00 00                	add    BYTE PTR [rax],al
 52c:	00 00                	add    BYTE PTR [rax],al
 52e:	00 00                	add    BYTE PTR [rax],al
 530:	75 1a                	jne    54c <__abi_tag+0x1c0>
 532:	69 09 00 00 03 00    	imul   ecx,DWORD PTR [rcx],0x30000
 538:	33 00                	xor    eax,DWORD PTR [rax]
 53a:	00 00                	add    BYTE PTR [rax],al
 53c:	10 00                	adc    BYTE PTR [rax],al
 53e:	00 00                	add    BYTE PTR [rax],al
 540:	b4 91                	mov    ah,0x91
 542:	96                   	xchg   esi,eax
 543:	06                   	(bad)  
 544:	00 00                	add    BYTE PTR [rax],al
 546:	02 00                	add    al,BYTE PTR [rax]
 548:	3f                   	(bad)  
 549:	00 00                	add    BYTE PTR [rax],al
 54b:	00 00                	add    BYTE PTR [rax],al
 54d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000000550 <.rela.dyn>:
 550:	b8 3d 00 00 00       	mov    eax,0x3d
 555:	00 00                	add    BYTE PTR [rax],al
 557:	00 08                	add    BYTE PTR [rax],cl
 559:	00 00                	add    BYTE PTR [rax],al
 55b:	00 00                	add    BYTE PTR [rax],al
 55d:	00 00                	add    BYTE PTR [rax],al
 55f:	00 40 11             	add    BYTE PTR [rax+0x11],al
 562:	00 00                	add    BYTE PTR [rax],al
 564:	00 00                	add    BYTE PTR [rax],al
 566:	00 00                	add    BYTE PTR [rax],al
 568:	c0 3d 00 00 00 00 00 	sar    BYTE PTR [rip+0x0],0x0        # 56f <__abi_tag+0x1e3>
 56f:	00 08                	add    BYTE PTR [rax],cl
	...
 579:	11 00                	adc    DWORD PTR [rax],eax
 57b:	00 00                	add    BYTE PTR [rax],al
 57d:	00 00                	add    BYTE PTR [rax],al
 57f:	00 08                	add    BYTE PTR [rax],cl
 581:	40 00 00             	rex add BYTE PTR [rax],al
 584:	00 00                	add    BYTE PTR [rax],al
 586:	00 00                	add    BYTE PTR [rax],al
 588:	08 00                	or     BYTE PTR [rax],al
 58a:	00 00                	add    BYTE PTR [rax],al
 58c:	00 00                	add    BYTE PTR [rax],al
 58e:	00 00                	add    BYTE PTR [rax],al
 590:	08 40 00             	or     BYTE PTR [rax+0x0],al
 593:	00 00                	add    BYTE PTR [rax],al
 595:	00 00                	add    BYTE PTR [rax],al
 597:	00 d8                	add    al,bl
 599:	3f                   	(bad)  
 59a:	00 00                	add    BYTE PTR [rax],al
 59c:	00 00                	add    BYTE PTR [rax],al
 59e:	00 00                	add    BYTE PTR [rax],al
 5a0:	06                   	(bad)  
 5a1:	00 00                	add    BYTE PTR [rax],al
 5a3:	00 01                	add    BYTE PTR [rcx],al
	...
 5ad:	00 00                	add    BYTE PTR [rax],al
 5af:	00 e0                	add    al,ah
 5b1:	3f                   	(bad)  
 5b2:	00 00                	add    BYTE PTR [rax],al
 5b4:	00 00                	add    BYTE PTR [rax],al
 5b6:	00 00                	add    BYTE PTR [rax],al
 5b8:	06                   	(bad)  
 5b9:	00 00                	add    BYTE PTR [rax],al
 5bb:	00 02                	add    BYTE PTR [rdx],al
	...
 5c5:	00 00                	add    BYTE PTR [rax],al
 5c7:	00 e8                	add    al,ch
 5c9:	3f                   	(bad)  
 5ca:	00 00                	add    BYTE PTR [rax],al
 5cc:	00 00                	add    BYTE PTR [rax],al
 5ce:	00 00                	add    BYTE PTR [rax],al
 5d0:	06                   	(bad)  
 5d1:	00 00                	add    BYTE PTR [rax],al
 5d3:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
 5de:	00 00                	add    BYTE PTR [rax],al
 5e0:	f0 3f                	lock (bad) 
 5e2:	00 00                	add    BYTE PTR [rax],al
 5e4:	00 00                	add    BYTE PTR [rax],al
 5e6:	00 00                	add    BYTE PTR [rax],al
 5e8:	06                   	(bad)  
 5e9:	00 00                	add    BYTE PTR [rax],al
 5eb:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 5f1 <__abi_tag+0x265>
 5f1:	00 00                	add    BYTE PTR [rax],al
 5f3:	00 00                	add    BYTE PTR [rax],al
 5f5:	00 00                	add    BYTE PTR [rax],al
 5f7:	00 f8                	add    al,bh
 5f9:	3f                   	(bad)  
 5fa:	00 00                	add    BYTE PTR [rax],al
 5fc:	00 00                	add    BYTE PTR [rax],al
 5fe:	00 00                	add    BYTE PTR [rax],al
 600:	06                   	(bad)  
 601:	00 00                	add    BYTE PTR [rax],al
 603:	00 06                	add    BYTE PTR [rsi],al
	...

Disassembly of section .rela.plt:

0000000000000610 <.rela.plt>:
 610:	d0 3f                	sar    BYTE PTR [rdi],1
 612:	00 00                	add    BYTE PTR [rax],al
 614:	00 00                	add    BYTE PTR [rax],al
 616:	00 00                	add    BYTE PTR [rax],al
 618:	07                   	(bad)  
 619:	00 00                	add    BYTE PTR [rax],al
 61b:	00 03                	add    BYTE PTR [rbx],al
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 9a 2f 00 00    	push   QWORD PTR [rip+0x2f9a]        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 9b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f9b]        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	f2 ff 25 ad 2f 00 00 	bnd jmp QWORD PTR [rip+0x2fad]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    104b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

0000000000001050 <printf@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 75 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f75]        # 3fd0 <printf@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 ed                	xor    ebp,ebp
    1066:	49 89 d1             	mov    r9,rdx
    1069:	5e                   	pop    rsi
    106a:	48 89 e2             	mov    rdx,rsp
    106d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1071:	50                   	push   rax
    1072:	54                   	push   rsp
    1073:	45 31 c0             	xor    r8d,r8d
    1076:	31 c9                	xor    ecx,ecx
    1078:	48 8d 3d 14 01 00 00 	lea    rdi,[rip+0x114]        # 1193 <main>
    107f:	ff 15 53 2f 00 00    	call   QWORD PTR [rip+0x2f53]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1085:	f4                   	hlt    
    1086:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    108d:	00 00 00 

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 79 2f 00 00 	lea    rdi,[rip+0x2f79]        # 4010 <__TMC_END__>
    1097:	48 8d 05 72 2f 00 00 	lea    rax,[rip+0x2f72]        # 4010 <__TMC_END__>
    109e:	48 39 f8             	cmp    rax,rdi
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 36 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f36]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10aa:	48 85 c0             	test   rax,rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    rax
    10b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 49 2f 00 00 	lea    rdi,[rip+0x2f49]        # 4010 <__TMC_END__>
    10c7:	48 8d 35 42 2f 00 00 	lea    rsi,[rip+0x2f42]        # 4010 <__TMC_END__>
    10ce:	48 29 fe             	sub    rsi,rdi
    10d1:	48 89 f0             	mov    rax,rsi
    10d4:	48 c1 ee 3f          	shr    rsi,0x3f
    10d8:	48 c1 f8 03          	sar    rax,0x3
    10dc:	48 01 c6             	add    rsi,rax
    10df:	48 d1 fe             	sar    rsi,1
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 05 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f05]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    10eb:	48 85 c0             	test   rax,rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    rax
    10f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	80 3d 05 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f05],0x0        # 4010 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   rbp
    110e:	48 83 3d e2 2e 00 00 	cmp    QWORD PTR [rip+0x2ee2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    rbp,rsp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d e6 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ee6]        # 4008 <__dso_handle>
    1122:	e8 19 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	call   1090 <deregister_tm_clones>
    112c:	c6 05 dd 2e 00 00 01 	mov    BYTE PTR [rip+0x2edd],0x1        # 4010 <__TMC_END__>
    1133:	5d                   	pop    rbp
    1134:	c3                   	ret    
    1135:	0f 1f 00             	nop    DWORD PTR [rax]
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 77 ff ff ff       	jmp    10c0 <register_tm_clones>

0000000000001149 <solver>:
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

0000000000001193 <main>:
    1193:	f3 0f 1e fa          	endbr64 
    1197:	55                   	push   rbp
    1198:	48 89 e5             	mov    rbp,rsp
    119b:	b8 00 00 00 00       	mov    eax,0x0
    11a0:	e8 a4 ff ff ff       	call   1149 <solver>
    11a5:	b8 00 00 00 00       	mov    eax,0x0
    11aa:	5d                   	pop    rbp
    11ab:	c3                   	ret    

Disassembly of section .fini:

00000000000011ac <_fini>:
    11ac:	f3 0f 1e fa          	endbr64 
    11b0:	48 83 ec 08          	sub    rsp,0x8
    11b4:	48 83 c4 08          	add    rsp,0x8
    11b8:	c3                   	ret    

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    DWORD PTR [rax],eax
    2002:	02 00                	add    al,BYTE PTR [rax]
    2004:	00 00                	add    BYTE PTR [rax],al
    2006:	00 00                	add    BYTE PTR [rax],al
    2008:	63 61 6e             	movsxd esp,DWORD PTR [rcx+0x6e]
    200b:	61                   	(bad)  
    200c:	72 79                	jb     2087 <__GNU_EH_FRAME_HDR+0x4f>
    200e:	3a 20                	cmp    ah,BYTE PTR [rax]
    2010:	25 30 31 36 6c       	and    eax,0x6c363130
    2015:	78 0a                	js     2021 <_IO_stdin_used+0x21>
    2017:	72 62                	jb     207b <__GNU_EH_FRAME_HDR+0x43>
    2019:	70 3a                	jo     2055 <__GNU_EH_FRAME_HDR+0x1d>
    201b:	20 25 30 31 36 6c    	and    BYTE PTR [rip+0x6c363130],ah        # 6c365151 <_end+0x6c361139>
    2021:	78 0a                	js     202d <_IO_stdin_used+0x2d>
    2023:	72 65                	jb     208a <__GNU_EH_FRAME_HDR+0x52>
    2025:	74 5f                	je     2086 <__GNU_EH_FRAME_HDR+0x4e>
    2027:	61                   	(bad)  
    2028:	64 64 72 3a          	fs fs jb 2066 <__GNU_EH_FRAME_HDR+0x2e>
    202c:	20 25 30 31 36 6c    	and    BYTE PTR [rip+0x6c363130],ah        # 6c365162 <_end+0x6c36114a>
    2032:	78 0a                	js     203e <__GNU_EH_FRAME_HDR+0x6>
	...

Disassembly of section .eh_frame_hdr:

0000000000002038 <__GNU_EH_FRAME_HDR>:
    2038:	01 1b                	add    DWORD PTR [rbx],ebx
    203a:	03 3b                	add    edi,DWORD PTR [rbx]
    203c:	3c 00                	cmp    al,0x0
    203e:	00 00                	add    BYTE PTR [rax],al
    2040:	06                   	(bad)  
    2041:	00 00                	add    BYTE PTR [rax],al
    2043:	00 e8                	add    al,ch
    2045:	ef                   	out    dx,eax
    2046:	ff                   	(bad)  
    2047:	ff 70 00             	push   QWORD PTR [rax+0x0]
    204a:	00 00                	add    BYTE PTR [rax],al
    204c:	08 f0                	or     al,dh
    204e:	ff                   	(bad)  
    204f:	ff 98 00 00 00 18    	call   FWORD PTR [rax+0x18000000]
    2055:	f0 ff                	lock (bad) 
    2057:	ff b0 00 00 00 28    	push   QWORD PTR [rax+0x28000000]
    205d:	f0 ff                	lock (bad) 
    205f:	ff 58 00             	call   FWORD PTR [rax+0x0]
    2062:	00 00                	add    BYTE PTR [rax],al
    2064:	11 f1                	adc    ecx,esi
    2066:	ff                   	(bad)  
    2067:	ff c8                	dec    eax
    2069:	00 00                	add    BYTE PTR [rax],al
    206b:	00 5b f1             	add    BYTE PTR [rbx-0xf],bl
    206e:	ff                   	(bad)  
    206f:	ff                   	(bad)  
    2070:	e8                   	.byte 0xe8
    2071:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .eh_frame:

0000000000002078 <__FRAME_END__-0xc8>:
    2078:	14 00                	adc    al,0x0
    207a:	00 00                	add    BYTE PTR [rax],al
    207c:	00 00                	add    BYTE PTR [rax],al
    207e:	00 00                	add    BYTE PTR [rax],al
    2080:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
    2083:	00 01                	add    BYTE PTR [rcx],al
    2085:	78 10                	js     2097 <__GNU_EH_FRAME_HDR+0x5f>
    2087:	01 1b                	add    DWORD PTR [rbx],ebx
    2089:	0c 07                	or     al,0x7
    208b:	08 90 01 00 00 14    	or     BYTE PTR [rax+0x14000001],dl
    2091:	00 00                	add    BYTE PTR [rax],al
    2093:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    2096:	00 00                	add    BYTE PTR [rax],al
    2098:	c8 ef ff ff          	enter  0xffef,0xff
    209c:	26 00 00             	es add BYTE PTR [rax],al
    209f:	00 00                	add    BYTE PTR [rax],al
    20a1:	44 07                	rex.R (bad) 
    20a3:	10 00                	adc    BYTE PTR [rax],al
    20a5:	00 00                	add    BYTE PTR [rax],al
    20a7:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
    20aa:	00 00                	add    BYTE PTR [rax],al
    20ac:	34 00                	xor    al,0x0
    20ae:	00 00                	add    BYTE PTR [rax],al
    20b0:	70 ef                	jo     20a1 <__GNU_EH_FRAME_HDR+0x69>
    20b2:	ff                   	(bad)  
    20b3:	ff 20                	jmp    QWORD PTR [rax]
    20b5:	00 00                	add    BYTE PTR [rax],al
    20b7:	00 00                	add    BYTE PTR [rax],al
    20b9:	0e                   	(bad)  
    20ba:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
    20bd:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
    20c0:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
    20c3:	80 00 3f             	add    BYTE PTR [rax],0x3f
    20c6:	1a 3a                	sbb    bh,BYTE PTR [rdx]
    20c8:	2a 33                	sub    dh,BYTE PTR [rbx]
    20ca:	24 22                	and    al,0x22
    20cc:	00 00                	add    BYTE PTR [rax],al
    20ce:	00 00                	add    BYTE PTR [rax],al
    20d0:	14 00                	adc    al,0x0
    20d2:	00 00                	add    BYTE PTR [rax],al
    20d4:	5c                   	pop    rsp
    20d5:	00 00                	add    BYTE PTR [rax],al
    20d7:	00 68 ef             	add    BYTE PTR [rax-0x11],ch
    20da:	ff                   	(bad)  
    20db:	ff 10                	call   QWORD PTR [rax]
	...
    20e5:	00 00                	add    BYTE PTR [rax],al
    20e7:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
    20ea:	00 00                	add    BYTE PTR [rax],al
    20ec:	74 00                	je     20ee <__GNU_EH_FRAME_HDR+0xb6>
    20ee:	00 00                	add    BYTE PTR [rax],al
    20f0:	60                   	(bad)  
    20f1:	ef                   	out    dx,eax
    20f2:	ff                   	(bad)  
    20f3:	ff 10                	call   QWORD PTR [rax]
	...
    20fd:	00 00                	add    BYTE PTR [rax],al
    20ff:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    2102:	00 00                	add    BYTE PTR [rax],al
    2104:	8c 00                	mov    WORD PTR [rax],es
    2106:	00 00                	add    BYTE PTR [rax],al
    2108:	41                   	rex.B
    2109:	f0 ff                	lock (bad) 
    210b:	ff 4a 00             	dec    DWORD PTR [rdx+0x0]
    210e:	00 00                	add    BYTE PTR [rax],al
    2110:	00 45 0e             	add    BYTE PTR [rbp+0xe],al
    2113:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    2119:	02 41 0c             	add    al,BYTE PTR [rcx+0xc]
    211c:	07                   	(bad)  
    211d:	08 00                	or     BYTE PTR [rax],al
    211f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    2122:	00 00                	add    BYTE PTR [rax],al
    2124:	ac                   	lods   al,BYTE PTR ds:[rsi]
    2125:	00 00                	add    BYTE PTR [rax],al
    2127:	00 6b f0             	add    BYTE PTR [rbx-0x10],ch
    212a:	ff                   	(bad)  
    212b:	ff 19                	call   FWORD PTR [rcx]
    212d:	00 00                	add    BYTE PTR [rax],al
    212f:	00 00                	add    BYTE PTR [rax],al
    2131:	45 0e                	rex.RB (bad) 
    2133:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    2139:	50                   	push   rax
    213a:	0c 07                	or     al,0x7
    213c:	08 00                	or     BYTE PTR [rax],al
	...

0000000000002140 <__FRAME_END__>:
    2140:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000003db8 <__frame_dummy_init_array_entry>:
    3db8:	40 11 00             	rex adc DWORD PTR [rax],eax
    3dbb:	00 00                	add    BYTE PTR [rax],al
    3dbd:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000003dc0 <__do_global_dtors_aux_fini_array_entry>:
    3dc0:	00 11                	add    BYTE PTR [rcx],dl
    3dc2:	00 00                	add    BYTE PTR [rax],al
    3dc4:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000003dc8 <_DYNAMIC>:
    3dc8:	01 00                	add    DWORD PTR [rax],eax
    3dca:	00 00                	add    BYTE PTR [rax],al
    3dcc:	00 00                	add    BYTE PTR [rax],al
    3dce:	00 00                	add    BYTE PTR [rax],al
    3dd0:	29 00                	sub    DWORD PTR [rax],eax
    3dd2:	00 00                	add    BYTE PTR [rax],al
    3dd4:	00 00                	add    BYTE PTR [rax],al
    3dd6:	00 00                	add    BYTE PTR [rax],al
    3dd8:	0c 00                	or     al,0x0
    3dda:	00 00                	add    BYTE PTR [rax],al
    3ddc:	00 00                	add    BYTE PTR [rax],al
    3dde:	00 00                	add    BYTE PTR [rax],al
    3de0:	00 10                	add    BYTE PTR [rax],dl
    3de2:	00 00                	add    BYTE PTR [rax],al
    3de4:	00 00                	add    BYTE PTR [rax],al
    3de6:	00 00                	add    BYTE PTR [rax],al
    3de8:	0d 00 00 00 00       	or     eax,0x0
    3ded:	00 00                	add    BYTE PTR [rax],al
    3def:	00 ac 11 00 00 00 00 	add    BYTE PTR [rcx+rdx*1+0x0],ch
    3df6:	00 00                	add    BYTE PTR [rax],al
    3df8:	19 00                	sbb    DWORD PTR [rax],eax
    3dfa:	00 00                	add    BYTE PTR [rax],al
    3dfc:	00 00                	add    BYTE PTR [rax],al
    3dfe:	00 00                	add    BYTE PTR [rax],al
    3e00:	b8 3d 00 00 00       	mov    eax,0x3d
    3e05:	00 00                	add    BYTE PTR [rax],al
    3e07:	00 1b                	add    BYTE PTR [rbx],bl
    3e09:	00 00                	add    BYTE PTR [rax],al
    3e0b:	00 00                	add    BYTE PTR [rax],al
    3e0d:	00 00                	add    BYTE PTR [rax],al
    3e0f:	00 08                	add    BYTE PTR [rax],cl
    3e11:	00 00                	add    BYTE PTR [rax],al
    3e13:	00 00                	add    BYTE PTR [rax],al
    3e15:	00 00                	add    BYTE PTR [rax],al
    3e17:	00 1a                	add    BYTE PTR [rdx],bl
    3e19:	00 00                	add    BYTE PTR [rax],al
    3e1b:	00 00                	add    BYTE PTR [rax],al
    3e1d:	00 00                	add    BYTE PTR [rax],al
    3e1f:	00 c0                	add    al,al
    3e21:	3d 00 00 00 00       	cmp    eax,0x0
    3e26:	00 00                	add    BYTE PTR [rax],al
    3e28:	1c 00                	sbb    al,0x0
    3e2a:	00 00                	add    BYTE PTR [rax],al
    3e2c:	00 00                	add    BYTE PTR [rax],al
    3e2e:	00 00                	add    BYTE PTR [rax],al
    3e30:	08 00                	or     BYTE PTR [rax],al
    3e32:	00 00                	add    BYTE PTR [rax],al
    3e34:	00 00                	add    BYTE PTR [rax],al
    3e36:	00 00                	add    BYTE PTR [rax],al
    3e38:	f5                   	cmc    
    3e39:	fe                   	(bad)  
    3e3a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3e3d:	00 00                	add    BYTE PTR [rax],al
    3e3f:	00 b0 03 00 00 00    	add    BYTE PTR [rax+0x3],dh
    3e45:	00 00                	add    BYTE PTR [rax],al
    3e47:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 3e4d <_DYNAMIC+0x85>
    3e4d:	00 00                	add    BYTE PTR [rax],al
    3e4f:	00 80 04 00 00 00    	add    BYTE PTR [rax+0x4],al
    3e55:	00 00                	add    BYTE PTR [rax],al
    3e57:	00 06                	add    BYTE PTR [rsi],al
    3e59:	00 00                	add    BYTE PTR [rax],al
    3e5b:	00 00                	add    BYTE PTR [rax],al
    3e5d:	00 00                	add    BYTE PTR [rax],al
    3e5f:	00 d8                	add    al,bl
    3e61:	03 00                	add    eax,DWORD PTR [rax]
    3e63:	00 00                	add    BYTE PTR [rax],al
    3e65:	00 00                	add    BYTE PTR [rax],al
    3e67:	00 0a                	add    BYTE PTR [rdx],cl
    3e69:	00 00                	add    BYTE PTR [rax],al
    3e6b:	00 00                	add    BYTE PTR [rax],al
    3e6d:	00 00                	add    BYTE PTR [rax],al
    3e6f:	00 8f 00 00 00 00    	add    BYTE PTR [rdi+0x0],cl
    3e75:	00 00                	add    BYTE PTR [rax],al
    3e77:	00 0b                	add    BYTE PTR [rbx],cl
    3e79:	00 00                	add    BYTE PTR [rax],al
    3e7b:	00 00                	add    BYTE PTR [rax],al
    3e7d:	00 00                	add    BYTE PTR [rax],al
    3e7f:	00 18                	add    BYTE PTR [rax],bl
    3e81:	00 00                	add    BYTE PTR [rax],al
    3e83:	00 00                	add    BYTE PTR [rax],al
    3e85:	00 00                	add    BYTE PTR [rax],al
    3e87:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 3e8d <_DYNAMIC+0xc5>
	...
    3e95:	00 00                	add    BYTE PTR [rax],al
    3e97:	00 03                	add    BYTE PTR [rbx],al
    3e99:	00 00                	add    BYTE PTR [rax],al
    3e9b:	00 00                	add    BYTE PTR [rax],al
    3e9d:	00 00                	add    BYTE PTR [rax],al
    3e9f:	00 b8 3f 00 00 00    	add    BYTE PTR [rax+0x3f],bh
    3ea5:	00 00                	add    BYTE PTR [rax],al
    3ea7:	00 02                	add    BYTE PTR [rdx],al
    3ea9:	00 00                	add    BYTE PTR [rax],al
    3eab:	00 00                	add    BYTE PTR [rax],al
    3ead:	00 00                	add    BYTE PTR [rax],al
    3eaf:	00 18                	add    BYTE PTR [rax],bl
    3eb1:	00 00                	add    BYTE PTR [rax],al
    3eb3:	00 00                	add    BYTE PTR [rax],al
    3eb5:	00 00                	add    BYTE PTR [rax],al
    3eb7:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
    3eba:	00 00                	add    BYTE PTR [rax],al
    3ebc:	00 00                	add    BYTE PTR [rax],al
    3ebe:	00 00                	add    BYTE PTR [rax],al
    3ec0:	07                   	(bad)  
    3ec1:	00 00                	add    BYTE PTR [rax],al
    3ec3:	00 00                	add    BYTE PTR [rax],al
    3ec5:	00 00                	add    BYTE PTR [rax],al
    3ec7:	00 17                	add    BYTE PTR [rdi],dl
    3ec9:	00 00                	add    BYTE PTR [rax],al
    3ecb:	00 00                	add    BYTE PTR [rax],al
    3ecd:	00 00                	add    BYTE PTR [rax],al
    3ecf:	00 10                	add    BYTE PTR [rax],dl
    3ed1:	06                   	(bad)  
    3ed2:	00 00                	add    BYTE PTR [rax],al
    3ed4:	00 00                	add    BYTE PTR [rax],al
    3ed6:	00 00                	add    BYTE PTR [rax],al
    3ed8:	07                   	(bad)  
    3ed9:	00 00                	add    BYTE PTR [rax],al
    3edb:	00 00                	add    BYTE PTR [rax],al
    3edd:	00 00                	add    BYTE PTR [rax],al
    3edf:	00 50 05             	add    BYTE PTR [rax+0x5],dl
    3ee2:	00 00                	add    BYTE PTR [rax],al
    3ee4:	00 00                	add    BYTE PTR [rax],al
    3ee6:	00 00                	add    BYTE PTR [rax],al
    3ee8:	08 00                	or     BYTE PTR [rax],al
    3eea:	00 00                	add    BYTE PTR [rax],al
    3eec:	00 00                	add    BYTE PTR [rax],al
    3eee:	00 00                	add    BYTE PTR [rax],al
    3ef0:	c0 00 00             	rol    BYTE PTR [rax],0x0
    3ef3:	00 00                	add    BYTE PTR [rax],al
    3ef5:	00 00                	add    BYTE PTR [rax],al
    3ef7:	00 09                	add    BYTE PTR [rcx],cl
    3ef9:	00 00                	add    BYTE PTR [rax],al
    3efb:	00 00                	add    BYTE PTR [rax],al
    3efd:	00 00                	add    BYTE PTR [rax],al
    3eff:	00 18                	add    BYTE PTR [rax],bl
    3f01:	00 00                	add    BYTE PTR [rax],al
    3f03:	00 00                	add    BYTE PTR [rax],al
    3f05:	00 00                	add    BYTE PTR [rax],al
    3f07:	00 1e                	add    BYTE PTR [rsi],bl
    3f09:	00 00                	add    BYTE PTR [rax],al
    3f0b:	00 00                	add    BYTE PTR [rax],al
    3f0d:	00 00                	add    BYTE PTR [rax],al
    3f0f:	00 08                	add    BYTE PTR [rax],cl
    3f11:	00 00                	add    BYTE PTR [rax],al
    3f13:	00 00                	add    BYTE PTR [rax],al
    3f15:	00 00                	add    BYTE PTR [rax],al
    3f17:	00 fb                	add    bl,bh
    3f19:	ff                   	(bad)  
    3f1a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f1d:	00 00                	add    BYTE PTR [rax],al
    3f1f:	00 01                	add    BYTE PTR [rcx],al
    3f21:	00 00                	add    BYTE PTR [rax],al
    3f23:	08 00                	or     BYTE PTR [rax],al
    3f25:	00 00                	add    BYTE PTR [rax],al
    3f27:	00 fe                	add    dh,bh
    3f29:	ff                   	(bad)  
    3f2a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f2d:	00 00                	add    BYTE PTR [rax],al
    3f2f:	00 20                	add    BYTE PTR [rax],ah
    3f31:	05 00 00 00 00       	add    eax,0x0
    3f36:	00 00                	add    BYTE PTR [rax],al
    3f38:	ff                   	(bad)  
    3f39:	ff                   	(bad)  
    3f3a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f3d:	00 00                	add    BYTE PTR [rax],al
    3f3f:	00 01                	add    BYTE PTR [rcx],al
    3f41:	00 00                	add    BYTE PTR [rax],al
    3f43:	00 00                	add    BYTE PTR [rax],al
    3f45:	00 00                	add    BYTE PTR [rax],al
    3f47:	00 f0                	add    al,dh
    3f49:	ff                   	(bad)  
    3f4a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f4d:	00 00                	add    BYTE PTR [rax],al
    3f4f:	00 10                	add    BYTE PTR [rax],dl
    3f51:	05 00 00 00 00       	add    eax,0x0
    3f56:	00 00                	add    BYTE PTR [rax],al
    3f58:	f9                   	stc    
    3f59:	ff                   	(bad)  
    3f5a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f5d:	00 00                	add    BYTE PTR [rax],al
    3f5f:	00 03                	add    BYTE PTR [rbx],al
	...

Disassembly of section .got:

0000000000003fb8 <_GLOBAL_OFFSET_TABLE_>:
    3fb8:	c8 3d 00 00          	enter  0x3d,0x0
	...
    3fd0:	30 10                	xor    BYTE PTR [rax],dl
	...

Disassembly of section .data:

0000000000004000 <__data_start>:
	...

0000000000004008 <__dso_handle>:
    4008:	08 40 00             	or     BYTE PTR [rax+0x0],al
    400b:	00 00                	add    BYTE PTR [rax],al
    400d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .bss:

0000000000004010 <completed.0>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <__abi_tag-0x314>
   a:	74 75                	je     81 <__abi_tag-0x30b>
   c:	20 31                	and    BYTE PTR [rcx],dh
   e:	31 2e                	xor    DWORD PTR [rsi],ebp
  10:	33 2e                	xor    ebp,DWORD PTR [rsi]
  12:	30 2d 31 75 62 75    	xor    BYTE PTR [rip+0x75627531],ch        # 75627549 <_end+0x75623531>
  18:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  19:	74 75                	je     90 <__abi_tag-0x2fc>
  1b:	31 7e 32             	xor    DWORD PTR [rsi+0x32],edi
  1e:	32 2e                	xor    ch,BYTE PTR [rsi]
  20:	30 34 29             	xor    BYTE PTR [rcx+rbp*1],dh
  23:	20 31                	and    BYTE PTR [rcx],dh
  25:	31 2e                	xor    DWORD PTR [rsi],ebp
  27:	33 2e                	xor    ebp,DWORD PTR [rsi]
  29:	30 00                	xor    BYTE PTR [rax],al

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    al,0x0
   2:	00 00                	add    BYTE PTR [rax],al
   4:	02 00                	add    al,BYTE PTR [rax]
   6:	00 00                	add    BYTE PTR [rax],al
   8:	00 00                	add    BYTE PTR [rax],al
   a:	08 00                	or     BYTE PTR [rax],al
   c:	00 00                	add    BYTE PTR [rax],al
   e:	00 00                	add    BYTE PTR [rax],al
  10:	49 11 00             	adc    QWORD PTR [r8],rax
  13:	00 00                	add    BYTE PTR [rax],al
  15:	00 00                	add    BYTE PTR [rax],al
  17:	00 63 00             	add    BYTE PTR [rbx+0x0],ah
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	03 01                	add    eax,DWORD PTR [rcx]
   2:	00 00                	add    BYTE PTR [rax],al
   4:	05 00 01 08 00       	add    eax,0x80100
   9:	00 00                	add    BYTE PTR [rax],al
   b:	00 04 13             	add    BYTE PTR [rbx+rdx*1],al
   e:	00 00                	add    BYTE PTR [rax],al
  10:	00 1d 00 00 00 00    	add    BYTE PTR [rip+0x0],bl        # 16 <__abi_tag-0x376>
  16:	09 00                	or     DWORD PTR [rax],eax
  18:	00 00                	add    BYTE PTR [rax],al
  1a:	49 11 00             	adc    QWORD PTR [r8],rax
  1d:	00 00                	add    BYTE PTR [rax],al
  1f:	00 00                	add    BYTE PTR [rax],al
  21:	00 63 00             	add    BYTE PTR [rbx+0x0],ah
	...
  2c:	00 00                	add    BYTE PTR [rax],al
  2e:	01 08                	add    DWORD PTR [rax],ecx
  30:	07                   	(bad)  
  31:	a6                   	cmps   BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
  32:	00 00                	add    BYTE PTR [rax],al
  34:	00 01                	add    BYTE PTR [rcx],al
  36:	04 07                	add    al,0x7
  38:	ab                   	stos   DWORD PTR es:[rdi],eax
  39:	00 00                	add    BYTE PTR [rax],al
  3b:	00 01                	add    BYTE PTR [rcx],al
  3d:	01 08                	add    DWORD PTR [rax],ecx
  3f:	b8 00 00 00 01       	mov    eax,0x1000000
  44:	02 07                	add    al,BYTE PTR [rdi]
  46:	cd 00                	int    0x0
  48:	00 00                	add    BYTE PTR [rax],al
  4a:	01 01                	add    DWORD PTR [rcx],eax
  4c:	06                   	(bad)  
  4d:	ba 00 00 00 01       	mov    edx,0x1000000
  52:	02 05 ef 00 00 00    	add    al,BYTE PTR [rip+0xef]        # 147 <__abi_tag-0x245>
  58:	05 04 05 69 6e       	add    eax,0x6e690504
  5d:	74 00                	je     5f <__abi_tag-0x32d>
  5f:	01 08                	add    DWORD PTR [rax],ecx
  61:	05 05 00 00 00       	add    eax,0x5
  66:	02 f9                	add    bh,cl
  68:	00 00                	add    BYTE PTR [rax],al
  6a:	00 02                	add    BYTE PTR [rdx],al
  6c:	2d 1b 2e 00 00       	sub    eax,0x2e1b
  71:	00 01                	add    BYTE PTR [rcx],al
  73:	01 06                	add    DWORD PTR [rsi],eax
  75:	c1 00 00             	rol    DWORD PTR [rax],0x0
  78:	00 06                	add    BYTE PTR [rsi],al
  7a:	72 00                	jb     7c <__abi_tag-0x310>
  7c:	00 00                	add    BYTE PTR [rax],al
  7e:	01 08                	add    DWORD PTR [rax],ecx
  80:	05 00 00 00 00       	add    eax,0x0
  85:	01 08                	add    DWORD PTR [rax],ecx
  87:	07                   	(bad)  
  88:	a1 00 00 00 02 fb 00 	movabs eax,ds:0xfb02000000
  8f:	00 00 
  91:	03 1b                	add    ebx,DWORD PTR [rbx]
  93:	14 66                	adc    al,0x66
  95:	00 00                	add    BYTE PTR [rax],al
  97:	00 07                	add    BYTE PTR [rdi],al
  99:	e0 00                	loopne 9b <__abi_tag-0x2f1>
  9b:	00 00                	add    BYTE PTR [rax],al
  9d:	04 64                	add    al,0x64
  9f:	01 0c 58             	add    DWORD PTR [rax+rbx*2],ecx
  a2:	00 00                	add    BYTE PTR [rax],al
  a4:	00 b0 00 00 00 08    	add    BYTE PTR [rax+0x8000000],dh
  aa:	b0 00                	mov    al,0x0
  ac:	00 00                	add    BYTE PTR [rax],al
  ae:	09 00                	or     DWORD PTR [rax],eax
  b0:	03 79 00             	add    edi,DWORD PTR [rcx+0x0]
  b3:	00 00                	add    BYTE PTR [rax],al
  b5:	0a 0e                	or     cl,BYTE PTR [rsi]
  b7:	00 00                	add    BYTE PTR [rax],al
  b9:	00 01                	add    BYTE PTR [rcx],al
  bb:	0e                   	(bad)  
  bc:	05 58 00 00 00       	add    eax,0x58
  c1:	93                   	xchg   ebx,eax
  c2:	11 00                	adc    DWORD PTR [rax],eax
  c4:	00 00                	add    BYTE PTR [rax],al
  c6:	00 00                	add    BYTE PTR [rax],al
  c8:	00 19                	add    BYTE PTR [rcx],bl
  ca:	00 00                	add    BYTE PTR [rax],al
  cc:	00 00                	add    BYTE PTR [rax],al
  ce:	00 00                	add    BYTE PTR [rax],al
  d0:	00 01                	add    BYTE PTR [rcx],al
  d2:	9c                   	pushf  
  d3:	0b c6                	or     eax,esi
  d5:	00 00                	add    BYTE PTR [rax],al
  d7:	00 01                	add    BYTE PTR [rcx],al
  d9:	06                   	(bad)  
  da:	06                   	(bad)  
  db:	49 11 00             	adc    QWORD PTR [r8],rax
  de:	00 00                	add    BYTE PTR [rax],al
  e0:	00 00                	add    BYTE PTR [rax],al
  e2:	00 4a 00             	add    BYTE PTR [rdx+0x0],cl
  e5:	00 00                	add    BYTE PTR [rax],al
  e7:	00 00                	add    BYTE PTR [rax],al
  e9:	00 00                	add    BYTE PTR [rax],al
  eb:	01 9c 01 01 00 00 0c 	add    DWORD PTR [rcx+rax*1+0xc000001],ebx
  f2:	e7 00                	out    0x0,eax
  f4:	00 00                	add    BYTE PTR [rax],al
  f6:	01 07                	add    DWORD PTR [rdi],eax
  f8:	0f 01 01             	sgdt   [rcx]
  fb:	00 00                	add    BYTE PTR [rax],al
  fd:	02 91 68 00 03 8c    	add    dl,BYTE PTR [rcx-0x73fcff98]
 103:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 24 00             	add    DWORD PTR [rax+rax*1],esp
   3:	0b 0b                	or     ecx,DWORD PTR [rbx]
   5:	3e 0b 03             	ds or  eax,DWORD PTR [rbx]
   8:	0e                   	(bad)  
   9:	00 00                	add    BYTE PTR [rax],al
   b:	02 16                	add    dl,BYTE PTR [rsi]
   d:	00 03                	add    BYTE PTR [rbx],al
   f:	0e                   	(bad)  
  10:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  12:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  14:	39 0b                	cmp    DWORD PTR [rbx],ecx
  16:	49 13 00             	adc    rax,QWORD PTR [r8]
  19:	00 03                	add    BYTE PTR [rbx],al
  1b:	0f 00 0b             	str    WORD PTR [rbx]
  1e:	21 08                	and    DWORD PTR [rax],ecx
  20:	49 13 00             	adc    rax,QWORD PTR [r8]
  23:	00 04 11             	add    BYTE PTR [rcx+rdx*1],al
  26:	01 25 0e 13 0b 03    	add    DWORD PTR [rip+0x30b130e],esp        # 30b133a <_end+0x30ad322>
  2c:	1f                   	(bad)  
  2d:	1b 1f                	sbb    ebx,DWORD PTR [rdi]
  2f:	11 01                	adc    DWORD PTR [rcx],eax
  31:	12 07                	adc    al,BYTE PTR [rdi]
  33:	10 17                	adc    BYTE PTR [rdi],dl
  35:	00 00                	add    BYTE PTR [rax],al
  37:	05 24 00 0b 0b       	add    eax,0xb0b0024
  3c:	3e 0b 03             	ds or  eax,DWORD PTR [rbx]
  3f:	08 00                	or     BYTE PTR [rax],al
  41:	00 06                	add    BYTE PTR [rsi],al
  43:	26 00 49 13          	es add BYTE PTR [rcx+0x13],cl
  47:	00 00                	add    BYTE PTR [rax],al
  49:	07                   	(bad)  
  4a:	2e 01 3f             	cs add DWORD PTR [rdi],edi
  4d:	19 03                	sbb    DWORD PTR [rbx],eax
  4f:	0e                   	(bad)  
  50:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  52:	3b 05 39 0b 27 19    	cmp    eax,DWORD PTR [rip+0x19270b39]        # 19270b91 <_end+0x1926cb79>
  58:	49 13 3c 19          	adc    rdi,QWORD PTR [r9+rbx*1]
  5c:	01 13                	add    DWORD PTR [rbx],edx
  5e:	00 00                	add    BYTE PTR [rax],al
  60:	08 05 00 49 13 00    	or     BYTE PTR [rip+0x134900],al        # 134966 <_end+0x13094e>
  66:	00 09                	add    BYTE PTR [rcx],cl
  68:	18 00                	sbb    BYTE PTR [rax],al
  6a:	00 00                	add    BYTE PTR [rax],al
  6c:	0a 2e                	or     ch,BYTE PTR [rsi]
  6e:	00 3f                	add    BYTE PTR [rdi],bh
  70:	19 03                	sbb    DWORD PTR [rbx],eax
  72:	0e                   	(bad)  
  73:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  75:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  77:	39 0b                	cmp    DWORD PTR [rbx],ecx
  79:	49 13 11             	adc    rdx,QWORD PTR [r9]
  7c:	01 12                	add    DWORD PTR [rdx],edx
  7e:	07                   	(bad)  
  7f:	40 18 7c 19 00       	sbb    BYTE PTR [rcx+rbx*1+0x0],dil
  84:	00 0b                	add    BYTE PTR [rbx],cl
  86:	2e 01 3f             	cs add DWORD PTR [rdi],edi
  89:	19 03                	sbb    DWORD PTR [rbx],eax
  8b:	0e                   	(bad)  
  8c:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  8e:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  90:	39 0b                	cmp    DWORD PTR [rbx],ecx
  92:	11 01                	adc    DWORD PTR [rcx],eax
  94:	12 07                	adc    al,BYTE PTR [rdi]
  96:	40 18 7c 19 01       	sbb    BYTE PTR [rcx+rbx*1+0x1],dil
  9b:	13 00                	adc    eax,DWORD PTR [rax]
  9d:	00 0c 34             	add    BYTE PTR [rsp+rsi*1],cl
  a0:	00 03                	add    BYTE PTR [rbx],al
  a2:	0e                   	(bad)  
  a3:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  a5:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  a7:	39 0b                	cmp    DWORD PTR [rbx],ecx
  a9:	49 13 02             	adc    rax,QWORD PTR [r10]
  ac:	18 00                	sbb    BYTE PTR [rax],al
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	7b 00                	jnp    2 <__abi_tag-0x38a>
   2:	00 00                	add    BYTE PTR [rax],al
   4:	05 00 08 00 41       	add    eax,0x41000800
   9:	00 00                	add    BYTE PTR [rax],al
   b:	00 01                	add    BYTE PTR [rcx],al
   d:	01 01                	add    DWORD PTR [rcx],eax
   f:	fb                   	sti    
  10:	0e                   	(bad)  
  11:	0d 00 01 01 01       	or     eax,0x1010100
  16:	01 00                	add    DWORD PTR [rax],eax
  18:	00 00                	add    BYTE PTR [rax],al
  1a:	01 00                	add    DWORD PTR [rax],eax
  1c:	00 01                	add    BYTE PTR [rcx],al
  1e:	01 01                	add    DWORD PTR [rcx],eax
  20:	1f                   	(bad)  
  21:	03 09                	add    ecx,DWORD PTR [rcx]
  23:	00 00                	add    BYTE PTR [rax],al
  25:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  28:	00 00                	add    BYTE PTR [rax],al
  2a:	47 00 00             	rex.RXB add BYTE PTR [r8],r8b
  2d:	00 02                	add    BYTE PTR [rdx],al
  2f:	01 1f                	add    DWORD PTR [rdi],ebx
  31:	02 0f                	add    cl,BYTE PTR [rdi]
  33:	05 00 00 00 00       	add    eax,0x0
  38:	00 00                	add    BYTE PTR [rax],al
  3a:	00 00                	add    BYTE PTR [rax],al
  3c:	00 00                	add    BYTE PTR [rax],al
  3e:	54                   	push   rsp
  3f:	00 00                	add    BYTE PTR [rax],al
  41:	00 01                	add    BYTE PTR [rcx],al
  43:	5c                   	pop    rsp
  44:	00 00                	add    BYTE PTR [rax],al
  46:	00 01                	add    BYTE PTR [rcx],al
  48:	6b 00 00             	imul   eax,DWORD PTR [rax],0x0
  4b:	00 02                	add    BYTE PTR [rdx],al
  4d:	05 0f 00 09 02       	add    eax,0x209000f
  52:	49 11 00             	adc    QWORD PTR [r8],rax
  55:	00 00                	add    BYTE PTR [rax],al
  57:	00 00                	add    BYTE PTR [rax],al
  59:	00 17                	add    BYTE PTR [rdi],dl
  5b:	05 05 bc 05 62       	add    eax,0x6205bc05
  60:	76 05                	jbe    67 <__abi_tag-0x325>
  62:	05 82 05 48 9e       	add    eax,0x9e480582
  67:	05 05 82 05 01       	add    eax,0x1058205
  6c:	08 92 05 0c 3e 05    	or     BYTE PTR [rdx+0x53e0c05],dl
  72:	05 83 05 0c 9f       	add    eax,0x9f0c0583
  77:	05 01 59 02 02       	add    eax,0x2025901
  7c:	00 01                	add    BYTE PTR [rcx],al
  7e:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6c                   	ins    BYTE PTR es:[rdi],dx
   1:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   2:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   3:	67 20 6c 6f 6e       	and    BYTE PTR [edi+ebp*2+0x6e],ch
   8:	67 20 69 6e          	and    BYTE PTR [ecx+0x6e],ch
   c:	74 00                	je     e <__abi_tag-0x37e>
   e:	6d                   	ins    DWORD PTR es:[rdi],dx
   f:	61                   	(bad)  
  10:	69 6e 00 47 4e 55 20 	imul   ebp,DWORD PTR [rsi+0x0],0x20554e47
  17:	43 31 37             	rex.XB xor DWORD PTR [r15],esi
  1a:	20 31                	and    BYTE PTR [rcx],dh
  1c:	31 2e                	xor    DWORD PTR [rsi],ebp
  1e:	33 2e                	xor    ebp,DWORD PTR [rsi]
  20:	30 20                	xor    BYTE PTR [rax],ah
  22:	2d 6d 74 75 6e       	sub    eax,0x6e75746d
  27:	65 3d 67 65 6e 65    	gs cmp eax,0x656e6567
  2d:	72 69                	jb     98 <__abi_tag-0x2f4>
  2f:	63 20                	movsxd esp,DWORD PTR [rax]
  31:	2d 6d 61 72 63       	sub    eax,0x6372616d
  36:	68 3d 78 38 36       	push   0x3638783d
  3b:	2d 36 34 20 2d       	sub    eax,0x2d203436
  40:	67 20 2d 66 61 73 79 	and    BYTE PTR [eip+0x79736166],ch        # 797361ad <_end+0x79732195>
  47:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  48:	63 68 72             	movsxd ebp,DWORD PTR [rax+0x72]
  4b:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4c:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4e:	75 73                	jne    c3 <__abi_tag-0x2c9>
  50:	2d 75 6e 77 69       	sub    eax,0x69776e75
  55:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  56:	64 2d 74 61 62 6c    	fs sub eax,0x6c626174
  5c:	65 73 20             	gs jae 7f <__abi_tag-0x30d>
  5f:	2d 66 73 74 61       	sub    eax,0x61747366
  64:	63 6b 2d             	movsxd ebp,DWORD PTR [rbx+0x2d]
  67:	70 72                	jo     db <__abi_tag-0x2b1>
  69:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  6a:	74 65                	je     d1 <__abi_tag-0x2bb>
  6c:	63 74 6f 72          	movsxd esi,DWORD PTR [rdi+rbp*2+0x72]
  70:	2d 73 74 72 6f       	sub    eax,0x6f727473
  75:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  76:	67 20 2d 66 73 74 61 	and    BYTE PTR [eip+0x61747366],ch        # 617473e3 <_end+0x617433cb>
  7d:	63 6b 2d             	movsxd ebp,DWORD PTR [rbx+0x2d]
  80:	63 6c 61 73          	movsxd ebp,DWORD PTR [rcx+riz*2+0x73]
  84:	68 2d 70 72 6f       	push   0x6f72702d
  89:	74 65                	je     f0 <__abi_tag-0x29c>
  8b:	63 74 69 6f          	movsxd esi,DWORD PTR [rcx+rbp*2+0x6f]
  8f:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  90:	20 2d 66 63 66 2d    	and    BYTE PTR [rip+0x2d666366],ch        # 2d6663fc <_end+0x2d6623e4>
  96:	70 72                	jo     10a <__abi_tag-0x282>
  98:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  99:	74 65                	je     100 <__abi_tag-0x28c>
  9b:	63 74 69 6f          	movsxd esi,DWORD PTR [rcx+rbp*2+0x6f]
  9f:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  a0:	00 6c 6f 6e          	add    BYTE PTR [rdi+rbp*2+0x6e],ch
  a4:	67 20 6c 6f 6e       	and    BYTE PTR [edi+ebp*2+0x6e],ch
  a9:	67 20 75 6e          	and    BYTE PTR [ebp+0x6e],dh
  ad:	73 69                	jae    118 <__abi_tag-0x274>
  af:	67 6e                	outs   dx,BYTE PTR ds:[esi]
  b1:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
  b6:	74 00                	je     b8 <__abi_tag-0x2d4>
  b8:	75 6e                	jne    128 <__abi_tag-0x264>
  ba:	73 69                	jae    125 <__abi_tag-0x267>
  bc:	67 6e                	outs   dx,BYTE PTR ds:[esi]
  be:	65 64 20 63 68       	gs and BYTE PTR fs:[rbx+0x68],ah
  c3:	61                   	(bad)  
  c4:	72 00                	jb     c6 <__abi_tag-0x2c6>
  c6:	73 6f                	jae    137 <__abi_tag-0x255>
  c8:	6c                   	ins    BYTE PTR es:[rdi],dx
  c9:	76 65                	jbe    130 <__abi_tag-0x25c>
  cb:	72 00                	jb     cd <__abi_tag-0x2bf>
  cd:	73 68                	jae    137 <__abi_tag-0x255>
  cf:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  d0:	72 74                	jb     146 <__abi_tag-0x246>
  d2:	20 75 6e             	and    BYTE PTR [rbp+0x6e],dh
  d5:	73 69                	jae    140 <__abi_tag-0x24c>
  d7:	67 6e                	outs   dx,BYTE PTR ds:[esi]
  d9:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
  de:	74 00                	je     e0 <__abi_tag-0x2ac>
  e0:	70 72                	jo     154 <__abi_tag-0x238>
  e2:	69 6e 74 66 00 72 62 	imul   ebp,DWORD PTR [rsi+0x74],0x62720066
  e9:	70 5f                	jo     14a <__abi_tag-0x242>
  eb:	61                   	(bad)  
  ec:	64 64 00 73 68       	fs add BYTE PTR fs:[rbx+0x68],dh
  f1:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  f2:	72 74                	jb     168 <__abi_tag-0x224>
  f4:	20 69 6e             	and    BYTE PTR [rcx+0x6e],ch
  f7:	74 00                	je     f9 <__abi_tag-0x293>
  f9:	5f                   	pop    rdi
  fa:	5f                   	pop    rdi
  fb:	75 69                	jne    166 <__abi_tag-0x226>
  fd:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  fe:	74 36                	je     136 <__abi_tag-0x256>
 100:	34 5f                	xor    al,0x5f
 102:	74 00                	je     104 <__abi_tag-0x288>

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	73 6f                	jae    71 <__abi_tag-0x31b>
   2:	6c                   	ins    BYTE PTR es:[rdi],dx
   3:	76 65                	jbe    6a <__abi_tag-0x322>
   5:	72 2e                	jb     35 <__abi_tag-0x357>
   7:	63 00                	movsxd eax,DWORD PTR [rax]
   9:	2f                   	(bad)  
   a:	68 6f 6d 65 2f       	push   0x2f656d6f
   f:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  10:	69 72 6f 77 75 2f 75 	imul   esi,DWORD PTR [rdx+0x6f],0x752f7577
  17:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  18:	69 78 2f 6c 61 62 34 	imul   edi,DWORD PTR [rax+0x2f],0x3462616c
  1f:	2f                   	(bad)  
  20:	70 6f                	jo     91 <__abi_tag-0x2fb>
  22:	77 00                	ja     24 <__abi_tag-0x368>
  24:	2f                   	(bad)  
  25:	75 73                	jne    9a <__abi_tag-0x2f2>
  27:	72 2f                	jb     58 <__abi_tag-0x334>
  29:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  30:	2f                   	(bad)  
  31:	78 38                	js     6b <__abi_tag-0x321>
  33:	36 5f                	ss pop rdi
  35:	36 34 2d             	ss xor al,0x2d
  38:	6c                   	ins    BYTE PTR es:[rdi],dx
  39:	69 6e 75 78 2d 67 6e 	imul   ebp,DWORD PTR [rsi+0x75],0x6e672d78
  40:	75 2f                	jne    71 <__abi_tag-0x31b>
  42:	62                   	(bad)  
  43:	69 74 73 00 2f 75 73 	imul   esi,DWORD PTR [rbx+rsi*2+0x0],0x7273752f
  4a:	72 
  4b:	2f                   	(bad)  
  4c:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  53:	00 74 79 70          	add    BYTE PTR [rcx+rdi*2+0x70],dh
  57:	65 73 2e             	gs jae 88 <__abi_tag-0x304>
  5a:	68 00 73 74 64       	push   0x64747300
  5f:	69 6e 74 2d 75 69 6e 	imul   ebp,DWORD PTR [rsi+0x74],0x6e69752d
  66:	74 6e                	je     d6 <__abi_tag-0x2b6>
  68:	2e 68 00 73 74 64    	cs push 0x64747300
  6e:	69                   	.byte 0x69
  6f:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  70:	2e                   	cs
  71:	68                   	.byte 0x68
	...
