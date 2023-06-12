
guess:     file format elf64-x86-64


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
 377:	00 3c 88             	add    BYTE PTR [rax+rcx*4],bh
 37a:	4b cd ea             	rex.WXB int 0xea
 37d:	19 10                	sbb    DWORD PTR [rax],edx
 37f:	03 69 fb             	add    ebp,DWORD PTR [rcx-0x5]
 382:	d8 0c a2             	fmul   DWORD PTR [rdx+riz*4]
 385:	4c fc                	rex.WR cld 
 387:	61                   	(bad)  
 388:	e6 68                	out    0x68,al
 38a:	53                   	push   rbx
 38b:	bc                   	.byte 0xbc

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
 3b0:	03 00                	add    eax,DWORD PTR [rax]
 3b2:	00 00                	add    BYTE PTR [rax],al
 3b4:	0e                   	(bad)  
 3b5:	00 00                	add    BYTE PTR [rax],al
 3b7:	00 01                	add    BYTE PTR [rcx],al
 3b9:	00 00                	add    BYTE PTR [rax],al
 3bb:	00 06                	add    BYTE PTR [rsi],al
 3bd:	00 00                	add    BYTE PTR [rax],al
 3bf:	00 00                	add    BYTE PTR [rax],al
 3c1:	00 a1 00 80 01 10    	add    BYTE PTR [rcx+0x10018000],ah
 3c7:	00 0e                	add    BYTE PTR [rsi],cl
 3c9:	00 00                	add    BYTE PTR [rax],al
 3cb:	00 10                	add    BYTE PTR [rax],dl
 3cd:	00 00                	add    BYTE PTR [rax],al
 3cf:	00 00                	add    BYTE PTR [rax],al
 3d1:	00 00                	add    BYTE PTR [rax],al
 3d3:	00 28                	add    BYTE PTR [rax],ch
 3d5:	1d 8c 1c d1 65       	sbb    eax,0x65d11c8c
 3da:	ce                   	(bad)  
 3db:	6d                   	ins    DWORD PTR es:[rdi],dx
 3dc:	67 55                	addr32 push rbp
 3de:	61                   	(bad)  
 3df:	10                   	.byte 0x10

Disassembly of section .dynsym:

00000000000003e0 <.dynsym>:
	...
 3f8:	1d 00 00 00 12       	sbb    eax,0x12000000
	...
 40d:	00 00                	add    BYTE PTR [rax],al
 40f:	00 83 00 00 00 20    	add    BYTE PTR [rbx+0x20000000],al
	...
 425:	00 00                	add    BYTE PTR [rax],al
 427:	00 4b 00             	add    BYTE PTR [rbx+0x0],cl
 42a:	00 00                	add    BYTE PTR [rax],al
 42c:	12 00                	adc    al,BYTE PTR [rax]
	...
 43e:	00 00                	add    BYTE PTR [rax],al
 440:	16                   	(bad)  
 441:	00 00                	add    BYTE PTR [rax],al
 443:	00 12                	add    BYTE PTR [rdx],dl
	...
 455:	00 00                	add    BYTE PTR [rax],al
 457:	00 56 00             	add    BYTE PTR [rsi+0x0],dl
 45a:	00 00                	add    BYTE PTR [rax],al
 45c:	12 00                	adc    al,BYTE PTR [rax]
	...
 46e:	00 00                	add    BYTE PTR [rax],al
 470:	2f                   	(bad)  
 471:	00 00                	add    BYTE PTR [rax],al
 473:	00 12                	add    BYTE PTR [rdx],dl
	...
 485:	00 00                	add    BYTE PTR [rax],al
 487:	00 10                	add    BYTE PTR [rax],dl
 489:	00 00                	add    BYTE PTR [rax],al
 48b:	00 12                	add    BYTE PTR [rdx],dl
	...
 49d:	00 00                	add    BYTE PTR [rax],al
 49f:	00 9f 00 00 00 20    	add    BYTE PTR [rdi+0x20000000],bl
	...
 4b5:	00 00                	add    BYTE PTR [rax],al
 4b7:	00 35 00 00 00 12    	add    BYTE PTR [rip+0x12000000],dh        # 120004bd <_end+0x11ffc48d>
	...
 4cd:	00 00                	add    BYTE PTR [rax],al
 4cf:	00 5d 00             	add    BYTE PTR [rbp+0x0],bl
 4d2:	00 00                	add    BYTE PTR [rax],al
 4d4:	12 00                	adc    al,BYTE PTR [rax]
	...
 4e6:	00 00                	add    BYTE PTR [rax],al
 4e8:	3c 00                	cmp    al,0x0
 4ea:	00 00                	add    BYTE PTR [rax],al
 4ec:	12 00                	adc    al,BYTE PTR [rax]
	...
 4fe:	00 00                	add    BYTE PTR [rax],al
 500:	ae                   	scas   al,BYTE PTR es:[rdi]
 501:	00 00                	add    BYTE PTR [rax],al
 503:	00 20                	add    BYTE PTR [rax],ah
	...
 515:	00 00                	add    BYTE PTR [rax],al
 517:	00 30                	add    BYTE PTR [rax],dh
 519:	00 00                	add    BYTE PTR [rax],al
 51b:	00 12                	add    BYTE PTR [rdx],dl
	...
 52d:	00 00                	add    BYTE PTR [rax],al
 52f:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
 533:	00 11                	add    BYTE PTR [rcx],dl
 535:	00 1a                	add    BYTE PTR [rdx],bl
 537:	00 10                	add    BYTE PTR [rax],dl
 539:	40 00 00             	rex add BYTE PTR [rax],al
 53c:	00 00                	add    BYTE PTR [rax],al
 53e:	00 00                	add    BYTE PTR [rax],al
 540:	08 00                	or     BYTE PTR [rax],al
 542:	00 00                	add    BYTE PTR [rax],al
 544:	00 00                	add    BYTE PTR [rax],al
 546:	00 00                	add    BYTE PTR [rax],al
 548:	01 00                	add    DWORD PTR [rax],eax
 54a:	00 00                	add    BYTE PTR [rax],al
 54c:	22 00                	and    al,BYTE PTR [rax]
	...
 55e:	00 00                	add    BYTE PTR [rax],al
 560:	50                   	push   rax
 561:	00 00                	add    BYTE PTR [rax],al
 563:	00 11                	add    BYTE PTR [rcx],dl
 565:	00 1a                	add    BYTE PTR [rdx],bl
 567:	00 20                	add    BYTE PTR [rax],ah
 569:	40 00 00             	rex add BYTE PTR [rax],al
 56c:	00 00                	add    BYTE PTR [rax],al
 56e:	00 00                	add    BYTE PTR [rax],al
 570:	08 00                	or     BYTE PTR [rax],al
 572:	00 00                	add    BYTE PTR [rax],al
 574:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynstr:

0000000000000578 <.dynstr>:
 578:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 57b:	63 78 61             	movsxd edi,DWORD PTR [rax+0x61]
 57e:	5f                   	pop    rdi
 57f:	66 69 6e 61 6c 69    	imul   bp,WORD PTR [rsi+0x61],0x696c
 585:	7a 65                	jp     5ec <__abi_tag+0x260>
 587:	00 66 67             	add    BYTE PTR [rsi+0x67],ah
 58a:	65 74 73             	gs je  600 <__abi_tag+0x274>
 58d:	00 67 65             	add    BYTE PTR [rdi+0x65],ah
 590:	74 70                	je     602 <__abi_tag+0x276>
 592:	69 64 00 5f 5f 6c 69 	imul   esp,DWORD PTR [rax+rax*1+0x5f],0x62696c5f
 599:	62 
 59a:	63 5f 73             	movsxd ebx,DWORD PTR [rdi+0x73]
 59d:	74 61                	je     600 <__abi_tag+0x274>
 59f:	72 74                	jb     615 <__abi_tag+0x289>
 5a1:	5f                   	pop    rdi
 5a2:	6d                   	ins    DWORD PTR es:[rdi],dx
 5a3:	61                   	(bad)  
 5a4:	69 6e 00 73 72 61 6e 	imul   ebp,DWORD PTR [rsi+0x0],0x6e617273
 5ab:	64 00 73 74          	add    BYTE PTR fs:[rbx+0x74],dh
 5af:	72 74                	jb     625 <__abi_tag+0x299>
 5b1:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 5b2:	6c                   	ins    BYTE PTR es:[rdi],dx
 5b3:	00 73 65             	add    BYTE PTR [rbx+0x65],dh
 5b6:	74 76                	je     62e <__abi_tag+0x2a2>
 5b8:	62 75 66 00 73       	(bad)
 5bd:	74 64                	je     623 <__abi_tag+0x297>
 5bf:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 5c0:	75 74                	jne    636 <__abi_tag+0x2aa>
 5c2:	00 70 75             	add    BYTE PTR [rax+0x75],dh
 5c5:	74 73                	je     63a <__abi_tag+0x2ae>
 5c7:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
 5ca:	64 69 6e 00 70 72 69 	imul   ebp,DWORD PTR fs:[rsi+0x0],0x6e697270
 5d1:	6e 
 5d2:	74 66                	je     63a <__abi_tag+0x2ae>
 5d4:	00 74 69 6d          	add    BYTE PTR [rcx+rbp*2+0x6d],dh
 5d8:	65 00 6c 69 62       	add    BYTE PTR gs:[rcx+rbp*2+0x62],ch
 5dd:	63 2e                	movsxd ebp,DWORD PTR [rsi]
 5df:	73 6f                	jae    650 <__abi_tag+0x2c4>
 5e1:	2e 36 00 47 4c       	cs ss add BYTE PTR [rdi+0x4c],al
 5e6:	49                   	rex.WB
 5e7:	42                   	rex.X
 5e8:	43 5f                	rex.XB pop r15
 5ea:	32 2e                	xor    ch,BYTE PTR [rsi]
 5ec:	32 2e                	xor    ch,BYTE PTR [rsi]
 5ee:	35 00 47 4c 49       	xor    eax,0x494c4700
 5f3:	42                   	rex.X
 5f4:	43 5f                	rex.XB pop r15
 5f6:	32 2e                	xor    ch,BYTE PTR [rsi]
 5f8:	33 34 00             	xor    esi,DWORD PTR [rax+rax*1]
 5fb:	5f                   	pop    rdi
 5fc:	49 54                	rex.WB push r12
 5fe:	4d 5f                	rex.WRB pop r15
 600:	64 65 72 65          	fs gs jb 669 <__abi_tag+0x2dd>
 604:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 60b:	4d 
 60c:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 60e:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 60f:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 610:	65 54                	gs push rsp
 612:	61                   	(bad)  
 613:	62                   	(bad)  
 614:	6c                   	ins    BYTE PTR es:[rdi],dx
 615:	65 00 5f 5f          	add    BYTE PTR gs:[rdi+0x5f],bl
 619:	67 6d                	ins    DWORD PTR es:[edi],dx
 61b:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 61c:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 61d:	5f                   	pop    rdi
 61e:	73 74                	jae    694 <__abi_tag+0x308>
 620:	61                   	(bad)  
 621:	72 74                	jb     697 <__abi_tag+0x30b>
 623:	5f                   	pop    rdi
 624:	5f                   	pop    rdi
 625:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 628:	54                   	push   rsp
 629:	4d 5f                	rex.WRB pop r15
 62b:	72 65                	jb     692 <__abi_tag+0x306>
 62d:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 634:	4d 
 635:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 637:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 638:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 639:	65 54                	gs push rsp
 63b:	61                   	(bad)  
 63c:	62                   	.byte 0x62
 63d:	6c                   	ins    BYTE PTR es:[rdi],dx
 63e:	65                   	gs
	...

Disassembly of section .gnu.version:

0000000000000640 <.gnu.version>:
 640:	00 00                	add    BYTE PTR [rax],al
 642:	02 00                	add    al,BYTE PTR [rax]
 644:	01 00                	add    DWORD PTR [rax],eax
 646:	03 00                	add    eax,DWORD PTR [rax]
 648:	03 00                	add    eax,DWORD PTR [rax]
 64a:	03 00                	add    eax,DWORD PTR [rax]
 64c:	03 00                	add    eax,DWORD PTR [rax]
 64e:	03 00                	add    eax,DWORD PTR [rax]
 650:	01 00                	add    DWORD PTR [rax],eax
 652:	03 00                	add    eax,DWORD PTR [rax]
 654:	03 00                	add    eax,DWORD PTR [rax]
 656:	03 00                	add    eax,DWORD PTR [rax]
 658:	01 00                	add    DWORD PTR [rax],eax
 65a:	03 00                	add    eax,DWORD PTR [rax]
 65c:	03 00                	add    eax,DWORD PTR [rax]
 65e:	03 00                	add    eax,DWORD PTR [rax]
 660:	03 00                	add    eax,DWORD PTR [rax]

Disassembly of section .gnu.version_r:

0000000000000668 <.gnu.version_r>:
 668:	01 00                	add    DWORD PTR [rax],eax
 66a:	02 00                	add    al,BYTE PTR [rax]
 66c:	62                   	(bad)  
 66d:	00 00                	add    BYTE PTR [rax],al
 66f:	00 10                	add    BYTE PTR [rax],dl
 671:	00 00                	add    BYTE PTR [rax],al
 673:	00 00                	add    BYTE PTR [rax],al
 675:	00 00                	add    BYTE PTR [rax],al
 677:	00 75 1a             	add    BYTE PTR [rbp+0x1a],dh
 67a:	69 09 00 00 03 00    	imul   ecx,DWORD PTR [rcx],0x30000
 680:	6c                   	ins    BYTE PTR es:[rdi],dx
 681:	00 00                	add    BYTE PTR [rax],al
 683:	00 10                	add    BYTE PTR [rax],dl
 685:	00 00                	add    BYTE PTR [rax],al
 687:	00 b4 91 96 06 00 00 	add    BYTE PTR [rcx+rdx*4+0x696],dh
 68e:	02 00                	add    al,BYTE PTR [rax]
 690:	78 00                	js     692 <__abi_tag+0x306>
 692:	00 00                	add    BYTE PTR [rax],al
 694:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000000698 <.rela.dyn>:
 698:	78 3d                	js     6d7 <__abi_tag+0x34b>
 69a:	00 00                	add    BYTE PTR [rax],al
 69c:	00 00                	add    BYTE PTR [rax],al
 69e:	00 00                	add    BYTE PTR [rax],al
 6a0:	08 00                	or     BYTE PTR [rax],al
 6a2:	00 00                	add    BYTE PTR [rax],al
 6a4:	00 00                	add    BYTE PTR [rax],al
 6a6:	00 00                	add    BYTE PTR [rax],al
 6a8:	40 12 00             	rex adc al,BYTE PTR [rax]
 6ab:	00 00                	add    BYTE PTR [rax],al
 6ad:	00 00                	add    BYTE PTR [rax],al
 6af:	00 80 3d 00 00 00    	add    BYTE PTR [rax+0x3d],al
 6b5:	00 00                	add    BYTE PTR [rax],al
 6b7:	00 08                	add    BYTE PTR [rax],cl
	...
 6c1:	12 00                	adc    al,BYTE PTR [rax]
 6c3:	00 00                	add    BYTE PTR [rax],al
 6c5:	00 00                	add    BYTE PTR [rax],al
 6c7:	00 08                	add    BYTE PTR [rax],cl
 6c9:	40 00 00             	rex add BYTE PTR [rax],al
 6cc:	00 00                	add    BYTE PTR [rax],al
 6ce:	00 00                	add    BYTE PTR [rax],al
 6d0:	08 00                	or     BYTE PTR [rax],al
 6d2:	00 00                	add    BYTE PTR [rax],al
 6d4:	00 00                	add    BYTE PTR [rax],al
 6d6:	00 00                	add    BYTE PTR [rax],al
 6d8:	08 40 00             	or     BYTE PTR [rax+0x0],al
 6db:	00 00                	add    BYTE PTR [rax],al
 6dd:	00 00                	add    BYTE PTR [rax],al
 6df:	00 d8                	add    al,bl
 6e1:	3f                   	(bad)  
 6e2:	00 00                	add    BYTE PTR [rax],al
 6e4:	00 00                	add    BYTE PTR [rax],al
 6e6:	00 00                	add    BYTE PTR [rax],al
 6e8:	06                   	(bad)  
 6e9:	00 00                	add    BYTE PTR [rax],al
 6eb:	00 01                	add    BYTE PTR [rcx],al
	...
 6f5:	00 00                	add    BYTE PTR [rax],al
 6f7:	00 e0                	add    al,ah
 6f9:	3f                   	(bad)  
 6fa:	00 00                	add    BYTE PTR [rax],al
 6fc:	00 00                	add    BYTE PTR [rax],al
 6fe:	00 00                	add    BYTE PTR [rax],al
 700:	06                   	(bad)  
 701:	00 00                	add    BYTE PTR [rax],al
 703:	00 02                	add    BYTE PTR [rdx],al
	...
 70d:	00 00                	add    BYTE PTR [rax],al
 70f:	00 e8                	add    al,ch
 711:	3f                   	(bad)  
 712:	00 00                	add    BYTE PTR [rax],al
 714:	00 00                	add    BYTE PTR [rax],al
 716:	00 00                	add    BYTE PTR [rax],al
 718:	06                   	(bad)  
 719:	00 00                	add    BYTE PTR [rax],al
 71b:	00 08                	add    BYTE PTR [rax],cl
	...
 725:	00 00                	add    BYTE PTR [rax],al
 727:	00 f0                	add    al,dh
 729:	3f                   	(bad)  
 72a:	00 00                	add    BYTE PTR [rax],al
 72c:	00 00                	add    BYTE PTR [rax],al
 72e:	00 00                	add    BYTE PTR [rax],al
 730:	06                   	(bad)  
 731:	00 00                	add    BYTE PTR [rax],al
 733:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
	...
 73e:	00 00                	add    BYTE PTR [rax],al
 740:	f8                   	clc    
 741:	3f                   	(bad)  
 742:	00 00                	add    BYTE PTR [rax],al
 744:	00 00                	add    BYTE PTR [rax],al
 746:	00 00                	add    BYTE PTR [rax],al
 748:	06                   	(bad)  
 749:	00 00                	add    BYTE PTR [rax],al
 74b:	00 0f                	add    BYTE PTR [rdi],cl
	...
 755:	00 00                	add    BYTE PTR [rax],al
 757:	00 10                	add    BYTE PTR [rax],dl
 759:	40 00 00             	rex add BYTE PTR [rax],al
 75c:	00 00                	add    BYTE PTR [rax],al
 75e:	00 00                	add    BYTE PTR [rax],al
 760:	05 00 00 00 0e       	add    eax,0xe000000
	...
 76d:	00 00                	add    BYTE PTR [rax],al
 76f:	00 20                	add    BYTE PTR [rax],ah
 771:	40 00 00             	rex add BYTE PTR [rax],al
 774:	00 00                	add    BYTE PTR [rax],al
 776:	00 00                	add    BYTE PTR [rax],al
 778:	05 00 00 00 10       	add    eax,0x10000000
	...

Disassembly of section .rela.plt:

0000000000000788 <.rela.plt>:
 788:	90                   	nop
 789:	3f                   	(bad)  
 78a:	00 00                	add    BYTE PTR [rax],al
 78c:	00 00                	add    BYTE PTR [rax],al
 78e:	00 00                	add    BYTE PTR [rax],al
 790:	07                   	(bad)  
 791:	00 00                	add    BYTE PTR [rax],al
 793:	00 03                	add    BYTE PTR [rbx],al
	...
 79d:	00 00                	add    BYTE PTR [rax],al
 79f:	00 98 3f 00 00 00    	add    BYTE PTR [rax+0x3f],bl
 7a5:	00 00                	add    BYTE PTR [rax],al
 7a7:	00 07                	add    BYTE PTR [rdi],al
 7a9:	00 00                	add    BYTE PTR [rax],al
 7ab:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
 7b6:	00 00                	add    BYTE PTR [rax],al
 7b8:	a0 3f 00 00 00 00 00 	movabs al,ds:0x70000000000003f
 7bf:	00 07 
 7c1:	00 00                	add    BYTE PTR [rax],al
 7c3:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 7c9 <__abi_tag+0x43d>
 7c9:	00 00                	add    BYTE PTR [rax],al
 7cb:	00 00                	add    BYTE PTR [rax],al
 7cd:	00 00                	add    BYTE PTR [rax],al
 7cf:	00 a8 3f 00 00 00    	add    BYTE PTR [rax+0x3f],ch
 7d5:	00 00                	add    BYTE PTR [rax],al
 7d7:	00 07                	add    BYTE PTR [rdi],al
 7d9:	00 00                	add    BYTE PTR [rax],al
 7db:	00 06                	add    BYTE PTR [rsi],al
	...
 7e5:	00 00                	add    BYTE PTR [rax],al
 7e7:	00 b0 3f 00 00 00    	add    BYTE PTR [rax+0x3f],dh
 7ed:	00 00                	add    BYTE PTR [rax],al
 7ef:	00 07                	add    BYTE PTR [rdi],al
 7f1:	00 00                	add    BYTE PTR [rax],al
 7f3:	00 07                	add    BYTE PTR [rdi],al
	...
 7fd:	00 00                	add    BYTE PTR [rax],al
 7ff:	00 b8 3f 00 00 00    	add    BYTE PTR [rax+0x3f],bh
 805:	00 00                	add    BYTE PTR [rax],al
 807:	00 07                	add    BYTE PTR [rdi],al
 809:	00 00                	add    BYTE PTR [rax],al
 80b:	00 09                	add    BYTE PTR [rcx],cl
	...
 815:	00 00                	add    BYTE PTR [rax],al
 817:	00 c0                	add    al,al
 819:	3f                   	(bad)  
 81a:	00 00                	add    BYTE PTR [rax],al
 81c:	00 00                	add    BYTE PTR [rax],al
 81e:	00 00                	add    BYTE PTR [rax],al
 820:	07                   	(bad)  
 821:	00 00                	add    BYTE PTR [rax],al
 823:	00 0a                	add    BYTE PTR [rdx],cl
	...
 82d:	00 00                	add    BYTE PTR [rax],al
 82f:	00 c8                	add    al,cl
 831:	3f                   	(bad)  
 832:	00 00                	add    BYTE PTR [rax],al
 834:	00 00                	add    BYTE PTR [rax],al
 836:	00 00                	add    BYTE PTR [rax],al
 838:	07                   	(bad)  
 839:	00 00                	add    BYTE PTR [rax],al
 83b:	00 0b                	add    BYTE PTR [rbx],cl
	...
 845:	00 00                	add    BYTE PTR [rax],al
 847:	00 d0                	add    al,dl
 849:	3f                   	(bad)  
 84a:	00 00                	add    BYTE PTR [rax],al
 84c:	00 00                	add    BYTE PTR [rax],al
 84e:	00 00                	add    BYTE PTR [rax],al
 850:	07                   	(bad)  
 851:	00 00                	add    BYTE PTR [rax],al
 853:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 859 <__abi_tag+0x4cd>
 859:	00 00                	add    BYTE PTR [rax],al
 85b:	00 00                	add    BYTE PTR [rax],al
 85d:	00 00                	add    BYTE PTR [rax],al
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
    1020:	ff 35 5a 2f 00 00    	push   QWORD PTR [rip+0x2f5a]        # 3f80 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 5b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f5b]        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop

Disassembly of section .plt.got:

00000000000010c0 <__cxa_finalize@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 2d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f2d]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010d0 <puts@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 b5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eb5]        # 3f90 <puts@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <getpid@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 ad 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ead]        # 3f98 <getpid@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <printf@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 a5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ea5]        # 3fa0 <printf@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001100 <srand@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 9d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e9d]        # 3fa8 <srand@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <fgets@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 95 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e95]        # 3fb0 <fgets@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001120 <strtol@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 8d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e8d]        # 3fb8 <strtol@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001130 <time@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 85 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e85]        # 3fc0 <time@GLIBC_2.2.5>
    113b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001140 <setvbuf@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 7d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e7d]        # 3fc8 <setvbuf@GLIBC_2.2.5>
    114b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001150 <rand@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 75 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e75]        # 3fd0 <rand@GLIBC_2.2.5>
    115b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001160 <_start>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	31 ed                	xor    ebp,ebp
    1166:	49 89 d1             	mov    r9,rdx
    1169:	5e                   	pop    rsi
    116a:	48 89 e2             	mov    rdx,rsp
    116d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1171:	50                   	push   rax
    1172:	54                   	push   rsp
    1173:	45 31 c0             	xor    r8d,r8d
    1176:	31 c9                	xor    ecx,ecx
    1178:	48 8d 3d ca 00 00 00 	lea    rdi,[rip+0xca]        # 1249 <main>
    117f:	ff 15 53 2e 00 00    	call   QWORD PTR [rip+0x2e53]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1185:	f4                   	hlt    
    1186:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    118d:	00 00 00 

0000000000001190 <deregister_tm_clones>:
    1190:	48 8d 3d 79 2e 00 00 	lea    rdi,[rip+0x2e79]        # 4010 <stdout@GLIBC_2.2.5>
    1197:	48 8d 05 72 2e 00 00 	lea    rax,[rip+0x2e72]        # 4010 <stdout@GLIBC_2.2.5>
    119e:	48 39 f8             	cmp    rax,rdi
    11a1:	74 15                	je     11b8 <deregister_tm_clones+0x28>
    11a3:	48 8b 05 36 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e36]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    11aa:	48 85 c0             	test   rax,rax
    11ad:	74 09                	je     11b8 <deregister_tm_clones+0x28>
    11af:	ff e0                	jmp    rax
    11b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011c0 <register_tm_clones>:
    11c0:	48 8d 3d 49 2e 00 00 	lea    rdi,[rip+0x2e49]        # 4010 <stdout@GLIBC_2.2.5>
    11c7:	48 8d 35 42 2e 00 00 	lea    rsi,[rip+0x2e42]        # 4010 <stdout@GLIBC_2.2.5>
    11ce:	48 29 fe             	sub    rsi,rdi
    11d1:	48 89 f0             	mov    rax,rsi
    11d4:	48 c1 ee 3f          	shr    rsi,0x3f
    11d8:	48 c1 f8 03          	sar    rax,0x3
    11dc:	48 01 c6             	add    rsi,rax
    11df:	48 d1 fe             	sar    rsi,1
    11e2:	74 14                	je     11f8 <register_tm_clones+0x38>
    11e4:	48 8b 05 05 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e05]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11eb:	48 85 c0             	test   rax,rax
    11ee:	74 08                	je     11f8 <register_tm_clones+0x38>
    11f0:	ff e0                	jmp    rax
    11f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    11f8:	c3                   	ret    
    11f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001200 <__do_global_dtors_aux>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	80 3d 1d 2e 00 00 00 	cmp    BYTE PTR [rip+0x2e1d],0x0        # 4028 <completed.0>
    120b:	75 2b                	jne    1238 <__do_global_dtors_aux+0x38>
    120d:	55                   	push   rbp
    120e:	48 83 3d e2 2d 00 00 	cmp    QWORD PTR [rip+0x2de2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1215:	00 
    1216:	48 89 e5             	mov    rbp,rsp
    1219:	74 0c                	je     1227 <__do_global_dtors_aux+0x27>
    121b:	48 8b 3d e6 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2de6]        # 4008 <__dso_handle>
    1222:	e8 99 fe ff ff       	call   10c0 <__cxa_finalize@plt>
    1227:	e8 64 ff ff ff       	call   1190 <deregister_tm_clones>
    122c:	c6 05 f5 2d 00 00 01 	mov    BYTE PTR [rip+0x2df5],0x1        # 4028 <completed.0>
    1233:	5d                   	pop    rbp
    1234:	c3                   	ret    
    1235:	0f 1f 00             	nop    DWORD PTR [rax]
    1238:	c3                   	ret    
    1239:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001240 <frame_dummy>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	e9 77 ff ff ff       	jmp    11c0 <register_tm_clones>

0000000000001249 <main>:
    1249:	f3 0f 1e fa          	endbr64 
    124d:	55                   	push   rbp
    124e:	48 89 e5             	mov    rbp,rsp
    1251:	53                   	push   rbx
    1252:	48 83 ec 28          	sub    rsp,0x28
    1256:	48 8b 05 b3 2d 00 00 	mov    rax,QWORD PTR [rip+0x2db3]        # 4010 <stdout@GLIBC_2.2.5>
    125d:	b9 00 00 00 00       	mov    ecx,0x0
    1262:	ba 02 00 00 00       	mov    edx,0x2
    1267:	be 00 00 00 00       	mov    esi,0x0
    126c:	48 89 c7             	mov    rdi,rax
    126f:	e8 cc fe ff ff       	call   1140 <setvbuf@plt>
    1274:	bf 00 00 00 00       	mov    edi,0x0
    1279:	e8 b2 fe ff ff       	call   1130 <time@plt>
    127e:	89 c3                	mov    ebx,eax
    1280:	e8 5b fe ff ff       	call   10e0 <getpid@plt>
    1285:	31 d8                	xor    eax,ebx
    1287:	89 c7                	mov    edi,eax
    1289:	e8 72 fe ff ff       	call   1100 <srand@plt>
    128e:	e8 bd fe ff ff       	call   1150 <rand@plt>
    1293:	48 63 d0             	movsxd rdx,eax
    1296:	48 69 d2 ad 8b db 68 	imul   rdx,rdx,0x68db8bad
    129d:	48 c1 ea 20          	shr    rdx,0x20
    12a1:	c1 fa 0c             	sar    edx,0xc
    12a4:	89 c1                	mov    ecx,eax
    12a6:	c1 f9 1f             	sar    ecx,0x1f
    12a9:	29 ca                	sub    edx,ecx
    12ab:	89 55 ec             	mov    DWORD PTR [rbp-0x14],edx
    12ae:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
    12b1:	69 d2 10 27 00 00    	imul   edx,edx,0x2710
    12b7:	29 d0                	sub    eax,edx
    12b9:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
    12bc:	48 8d 05 41 0d 00 00 	lea    rax,[rip+0xd41]        # 2004 <_IO_stdin_used+0x4>
    12c3:	48 89 c7             	mov    rdi,rax
    12c6:	b8 00 00 00 00       	mov    eax,0x0
    12cb:	e8 20 fe ff ff       	call   10f0 <printf@plt>
    12d0:	48 8b 15 49 2d 00 00 	mov    rdx,QWORD PTR [rip+0x2d49]        # 4020 <stdin@GLIBC_2.2.5>
    12d7:	48 8d 45 d0          	lea    rax,[rbp-0x30]
    12db:	be 20 00 00 00       	mov    esi,0x20
    12e0:	48 89 c7             	mov    rdi,rax
    12e3:	e8 28 fe ff ff       	call   1110 <fgets@plt>
    12e8:	48 85 c0             	test   rax,rax
    12eb:	74 5a                	je     1347 <main+0xfe>
    12ed:	48 8d 45 d0          	lea    rax,[rbp-0x30]
    12f1:	ba 00 00 00 00       	mov    edx,0x0
    12f6:	be 00 00 00 00       	mov    esi,0x0
    12fb:	48 89 c7             	mov    rdi,rax
    12fe:	e8 1d fe ff ff       	call   1120 <strtol@plt>
    1303:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
    1306:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
    1309:	89 c6                	mov    esi,eax
    130b:	48 8d 05 05 0d 00 00 	lea    rax,[rip+0xd05]        # 2017 <_IO_stdin_used+0x17>
    1312:	48 89 c7             	mov    rdi,rax
    1315:	b8 00 00 00 00       	mov    eax,0x0
    131a:	e8 d1 fd ff ff       	call   10f0 <printf@plt>
    131f:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
    1322:	3b 45 ec             	cmp    eax,DWORD PTR [rbp-0x14]
    1325:	75 11                	jne    1338 <main+0xef>
    1327:	48 8d 05 fb 0c 00 00 	lea    rax,[rip+0xcfb]        # 2029 <_IO_stdin_used+0x29>
    132e:	48 89 c7             	mov    rdi,rax
    1331:	e8 9a fd ff ff       	call   10d0 <puts@plt>
    1336:	eb 0f                	jmp    1347 <main+0xfe>
    1338:	48 8d 05 f1 0c 00 00 	lea    rax,[rip+0xcf1]        # 2030 <_IO_stdin_used+0x30>
    133f:	48 89 c7             	mov    rdi,rax
    1342:	e8 89 fd ff ff       	call   10d0 <puts@plt>
    1347:	b8 00 00 00 00       	mov    eax,0x0
    134c:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    1350:	c9                   	leave  
    1351:	c3                   	ret    

Disassembly of section .fini:

0000000000001354 <_fini>:
    1354:	f3 0f 1e fa          	endbr64 
    1358:	48 83 ec 08          	sub    rsp,0x8
    135c:	48 83 c4 08          	add    rsp,0x8
    1360:	c3                   	ret    

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    DWORD PTR [rax],eax
    2002:	02 00                	add    al,BYTE PTR [rax]
    2004:	47 75 65             	rex.RXB jne 206c <__GNU_EH_FRAME_HDR+0x2c>
    2007:	73 73                	jae    207c <__GNU_EH_FRAME_HDR+0x3c>
    2009:	20 74 68 65          	and    BYTE PTR [rax+rbp*2+0x65],dh
    200d:	20 6e 75             	and    BYTE PTR [rsi+0x75],ch
    2010:	6d                   	ins    DWORD PTR es:[rdi],dx
    2011:	62 65                	(bad)  
    2013:	72 3a                	jb     204f <__GNU_EH_FRAME_HDR+0xf>
    2015:	20 00                	and    BYTE PTR [rax],al
    2017:	59                   	pop    rcx
    2018:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    2019:	75 72                	jne    208d <__GNU_EH_FRAME_HDR+0x4d>
    201b:	20 67 75             	and    BYTE PTR [rdi+0x75],ah
    201e:	65 73 73             	gs jae 2094 <__GNU_EH_FRAME_HDR+0x54>
    2021:	20 69 73             	and    BYTE PTR [rcx+0x73],ch
    2024:	20 25 64 0a 00 42    	and    BYTE PTR [rip+0x42000a64],ah        # 42002a8e <_end+0x41ffea5e>
    202a:	69 6e 67 6f 21 00 4e 	imul   ebp,DWORD PTR [rsi+0x67],0x4e00216f
    2031:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    2032:	20 6e 6f             	and    BYTE PTR [rsi+0x6f],ch
    2035:	20 6e 6f             	and    BYTE PTR [rsi+0x6f],ch
    2038:	20 2e                	and    BYTE PTR [rsi],ch
    203a:	2e                   	cs
    203b:	2e                   	cs
	...

Disassembly of section .eh_frame_hdr:

0000000000002040 <__GNU_EH_FRAME_HDR>:
    2040:	01 1b                	add    DWORD PTR [rbx],ebx
    2042:	03 3b                	add    edi,DWORD PTR [rbx]
    2044:	34 00                	xor    al,0x0
    2046:	00 00                	add    BYTE PTR [rax],al
    2048:	05 00 00 00 e0       	add    eax,0xe0000000
    204d:	ef                   	out    dx,eax
    204e:	ff                   	(bad)  
    204f:	ff 68 00             	jmp    FWORD PTR [rax+0x0]
    2052:	00 00                	add    BYTE PTR [rax],al
    2054:	80 f0 ff             	xor    al,0xff
    2057:	ff 90 00 00 00 90    	call   QWORD PTR [rax-0x70000000]
    205d:	f0 ff                	lock (bad) 
    205f:	ff a8 00 00 00 20    	jmp    FWORD PTR [rax+0x20000000]
    2065:	f1                   	int1   
    2066:	ff                   	(bad)  
    2067:	ff 50 00             	call   QWORD PTR [rax+0x0]
    206a:	00 00                	add    BYTE PTR [rax],al
    206c:	09 f2                	or     edx,esi
    206e:	ff                   	(bad)  
    206f:	ff c0                	inc    eax
    2071:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .eh_frame:

0000000000002078 <__FRAME_END__-0xac>:
    2078:	14 00                	adc    al,0x0
    207a:	00 00                	add    BYTE PTR [rax],al
    207c:	00 00                	add    BYTE PTR [rax],al
    207e:	00 00                	add    BYTE PTR [rax],al
    2080:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
    2083:	00 01                	add    BYTE PTR [rcx],al
    2085:	78 10                	js     2097 <__GNU_EH_FRAME_HDR+0x57>
    2087:	01 1b                	add    DWORD PTR [rbx],ebx
    2089:	0c 07                	or     al,0x7
    208b:	08 90 01 00 00 14    	or     BYTE PTR [rax+0x14000001],dl
    2091:	00 00                	add    BYTE PTR [rax],al
    2093:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    2096:	00 00                	add    BYTE PTR [rax],al
    2098:	c8 f0 ff ff          	enter  0xfff0,0xff
    209c:	26 00 00             	es add BYTE PTR [rax],al
    209f:	00 00                	add    BYTE PTR [rax],al
    20a1:	44 07                	rex.R (bad) 
    20a3:	10 00                	adc    BYTE PTR [rax],al
    20a5:	00 00                	add    BYTE PTR [rax],al
    20a7:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
    20aa:	00 00                	add    BYTE PTR [rax],al
    20ac:	34 00                	xor    al,0x0
    20ae:	00 00                	add    BYTE PTR [rax],al
    20b0:	70 ef                	jo     20a1 <__GNU_EH_FRAME_HDR+0x61>
    20b2:	ff                   	(bad)  
    20b3:	ff a0 00 00 00 00    	jmp    QWORD PTR [rax+0x0]
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
    20d7:	00 e8                	add    al,ch
    20d9:	ef                   	out    dx,eax
    20da:	ff                   	(bad)  
    20db:	ff 10                	call   QWORD PTR [rax]
	...
    20e5:	00 00                	add    BYTE PTR [rax],al
    20e7:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
    20ea:	00 00                	add    BYTE PTR [rax],al
    20ec:	74 00                	je     20ee <__GNU_EH_FRAME_HDR+0xae>
    20ee:	00 00                	add    BYTE PTR [rax],al
    20f0:	e0 ef                	loopne 20e1 <__GNU_EH_FRAME_HDR+0xa1>
    20f2:	ff                   	(bad)  
    20f3:	ff 90 00 00 00 00    	call   QWORD PTR [rax+0x0]
    20f9:	00 00                	add    BYTE PTR [rax],al
    20fb:	00 00                	add    BYTE PTR [rax],al
    20fd:	00 00                	add    BYTE PTR [rax],al
    20ff:	00 20                	add    BYTE PTR [rax],ah
    2101:	00 00                	add    BYTE PTR [rax],al
    2103:	00 8c 00 00 00 41 f1 	add    BYTE PTR [rax+rax*1-0xebf0000],cl
    210a:	ff                   	(bad)  
    210b:	ff 09                	dec    DWORD PTR [rcx]
    210d:	01 00                	add    DWORD PTR [rax],eax
    210f:	00 00                	add    BYTE PTR [rax],al
    2111:	45 0e                	rex.RB (bad) 
    2113:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    2119:	45 83 03 02          	rex.RB add DWORD PTR [r11],0x2
    211d:	fb                   	sti    
    211e:	0c 07                	or     al,0x7
    2120:	08 00                	or     BYTE PTR [rax],al
	...

0000000000002124 <__FRAME_END__>:
    2124:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000003d78 <__frame_dummy_init_array_entry>:
    3d78:	40 12 00             	rex adc al,BYTE PTR [rax]
    3d7b:	00 00                	add    BYTE PTR [rax],al
    3d7d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000003d80 <__do_global_dtors_aux_fini_array_entry>:
    3d80:	00 12                	add    BYTE PTR [rdx],dl
    3d82:	00 00                	add    BYTE PTR [rax],al
    3d84:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000003d88 <_DYNAMIC>:
    3d88:	01 00                	add    DWORD PTR [rax],eax
    3d8a:	00 00                	add    BYTE PTR [rax],al
    3d8c:	00 00                	add    BYTE PTR [rax],al
    3d8e:	00 00                	add    BYTE PTR [rax],al
    3d90:	62                   	(bad)  
    3d91:	00 00                	add    BYTE PTR [rax],al
    3d93:	00 00                	add    BYTE PTR [rax],al
    3d95:	00 00                	add    BYTE PTR [rax],al
    3d97:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
    3d9a:	00 00                	add    BYTE PTR [rax],al
    3d9c:	00 00                	add    BYTE PTR [rax],al
    3d9e:	00 00                	add    BYTE PTR [rax],al
    3da0:	00 10                	add    BYTE PTR [rax],dl
    3da2:	00 00                	add    BYTE PTR [rax],al
    3da4:	00 00                	add    BYTE PTR [rax],al
    3da6:	00 00                	add    BYTE PTR [rax],al
    3da8:	0d 00 00 00 00       	or     eax,0x0
    3dad:	00 00                	add    BYTE PTR [rax],al
    3daf:	00 54 13 00          	add    BYTE PTR [rbx+rdx*1+0x0],dl
    3db3:	00 00                	add    BYTE PTR [rax],al
    3db5:	00 00                	add    BYTE PTR [rax],al
    3db7:	00 19                	add    BYTE PTR [rcx],bl
    3db9:	00 00                	add    BYTE PTR [rax],al
    3dbb:	00 00                	add    BYTE PTR [rax],al
    3dbd:	00 00                	add    BYTE PTR [rax],al
    3dbf:	00 78 3d             	add    BYTE PTR [rax+0x3d],bh
    3dc2:	00 00                	add    BYTE PTR [rax],al
    3dc4:	00 00                	add    BYTE PTR [rax],al
    3dc6:	00 00                	add    BYTE PTR [rax],al
    3dc8:	1b 00                	sbb    eax,DWORD PTR [rax]
    3dca:	00 00                	add    BYTE PTR [rax],al
    3dcc:	00 00                	add    BYTE PTR [rax],al
    3dce:	00 00                	add    BYTE PTR [rax],al
    3dd0:	08 00                	or     BYTE PTR [rax],al
    3dd2:	00 00                	add    BYTE PTR [rax],al
    3dd4:	00 00                	add    BYTE PTR [rax],al
    3dd6:	00 00                	add    BYTE PTR [rax],al
    3dd8:	1a 00                	sbb    al,BYTE PTR [rax]
    3dda:	00 00                	add    BYTE PTR [rax],al
    3ddc:	00 00                	add    BYTE PTR [rax],al
    3dde:	00 00                	add    BYTE PTR [rax],al
    3de0:	80 3d 00 00 00 00 00 	cmp    BYTE PTR [rip+0x0],0x0        # 3de7 <_DYNAMIC+0x5f>
    3de7:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    3dea:	00 00                	add    BYTE PTR [rax],al
    3dec:	00 00                	add    BYTE PTR [rax],al
    3dee:	00 00                	add    BYTE PTR [rax],al
    3df0:	08 00                	or     BYTE PTR [rax],al
    3df2:	00 00                	add    BYTE PTR [rax],al
    3df4:	00 00                	add    BYTE PTR [rax],al
    3df6:	00 00                	add    BYTE PTR [rax],al
    3df8:	f5                   	cmc    
    3df9:	fe                   	(bad)  
    3dfa:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3dfd:	00 00                	add    BYTE PTR [rax],al
    3dff:	00 b0 03 00 00 00    	add    BYTE PTR [rax+0x3],dh
    3e05:	00 00                	add    BYTE PTR [rax],al
    3e07:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 3e0d <_DYNAMIC+0x85>
    3e0d:	00 00                	add    BYTE PTR [rax],al
    3e0f:	00 78 05             	add    BYTE PTR [rax+0x5],bh
    3e12:	00 00                	add    BYTE PTR [rax],al
    3e14:	00 00                	add    BYTE PTR [rax],al
    3e16:	00 00                	add    BYTE PTR [rax],al
    3e18:	06                   	(bad)  
    3e19:	00 00                	add    BYTE PTR [rax],al
    3e1b:	00 00                	add    BYTE PTR [rax],al
    3e1d:	00 00                	add    BYTE PTR [rax],al
    3e1f:	00 e0                	add    al,ah
    3e21:	03 00                	add    eax,DWORD PTR [rax]
    3e23:	00 00                	add    BYTE PTR [rax],al
    3e25:	00 00                	add    BYTE PTR [rax],al
    3e27:	00 0a                	add    BYTE PTR [rdx],cl
    3e29:	00 00                	add    BYTE PTR [rax],al
    3e2b:	00 00                	add    BYTE PTR [rax],al
    3e2d:	00 00                	add    BYTE PTR [rax],al
    3e2f:	00 c8                	add    al,cl
    3e31:	00 00                	add    BYTE PTR [rax],al
    3e33:	00 00                	add    BYTE PTR [rax],al
    3e35:	00 00                	add    BYTE PTR [rax],al
    3e37:	00 0b                	add    BYTE PTR [rbx],cl
    3e39:	00 00                	add    BYTE PTR [rax],al
    3e3b:	00 00                	add    BYTE PTR [rax],al
    3e3d:	00 00                	add    BYTE PTR [rax],al
    3e3f:	00 18                	add    BYTE PTR [rax],bl
    3e41:	00 00                	add    BYTE PTR [rax],al
    3e43:	00 00                	add    BYTE PTR [rax],al
    3e45:	00 00                	add    BYTE PTR [rax],al
    3e47:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 3e4d <_DYNAMIC+0xc5>
	...
    3e55:	00 00                	add    BYTE PTR [rax],al
    3e57:	00 03                	add    BYTE PTR [rbx],al
    3e59:	00 00                	add    BYTE PTR [rax],al
    3e5b:	00 00                	add    BYTE PTR [rax],al
    3e5d:	00 00                	add    BYTE PTR [rax],al
    3e5f:	00 78 3f             	add    BYTE PTR [rax+0x3f],bh
    3e62:	00 00                	add    BYTE PTR [rax],al
    3e64:	00 00                	add    BYTE PTR [rax],al
    3e66:	00 00                	add    BYTE PTR [rax],al
    3e68:	02 00                	add    al,BYTE PTR [rax]
    3e6a:	00 00                	add    BYTE PTR [rax],al
    3e6c:	00 00                	add    BYTE PTR [rax],al
    3e6e:	00 00                	add    BYTE PTR [rax],al
    3e70:	d8 00                	fadd   DWORD PTR [rax]
    3e72:	00 00                	add    BYTE PTR [rax],al
    3e74:	00 00                	add    BYTE PTR [rax],al
    3e76:	00 00                	add    BYTE PTR [rax],al
    3e78:	14 00                	adc    al,0x0
    3e7a:	00 00                	add    BYTE PTR [rax],al
    3e7c:	00 00                	add    BYTE PTR [rax],al
    3e7e:	00 00                	add    BYTE PTR [rax],al
    3e80:	07                   	(bad)  
    3e81:	00 00                	add    BYTE PTR [rax],al
    3e83:	00 00                	add    BYTE PTR [rax],al
    3e85:	00 00                	add    BYTE PTR [rax],al
    3e87:	00 17                	add    BYTE PTR [rdi],dl
    3e89:	00 00                	add    BYTE PTR [rax],al
    3e8b:	00 00                	add    BYTE PTR [rax],al
    3e8d:	00 00                	add    BYTE PTR [rax],al
    3e8f:	00 88 07 00 00 00    	add    BYTE PTR [rax+0x7],cl
    3e95:	00 00                	add    BYTE PTR [rax],al
    3e97:	00 07                	add    BYTE PTR [rdi],al
    3e99:	00 00                	add    BYTE PTR [rax],al
    3e9b:	00 00                	add    BYTE PTR [rax],al
    3e9d:	00 00                	add    BYTE PTR [rax],al
    3e9f:	00 98 06 00 00 00    	add    BYTE PTR [rax+0x6],bl
    3ea5:	00 00                	add    BYTE PTR [rax],al
    3ea7:	00 08                	add    BYTE PTR [rax],cl
    3ea9:	00 00                	add    BYTE PTR [rax],al
    3eab:	00 00                	add    BYTE PTR [rax],al
    3ead:	00 00                	add    BYTE PTR [rax],al
    3eaf:	00 f0                	add    al,dh
    3eb1:	00 00                	add    BYTE PTR [rax],al
    3eb3:	00 00                	add    BYTE PTR [rax],al
    3eb5:	00 00                	add    BYTE PTR [rax],al
    3eb7:	00 09                	add    BYTE PTR [rcx],cl
    3eb9:	00 00                	add    BYTE PTR [rax],al
    3ebb:	00 00                	add    BYTE PTR [rax],al
    3ebd:	00 00                	add    BYTE PTR [rax],al
    3ebf:	00 18                	add    BYTE PTR [rax],bl
    3ec1:	00 00                	add    BYTE PTR [rax],al
    3ec3:	00 00                	add    BYTE PTR [rax],al
    3ec5:	00 00                	add    BYTE PTR [rax],al
    3ec7:	00 1e                	add    BYTE PTR [rsi],bl
    3ec9:	00 00                	add    BYTE PTR [rax],al
    3ecb:	00 00                	add    BYTE PTR [rax],al
    3ecd:	00 00                	add    BYTE PTR [rax],al
    3ecf:	00 08                	add    BYTE PTR [rax],cl
    3ed1:	00 00                	add    BYTE PTR [rax],al
    3ed3:	00 00                	add    BYTE PTR [rax],al
    3ed5:	00 00                	add    BYTE PTR [rax],al
    3ed7:	00 fb                	add    bl,bh
    3ed9:	ff                   	(bad)  
    3eda:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3edd:	00 00                	add    BYTE PTR [rax],al
    3edf:	00 01                	add    BYTE PTR [rcx],al
    3ee1:	00 00                	add    BYTE PTR [rax],al
    3ee3:	08 00                	or     BYTE PTR [rax],al
    3ee5:	00 00                	add    BYTE PTR [rax],al
    3ee7:	00 fe                	add    dh,bh
    3ee9:	ff                   	(bad)  
    3eea:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3eed:	00 00                	add    BYTE PTR [rax],al
    3eef:	00 68 06             	add    BYTE PTR [rax+0x6],ch
    3ef2:	00 00                	add    BYTE PTR [rax],al
    3ef4:	00 00                	add    BYTE PTR [rax],al
    3ef6:	00 00                	add    BYTE PTR [rax],al
    3ef8:	ff                   	(bad)  
    3ef9:	ff                   	(bad)  
    3efa:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3efd:	00 00                	add    BYTE PTR [rax],al
    3eff:	00 01                	add    BYTE PTR [rcx],al
    3f01:	00 00                	add    BYTE PTR [rax],al
    3f03:	00 00                	add    BYTE PTR [rax],al
    3f05:	00 00                	add    BYTE PTR [rax],al
    3f07:	00 f0                	add    al,dh
    3f09:	ff                   	(bad)  
    3f0a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f0d:	00 00                	add    BYTE PTR [rax],al
    3f0f:	00 40 06             	add    BYTE PTR [rax+0x6],al
    3f12:	00 00                	add    BYTE PTR [rax],al
    3f14:	00 00                	add    BYTE PTR [rax],al
    3f16:	00 00                	add    BYTE PTR [rax],al
    3f18:	f9                   	stc    
    3f19:	ff                   	(bad)  
    3f1a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f1d:	00 00                	add    BYTE PTR [rax],al
    3f1f:	00 03                	add    BYTE PTR [rbx],al
	...

Disassembly of section .got:

0000000000003f78 <_GLOBAL_OFFSET_TABLE_>:
    3f78:	88 3d 00 00 00 00    	mov    BYTE PTR [rip+0x0],bh        # 3f7e <_GLOBAL_OFFSET_TABLE_+0x6>
	...
    3f8e:	00 00                	add    BYTE PTR [rax],al
    3f90:	30 10                	xor    BYTE PTR [rax],dl
    3f92:	00 00                	add    BYTE PTR [rax],al
    3f94:	00 00                	add    BYTE PTR [rax],al
    3f96:	00 00                	add    BYTE PTR [rax],al
    3f98:	40 10 00             	rex adc BYTE PTR [rax],al
    3f9b:	00 00                	add    BYTE PTR [rax],al
    3f9d:	00 00                	add    BYTE PTR [rax],al
    3f9f:	00 50 10             	add    BYTE PTR [rax+0x10],dl
    3fa2:	00 00                	add    BYTE PTR [rax],al
    3fa4:	00 00                	add    BYTE PTR [rax],al
    3fa6:	00 00                	add    BYTE PTR [rax],al
    3fa8:	60                   	(bad)  
    3fa9:	10 00                	adc    BYTE PTR [rax],al
    3fab:	00 00                	add    BYTE PTR [rax],al
    3fad:	00 00                	add    BYTE PTR [rax],al
    3faf:	00 70 10             	add    BYTE PTR [rax+0x10],dh
    3fb2:	00 00                	add    BYTE PTR [rax],al
    3fb4:	00 00                	add    BYTE PTR [rax],al
    3fb6:	00 00                	add    BYTE PTR [rax],al
    3fb8:	80 10 00             	adc    BYTE PTR [rax],0x0
    3fbb:	00 00                	add    BYTE PTR [rax],al
    3fbd:	00 00                	add    BYTE PTR [rax],al
    3fbf:	00 90 10 00 00 00    	add    BYTE PTR [rax+0x10],dl
    3fc5:	00 00                	add    BYTE PTR [rax],al
    3fc7:	00 a0 10 00 00 00    	add    BYTE PTR [rax+0x10],ah
    3fcd:	00 00                	add    BYTE PTR [rax],al
    3fcf:	00 b0 10 00 00 00    	add    BYTE PTR [rax+0x10],dh
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

0000000000004010 <stdout@GLIBC_2.2.5>:
	...

0000000000004020 <stdin@GLIBC_2.2.5>:
	...

0000000000004028 <completed.0>:
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
  12:	30 2d 31 75 62 75    	xor    BYTE PTR [rip+0x75627531],ch        # 75627549 <_end+0x75623519>
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
  10:	49 12 00             	rex.WB adc al,BYTE PTR [r8]
  13:	00 00                	add    BYTE PTR [rax],al
  15:	00 00                	add    BYTE PTR [rax],al
  17:	00 09                	add    BYTE PTR [rcx],cl
  19:	01 00                	add    DWORD PTR [rax],eax
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	f7 03 00 00 05 00    	test   DWORD PTR [rbx],0x50000
   6:	01 08                	add    DWORD PTR [rax],ecx
   8:	00 00                	add    BYTE PTR [rax],al
   a:	00 00                	add    BYTE PTR [rax],al
   c:	0f 20 02             	mov    rdx,cr0
   f:	00 00                	add    BYTE PTR [rax],al
  11:	1d 00 00 00 00       	sbb    eax,0x0
  16:	08 00                	or     BYTE PTR [rax],al
  18:	00 00                	add    BYTE PTR [rax],al
  1a:	49 12 00             	rex.WB adc al,BYTE PTR [r8]
  1d:	00 00                	add    BYTE PTR [rax],al
  1f:	00 00                	add    BYTE PTR [rax],al
  21:	00 09                	add    BYTE PTR [rcx],cl
  23:	01 00                	add    DWORD PTR [rax],eax
	...
  2d:	00 05 20 00 00 00    	add    BYTE PTR [rip+0x20],al        # 53 <__abi_tag-0x339>
  33:	02 d1                	add    dl,cl
  35:	17                   	(bad)  
  36:	3a 00                	cmp    al,BYTE PTR [rax]
  38:	00 00                	add    BYTE PTR [rax],al
  3a:	03 08                	add    ecx,DWORD PTR [rax]
  3c:	07                   	(bad)  
  3d:	cf                   	iret   
  3e:	00 00                	add    BYTE PTR [rax],al
  40:	00 03                	add    BYTE PTR [rbx],al
  42:	04 07                	add    al,0x7
  44:	d4                   	(bad)  
  45:	00 00                	add    BYTE PTR [rax],al
  47:	00 10                	add    BYTE PTR [rax],dl
  49:	08 03                	or     BYTE PTR [rbx],al
  4b:	01 08                	add    DWORD PTR [rax],ecx
  4d:	bc 00 00 00 03       	mov    esp,0x3000000
  52:	02 07                	add    al,BYTE PTR [rdi]
  54:	5e                   	pop    rsi
  55:	01 00                	add    DWORD PTR [rax],eax
  57:	00 03                	add    BYTE PTR [rbx],al
  59:	01 06                	add    DWORD PTR [rsi],eax
  5b:	be 00 00 00 03       	mov    esi,0x3000000
  60:	02 05 16 00 00 00    	add    al,BYTE PTR [rip+0x16]        # 7c <__abi_tag-0x310>
  66:	11 04 05 69 6e 74 00 	adc    DWORD PTR [rax*1+0x746e69],eax
  6d:	03 08                	add    ecx,DWORD PTR [rax]
  6f:	05 87 00 00 00       	add    eax,0x87
  74:	05 ab 01 00 00       	add    eax,0x1ab
  79:	03 98 19 6d 00 00    	add    ebx,DWORD PTR [rax+0x6d19]
  7f:	00 05 fd 00 00 00    	add    BYTE PTR [rip+0xfd],al        # 182 <__abi_tag-0x20a>
  85:	03 99 1b 6d 00 00    	add    ebx,DWORD PTR [rcx+0x6d1b]
  8b:	00 05 27 00 00 00    	add    BYTE PTR [rip+0x27],al        # b8 <__abi_tag-0x2d4>
  91:	03 9a 19 66 00 00    	add    ebx,DWORD PTR [rdx+0x6619]
  97:	00 05 7f 01 00 00    	add    BYTE PTR [rip+0x17f],al        # 21c <__abi_tag-0x170>
  9d:	03 a0 1a 6d 00 00    	add    esp,DWORD PTR [rax+0x6d1a]
  a3:	00 04 ae             	add    BYTE PTR [rsi+rbp*4],al
  a6:	00 00                	add    BYTE PTR [rax],al
  a8:	00 06                	add    BYTE PTR [rsi],al
  aa:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  ab:	00 00                	add    BYTE PTR [rax],al
  ad:	00 03                	add    BYTE PTR [rbx],al
  af:	01 06                	add    DWORD PTR [rsi],eax
  b1:	c5 00 00             	(bad)
  b4:	00 12                	add    BYTE PTR [rdx],dl
  b6:	ae                   	scas   al,BYTE PTR es:[rdi]
  b7:	00 00                	add    BYTE PTR [rax],al
  b9:	00 13                	add    BYTE PTR [rbx],dl
  bb:	00 00                	add    BYTE PTR [rax],al
  bd:	00 00                	add    BYTE PTR [rax],al
  bf:	d8 04 31             	fadd   DWORD PTR [rcx+rsi*1]
  c2:	08 24 02             	or     BYTE PTR [rdx+rax*1],ah
  c5:	00 00                	add    BYTE PTR [rax],al
  c7:	01 3d 00 00 00 33    	add    DWORD PTR [rip+0x33000000],edi        # 330000cd <_end+0x32ffc09d>
  cd:	07                   	(bad)  
  ce:	66 00 00             	data16 add BYTE PTR [rax],al
  d1:	00 00                	add    BYTE PTR [rax],al
  d3:	01 1b                	add    DWORD PTR [rbx],ebx
  d5:	01 00                	add    DWORD PTR [rax],eax
  d7:	00 36                	add    BYTE PTR [rsi],dh
  d9:	09 a4 00 00 00 08 01 	or     DWORD PTR [rax+rax*1+0x1080000],esp
  e0:	5a                   	pop    rdx
  e1:	00 00                	add    BYTE PTR [rax],al
  e3:	00 37                	add    BYTE PTR [rdi],dh
  e5:	09 a4 00 00 00 10 01 	or     DWORD PTR [rax+rax*1+0x1100000],esp
  ec:	dd 01                	fld    QWORD PTR [rcx]
  ee:	00 00                	add    BYTE PTR [rax],al
  f0:	38 09                	cmp    BYTE PTR [rcx],cl
  f2:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  f3:	00 00                	add    BYTE PTR [rax],al
  f5:	00 18                	add    BYTE PTR [rax],bl
  f7:	01 07                	add    DWORD PTR [rdi],eax
  f9:	01 00                	add    DWORD PTR [rax],eax
  fb:	00 39                	add    BYTE PTR [rcx],bh
  fd:	09 a4 00 00 00 20 01 	or     DWORD PTR [rax+rax*1+0x1200000],esp
 104:	2f                   	(bad)  
 105:	00 00                	add    BYTE PTR [rax],al
 107:	00 3a                	add    BYTE PTR [rdx],bh
 109:	09 a4 00 00 00 28 01 	or     DWORD PTR [rax+rax*1+0x1280000],esp
 110:	71 01                	jno    113 <__abi_tag-0x279>
 112:	00 00                	add    BYTE PTR [rax],al
 114:	3b 09                	cmp    ecx,DWORD PTR [rcx]
 116:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
 117:	00 00                	add    BYTE PTR [rax],al
 119:	00 30                	add    BYTE PTR [rax],dh
 11b:	01 44 00 00          	add    DWORD PTR [rax+rax*1+0x0],eax
 11f:	00 3c 09             	add    BYTE PTR [rcx+rcx*1],bh
 122:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
 123:	00 00                	add    BYTE PTR [rax],al
 125:	00 38                	add    BYTE PTR [rax],bh
 127:	01 28                	add    DWORD PTR [rax],ebp
 129:	01 00                	add    DWORD PTR [rax],eax
 12b:	00 3d 09 a4 00 00    	add    BYTE PTR [rip+0xa409],bh        # a53a <_end+0x650a>
 131:	00 40 01             	add    BYTE PTR [rax+0x1],al
 134:	fa                   	cli    
 135:	01 00                	add    DWORD PTR [rax],eax
 137:	00 40 09             	add    BYTE PTR [rax+0x9],al
 13a:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
 13b:	00 00                	add    BYTE PTR [rax],al
 13d:	00 48 01             	add    BYTE PTR [rax+0x1],cl
 140:	b3 01                	mov    bl,0x1
 142:	00 00                	add    BYTE PTR [rax],al
 144:	41 09 a4 00 00 00 50 	or     DWORD PTR [r8+rax*1+0x1500000],esp
 14b:	01 
 14c:	09 00                	or     DWORD PTR [rax],eax
 14e:	00 00                	add    BYTE PTR [rax],al
 150:	42 09 a4 00 00 00 58 	or     DWORD PTR [rax+r8*1+0x1580000],esp
 157:	01 
 158:	51                   	push   rcx
 159:	00 00                	add    BYTE PTR [rax],al
 15b:	00 44 16 3d          	add    BYTE PTR [rsi+rdx*1+0x3d],al
 15f:	02 00                	add    al,BYTE PTR [rax]
 161:	00 60 01             	add    BYTE PTR [rax+0x1],ah
 164:	90                   	nop
 165:	01 00                	add    DWORD PTR [rax],eax
 167:	00 46 14             	add    BYTE PTR [rsi+0x14],al
 16a:	42 02 00             	rex.X add al,BYTE PTR [rax]
 16d:	00 68 01             	add    BYTE PTR [rax+0x1],ch
 170:	88 01                	mov    BYTE PTR [rcx],al
 172:	00 00                	add    BYTE PTR [rax],al
 174:	48 07                	rex.W (bad) 
 176:	66 00 00             	data16 add BYTE PTR [rax],al
 179:	00 70 01             	add    BYTE PTR [rax+0x1],dh
 17c:	c9                   	leave  
 17d:	01 00                	add    DWORD PTR [rax],eax
 17f:	00 49 07             	add    BYTE PTR [rcx+0x7],cl
 182:	66 00 00             	data16 add BYTE PTR [rax],al
 185:	00 74 01 b0          	add    BYTE PTR [rcx+rax*1-0x50],dh
 189:	00 00                	add    BYTE PTR [rax],al
 18b:	00 4a 0b             	add    BYTE PTR [rdx+0xb],cl
 18e:	74 00                	je     190 <__abi_tag-0x1fc>
 190:	00 00                	add    BYTE PTR [rax],al
 192:	78 01                	js     195 <__abi_tag-0x1f7>
 194:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
 195:	00 00                	add    BYTE PTR [rax],al
 197:	00 4d 12             	add    BYTE PTR [rbp+0x12],cl
 19a:	51                   	push   rcx
 19b:	00 00                	add    BYTE PTR [rax],al
 19d:	00 80 01 eb 01 00    	add    BYTE PTR [rax+0x1eb01],al
 1a3:	00 4e 0f             	add    BYTE PTR [rsi+0xf],cl
 1a6:	58                   	pop    rax
 1a7:	00 00                	add    BYTE PTR [rax],al
 1a9:	00 82 01 e1 00 00    	add    BYTE PTR [rdx+0xe101],al
 1af:	00 4f 08             	add    BYTE PTR [rdi+0x8],cl
 1b2:	47 02 00             	rex.RXB add r8b,BYTE PTR [r8]
 1b5:	00 83 01 90 00 00    	add    BYTE PTR [rbx+0x9001],al
 1bb:	00 51 0f             	add    BYTE PTR [rcx+0xf],dl
 1be:	57                   	push   rdi
 1bf:	02 00                	add    al,BYTE PTR [rax]
 1c1:	00 88 01 b4 00 00    	add    BYTE PTR [rax+0xb401],cl
 1c7:	00 59 0d             	add    BYTE PTR [rcx+0xd],bl
 1ca:	80 00 00             	add    BYTE PTR [rax],0x0
 1cd:	00 90 01 d4 01 00    	add    BYTE PTR [rax+0x1d401],dl
 1d3:	00 5b 17             	add    BYTE PTR [rbx+0x17],bl
 1d6:	61                   	(bad)  
 1d7:	02 00                	add    al,BYTE PTR [rax]
 1d9:	00 98 01 9a 01 00    	add    BYTE PTR [rax+0x19a01],bl
 1df:	00 5c 19 6b          	add    BYTE PTR [rcx+rbx*1+0x6b],bl
 1e3:	02 00                	add    al,BYTE PTR [rax]
 1e5:	00 a0 01 39 01 00    	add    BYTE PTR [rax+0x13901],ah
 1eb:	00 5d 14             	add    BYTE PTR [rbp+0x14],bl
 1ee:	42 02 00             	rex.X add al,BYTE PTR [rax]
 1f1:	00 a8 01 67 00 00    	add    BYTE PTR [rax+0x6701],ch
 1f7:	00 5e 09             	add    BYTE PTR [rsi+0x9],bl
 1fa:	48 00 00             	rex.W add BYTE PTR [rax],al
 1fd:	00 b0 01 57 01 00    	add    BYTE PTR [rax+0x15701],dh
 203:	00 5f 0a             	add    BYTE PTR [rdi+0xa],bl
 206:	2e 00 00             	cs add BYTE PTR [rax],al
 209:	00 b8 01 a5 01 00    	add    BYTE PTR [rax+0x1a501],bh
 20f:	00 60 07             	add    BYTE PTR [rax+0x7],ah
 212:	66 00 00             	data16 add BYTE PTR [rax],al
 215:	00 c0                	add    al,al
 217:	01 4e 01             	add    DWORD PTR [rsi+0x1],ecx
 21a:	00 00                	add    BYTE PTR [rax],al
 21c:	62                   	(bad)  
 21d:	08 70 02             	or     BYTE PTR [rax+0x2],dh
 220:	00 00                	add    BYTE PTR [rax],al
 222:	c4                   	(bad)  
 223:	00 05 04 00 00 00    	add    BYTE PTR [rip+0x4],al        # 22d <__abi_tag-0x15f>
 229:	05 07 19 ba 00       	add    eax,0xba1907
 22e:	00 00                	add    BYTE PTR [rax],al
 230:	14 15                	adc    al,0x15
 232:	02 00                	add    al,BYTE PTR [rax]
 234:	00 04 2b             	add    BYTE PTR [rbx+rbp*1],al
 237:	0e                   	(bad)  
 238:	07                   	(bad)  
 239:	eb 00                	jmp    23b <__abi_tag-0x151>
 23b:	00 00                	add    BYTE PTR [rax],al
 23d:	04 38                	add    al,0x38
 23f:	02 00                	add    al,BYTE PTR [rax]
 241:	00 04 ba             	add    BYTE PTR [rdx+rdi*4],al
 244:	00 00                	add    BYTE PTR [rax],al
 246:	00 0a                	add    BYTE PTR [rdx],cl
 248:	ae                   	scas   al,BYTE PTR es:[rdi]
 249:	00 00                	add    BYTE PTR [rax],al
 24b:	00 57 02             	add    BYTE PTR [rdi+0x2],dl
 24e:	00 00                	add    BYTE PTR [rax],al
 250:	08 3a                	or     BYTE PTR [rdx],bh
 252:	00 00                	add    BYTE PTR [rax],al
 254:	00 00                	add    BYTE PTR [rax],al
 256:	00 04 30             	add    BYTE PTR [rax+rsi*1],al
 259:	02 00                	add    al,BYTE PTR [rax]
 25b:	00 07                	add    BYTE PTR [rdi],al
 25d:	d1 01                	rol    DWORD PTR [rcx],1
 25f:	00 00                	add    BYTE PTR [rax],al
 261:	04 5c                	add    al,0x5c
 263:	02 00                	add    al,BYTE PTR [rax]
 265:	00 07                	add    BYTE PTR [rdi],al
 267:	97                   	xchg   edi,eax
 268:	01 00                	add    DWORD PTR [rax],eax
 26a:	00 04 66             	add    BYTE PTR [rsi+riz*2],al
 26d:	02 00                	add    al,BYTE PTR [rax]
 26f:	00 0a                	add    BYTE PTR [rdx],cl
 271:	ae                   	scas   al,BYTE PTR es:[rdi]
 272:	00 00                	add    BYTE PTR [rax],al
 274:	00 80 02 00 00 08    	add    BYTE PTR [rax+0x8000002],al
 27a:	3a 00                	cmp    al,BYTE PTR [rax]
 27c:	00 00                	add    BYTE PTR [rax],al
 27e:	13 00                	adc    eax,DWORD PTR [rax]
 280:	0b c3                	or     eax,ebx
 282:	01 00                	add    DWORD PTR [rax],eax
 284:	00 8f 8a 02 00 00    	add    BYTE PTR [rdi+0x28a],cl
 28a:	04 24                	add    al,0x24
 28c:	02 00                	add    al,BYTE PTR [rax]
 28e:	00 06                	add    BYTE PTR [rsi],al
 290:	8a 02                	mov    al,BYTE PTR [rdx]
 292:	00 00                	add    BYTE PTR [rax],al
 294:	0b 0e                	or     ecx,DWORD PTR [rsi]
 296:	02 00                	add    al,BYTE PTR [rax]
 298:	00 90 8a 02 00 00    	add    BYTE PTR [rax+0x28a],dl
 29e:	03 08                	add    ecx,DWORD PTR [rax]
 2a0:	05 82 00 00 00       	add    eax,0x82
 2a5:	05 81 01 00 00       	add    eax,0x181
 2aa:	07                   	(bad)  
 2ab:	0a 12                	or     dl,BYTE PTR [rdx]
 2ad:	98                   	cwde   
 2ae:	00 00                	add    BYTE PTR [rax],al
 2b0:	00 03                	add    BYTE PTR [rbx],al
 2b2:	08 07                	or     BYTE PTR [rdi],al
 2b4:	ca 00 00             	retf   0x0
 2b7:	00 04 b5 00 00 00 06 	add    BYTE PTR [rsi*4+0x6000000],al
 2be:	b8 02 00 00 04       	mov    eax,0x4000002
 2c3:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
 2c4:	00 00                	add    BYTE PTR [rax],al
 2c6:	00 06                	add    BYTE PTR [rsi],al
 2c8:	c2 02 00             	ret    0x2
 2cb:	00 0c 9d 00 00 00 08 	add    BYTE PTR [rbx*4+0x8000000],cl
 2d2:	b1 11                	mov    cl,0x11
 2d4:	6d                   	ins    DWORD PTR es:[rdi],dx
 2d5:	00 00                	add    BYTE PTR [rax],al
 2d7:	00 ec                	add    ah,ch
 2d9:	02 00                	add    al,BYTE PTR [rax]
 2db:	00 02                	add    BYTE PTR [rdx],al
 2dd:	bd 02 00 00 02       	mov    ebp,0x2000002
 2e2:	c7 02 00 00 02 66    	mov    DWORD PTR [rdx],0x66020000
 2e8:	00 00                	add    BYTE PTR [rax],al
 2ea:	00 00                	add    BYTE PTR [rax],al
 2ec:	09 74 00 00          	or     DWORD PTR [rax+rax*1+0x0],esi
 2f0:	00 50 02             	add    BYTE PTR [rax+0x2],dl
 2f3:	0e                   	(bad)  
 2f4:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
 2f5:	00 00                	add    BYTE PTR [rax],al
 2f7:	00 0c 03             	add    BYTE PTR [rbx+rax*1],cl
 2fa:	00 00                	add    BYTE PTR [rax],al
 2fc:	02 a9 00 00 00 02    	add    ch,BYTE PTR [rcx+0x2000000]
 302:	66 00 00             	data16 add BYTE PTR [rax],al
 305:	00 02                	add    BYTE PTR [rdx],al
 307:	8f 02                	pop    QWORD PTR [rdx]
 309:	00 00                	add    BYTE PTR [rax],al
 30b:	00 09                	add    BYTE PTR [rcx],cl
 30d:	96                   	xchg   esi,eax
 30e:	00 00                	add    BYTE PTR [rax],al
 310:	00 64 01 0c          	add    BYTE PTR [rcx+rax*1+0xc],ah
 314:	66 00 00             	data16 add BYTE PTR [rax],al
 317:	00 23                	add    BYTE PTR [rbx],ah
 319:	03 00                	add    eax,DWORD PTR [rax]
 31b:	00 02                	add    BYTE PTR [rdx],al
 31d:	b8 02 00 00 15       	mov    eax,0x15000002
 322:	00 0d 09 02 00 00    	add    BYTE PTR [rip+0x209],cl        # 531 <__abi_tag+0x1a5>
 328:	08 c6                	or     dh,al
 32a:	01 0c 66             	add    DWORD PTR [rsi+riz*2],ecx
 32d:	00 00                	add    BYTE PTR [rax],al
 32f:	00 16                	add    BYTE PTR [rsi],dl
 331:	08 02                	or     BYTE PTR [rdx],al
 333:	00 00                	add    BYTE PTR [rax],al
 335:	08 c8                	or     al,cl
 337:	01 0d 43 03 00 00    	add    DWORD PTR [rip+0x343],ecx        # 680 <__abi_tag+0x2f4>
 33d:	02 41 00             	add    al,BYTE PTR [rcx+0x0]
 340:	00 00                	add    BYTE PTR [rax],al
 342:	00 0d f6 00 00 00    	add    BYTE PTR [rip+0xf6],cl        # 43e <__abi_tag+0xb2>
 348:	09 8a 02 10 8c 00    	or     DWORD PTR [rdx+0x8c1002],ecx
 34e:	00 00                	add    BYTE PTR [rax],al
 350:	0c 16                	or     al,0x16
 352:	01 00                	add    DWORD PTR [rax],eax
 354:	00 0a                	add    BYTE PTR [rdx],cl
 356:	4c 0f a5 02          	shld   QWORD PTR [rdx],r8,cl
 35a:	00 00                	add    BYTE PTR [rax],al
 35c:	66 03 00             	add    ax,WORD PTR [rax]
 35f:	00 02                	add    BYTE PTR [rdx],al
 361:	66 03 00             	add    ax,WORD PTR [rax]
 364:	00 00                	add    BYTE PTR [rax],al
 366:	04 a5                	add    al,0xa5
 368:	02 00                	add    al,BYTE PTR [rax]
 36a:	00 09                	add    BYTE PTR [rcx],cl
 36c:	7a 00                	jp     36e <__abi_tag-0x1e>
 36e:	00 00                	add    BYTE PTR [rax],al
 370:	4c 01 0c 66          	add    QWORD PTR [rsi+riz*2],r9
 374:	00 00                	add    BYTE PTR [rax],al
 376:	00 90 03 00 00 02    	add    BYTE PTR [rax+0x2000003],dl
 37c:	8f 02                	pop    QWORD PTR [rdx]
 37e:	00 00                	add    BYTE PTR [rax],al
 380:	02 a9 00 00 00 02    	add    ch,BYTE PTR [rcx+0x2000000]
 386:	66 00 00             	data16 add BYTE PTR [rax],al
 389:	00 02                	add    BYTE PTR [rdx],al
 38b:	2e 00 00             	cs add BYTE PTR [rax],al
 38e:	00 00                	add    BYTE PTR [rax],al
 390:	17                   	(bad)  
 391:	34 01                	xor    al,0x1
 393:	00 00                	add    BYTE PTR [rax],al
 395:	01 07                	add    DWORD PTR [rdi],eax
 397:	05 66 00 00 00       	add    eax,0x66
 39c:	49 12 00             	rex.WB adc al,BYTE PTR [r8]
 39f:	00 00                	add    BYTE PTR [rax],al
 3a1:	00 00                	add    BYTE PTR [rax],al
 3a3:	00 09                	add    BYTE PTR [rcx],cl
 3a5:	01 00                	add    DWORD PTR [rax],eax
 3a7:	00 00                	add    BYTE PTR [rax],al
 3a9:	00 00                	add    BYTE PTR [rax],al
 3ab:	00 01                	add    BYTE PTR [rcx],al
 3ad:	9c                   	pushf  
 3ae:	ee                   	out    dx,al
 3af:	03 00                	add    eax,DWORD PTR [rax]
 3b1:	00 0e                	add    BYTE PTR [rsi],cl
 3b3:	62 75 66 00 08       	(bad)
 3b8:	07                   	(bad)  
 3b9:	ee                   	out    dx,al
 3ba:	03 00                	add    eax,DWORD PTR [rax]
 3bc:	00 02                	add    BYTE PTR [rdx],al
 3be:	91                   	xchg   ecx,eax
 3bf:	40 18 47 01          	rex sbb BYTE PTR [rdi+0x1],al
 3c3:	00 00                	add    BYTE PTR [rax],al
 3c5:	01 09                	add    DWORD PTR [rcx],ecx
 3c7:	06                   	(bad)  
 3c8:	66 00 00             	data16 add BYTE PTR [rax],al
 3cb:	00 02                	add    BYTE PTR [rdx],al
 3cd:	91                   	xchg   ecx,eax
 3ce:	5c                   	pop    rsp
 3cf:	19 ed                	sbb    ebp,ebp
 3d1:	12 00                	adc    al,BYTE PTR [rax]
 3d3:	00 00                	add    BYTE PTR [rax],al
 3d5:	00 00                	add    BYTE PTR [rax],al
 3d7:	00 5a 00             	add    BYTE PTR [rdx+0x0],bl
 3da:	00 00                	add    BYTE PTR [rax],al
 3dc:	00 00                	add    BYTE PTR [rax],al
 3de:	00 00                	add    BYTE PTR [rax],al
 3e0:	0e                   	(bad)  
 3e1:	67 00 11             	add    BYTE PTR [ecx],dl
 3e4:	08 66 00             	or     BYTE PTR [rsi+0x0],ah
 3e7:	00 00                	add    BYTE PTR [rax],al
 3e9:	02 91 58 00 00 1a    	add    dl,BYTE PTR [rcx+0x1a000058]
 3ef:	ae                   	scas   al,BYTE PTR es:[rdi]
 3f0:	00 00                	add    BYTE PTR [rax],al
 3f2:	00 08                	add    BYTE PTR [rax],cl
 3f4:	3a 00                	cmp    al,BYTE PTR [rax]
 3f6:	00 00                	add    BYTE PTR [rax],al
 3f8:	0f 00 00             	sldt   WORD PTR [rax]

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 0d 00 03 0e 3a    	add    DWORD PTR [rip+0x3a0e0300],ecx        # 3a0e0306 <_end+0x3a0dc2d6>
   6:	21 04 3b             	and    DWORD PTR [rbx+rdi*1],eax
   9:	0b 39                	or     edi,DWORD PTR [rcx]
   b:	0b 49 13             	or     ecx,DWORD PTR [rcx+0x13]
   e:	38 0b                	cmp    BYTE PTR [rbx],cl
  10:	00 00                	add    BYTE PTR [rax],al
  12:	02 05 00 49 13 00    	add    al,BYTE PTR [rip+0x134900]        # 134918 <_end+0x1308e8>
  18:	00 03                	add    BYTE PTR [rbx],al
  1a:	24 00                	and    al,0x0
  1c:	0b 0b                	or     ecx,DWORD PTR [rbx]
  1e:	3e 0b 03             	ds or  eax,DWORD PTR [rbx]
  21:	0e                   	(bad)  
  22:	00 00                	add    BYTE PTR [rax],al
  24:	04 0f                	add    al,0xf
  26:	00 0b                	add    BYTE PTR [rbx],cl
  28:	21 08                	and    DWORD PTR [rax],ecx
  2a:	49 13 00             	adc    rax,QWORD PTR [r8]
  2d:	00 05 16 00 03 0e    	add    BYTE PTR [rip+0xe030016],al        # e030049 <_end+0xe02c019>
  33:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  35:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  37:	39 0b                	cmp    DWORD PTR [rbx],ecx
  39:	49 13 00             	adc    rax,QWORD PTR [r8]
  3c:	00 06                	add    BYTE PTR [rsi],al
  3e:	37                   	(bad)  
  3f:	00 49 13             	add    BYTE PTR [rcx+0x13],cl
  42:	00 00                	add    BYTE PTR [rax],al
  44:	07                   	(bad)  
  45:	13 00                	adc    eax,DWORD PTR [rax]
  47:	03 0e                	add    ecx,DWORD PTR [rsi]
  49:	3c 19                	cmp    al,0x19
  4b:	00 00                	add    BYTE PTR [rax],al
  4d:	08 21                	or     BYTE PTR [rcx],ah
  4f:	00 49 13             	add    BYTE PTR [rcx+0x13],cl
  52:	2f                   	(bad)  
  53:	0b 00                	or     eax,DWORD PTR [rax]
  55:	00 09                	add    BYTE PTR [rcx],cl
  57:	2e 01 3f             	cs add DWORD PTR [rdi],edi
  5a:	19 03                	sbb    DWORD PTR [rbx],eax
  5c:	0e                   	(bad)  
  5d:	3a 21                	cmp    ah,BYTE PTR [rcx]
  5f:	06                   	(bad)  
  60:	3b 05 39 0b 27 19    	cmp    eax,DWORD PTR [rip+0x19270b39]        # 19270b9f <_end+0x1926cb6f>
  66:	49 13 3c 19          	adc    rdi,QWORD PTR [r9+rbx*1]
  6a:	01 13                	add    DWORD PTR [rbx],edx
  6c:	00 00                	add    BYTE PTR [rax],al
  6e:	0a 01                	or     al,BYTE PTR [rcx]
  70:	01 49 13             	add    DWORD PTR [rcx+0x13],ecx
  73:	01 13                	add    DWORD PTR [rbx],edx
  75:	00 00                	add    BYTE PTR [rax],al
  77:	0b 34 00             	or     esi,DWORD PTR [rax+rax*1]
  7a:	03 0e                	add    ecx,DWORD PTR [rsi]
  7c:	3a 21                	cmp    ah,BYTE PTR [rcx]
  7e:	06                   	(bad)  
  7f:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  81:	39 21                	cmp    DWORD PTR [rcx],esp
  83:	0e                   	(bad)  
  84:	49 13 3f             	adc    rdi,QWORD PTR [r15]
  87:	19 3c 19             	sbb    DWORD PTR [rcx+rbx*1],edi
  8a:	00 00                	add    BYTE PTR [rax],al
  8c:	0c 2e                	or     al,0x2e
  8e:	01 3f                	add    DWORD PTR [rdi],edi
  90:	19 03                	sbb    DWORD PTR [rbx],eax
  92:	0e                   	(bad)  
  93:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  95:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  97:	39 0b                	cmp    DWORD PTR [rbx],ecx
  99:	27                   	(bad)  
  9a:	19 49 13             	sbb    DWORD PTR [rcx+0x13],ecx
  9d:	3c 19                	cmp    al,0x19
  9f:	01 13                	add    DWORD PTR [rbx],edx
  a1:	00 00                	add    BYTE PTR [rax],al
  a3:	0d 2e 00 3f 19       	or     eax,0x193f002e
  a8:	03 0e                	add    ecx,DWORD PTR [rsi]
  aa:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  ac:	3b 05 39 0b 27 19    	cmp    eax,DWORD PTR [rip+0x19270b39]        # 19270beb <_end+0x1926cbbb>
  b2:	49 13 3c 19          	adc    rdi,QWORD PTR [r9+rbx*1]
  b6:	00 00                	add    BYTE PTR [rax],al
  b8:	0e                   	(bad)  
  b9:	34 00                	xor    al,0x0
  bb:	03 08                	add    ecx,DWORD PTR [rax]
  bd:	3a 21                	cmp    ah,BYTE PTR [rcx]
  bf:	01 3b                	add    DWORD PTR [rbx],edi
  c1:	0b 39                	or     edi,DWORD PTR [rcx]
  c3:	0b 49 13             	or     ecx,DWORD PTR [rcx+0x13]
  c6:	02 18                	add    bl,BYTE PTR [rax]
  c8:	00 00                	add    BYTE PTR [rax],al
  ca:	0f 11 01             	movups XMMWORD PTR [rcx],xmm0
  cd:	25 0e 13 0b 03       	and    eax,0x30b130e
  d2:	1f                   	(bad)  
  d3:	1b 1f                	sbb    ebx,DWORD PTR [rdi]
  d5:	11 01                	adc    DWORD PTR [rcx],eax
  d7:	12 07                	adc    al,BYTE PTR [rdi]
  d9:	10 17                	adc    BYTE PTR [rdi],dl
  db:	00 00                	add    BYTE PTR [rax],al
  dd:	10 0f                	adc    BYTE PTR [rdi],cl
  df:	00 0b                	add    BYTE PTR [rbx],cl
  e1:	0b 00                	or     eax,DWORD PTR [rax]
  e3:	00 11                	add    BYTE PTR [rcx],dl
  e5:	24 00                	and    al,0x0
  e7:	0b 0b                	or     ecx,DWORD PTR [rbx]
  e9:	3e 0b 03             	ds or  eax,DWORD PTR [rbx]
  ec:	08 00                	or     BYTE PTR [rax],al
  ee:	00 12                	add    BYTE PTR [rdx],dl
  f0:	26 00 49 13          	es add BYTE PTR [rcx+0x13],cl
  f4:	00 00                	add    BYTE PTR [rax],al
  f6:	13 13                	adc    edx,DWORD PTR [rbx]
  f8:	01 03                	add    DWORD PTR [rbx],eax
  fa:	0e                   	(bad)  
  fb:	0b 0b                	or     ecx,DWORD PTR [rbx]
  fd:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  ff:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 101:	39 0b                	cmp    DWORD PTR [rbx],ecx
 103:	01 13                	add    DWORD PTR [rbx],edx
 105:	00 00                	add    BYTE PTR [rax],al
 107:	14 16                	adc    al,0x16
 109:	00 03                	add    BYTE PTR [rbx],al
 10b:	0e                   	(bad)  
 10c:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 10e:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 110:	39 0b                	cmp    DWORD PTR [rbx],ecx
 112:	00 00                	add    BYTE PTR [rax],al
 114:	15 18 00 00 00       	adc    eax,0x18
 119:	16                   	(bad)  
 11a:	2e 01 3f             	cs add DWORD PTR [rdi],edi
 11d:	19 03                	sbb    DWORD PTR [rbx],eax
 11f:	0e                   	(bad)  
 120:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 122:	3b 05 39 0b 27 19    	cmp    eax,DWORD PTR [rip+0x19270b39]        # 19270c61 <_end+0x1926cc31>
 128:	3c 19                	cmp    al,0x19
 12a:	01 13                	add    DWORD PTR [rbx],edx
 12c:	00 00                	add    BYTE PTR [rax],al
 12e:	17                   	(bad)  
 12f:	2e 01 3f             	cs add DWORD PTR [rdi],edi
 132:	19 03                	sbb    DWORD PTR [rbx],eax
 134:	0e                   	(bad)  
 135:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 137:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 139:	39 0b                	cmp    DWORD PTR [rbx],ecx
 13b:	49 13 11             	adc    rdx,QWORD PTR [r9]
 13e:	01 12                	add    DWORD PTR [rdx],edx
 140:	07                   	(bad)  
 141:	40 18 7c 19 01       	sbb    BYTE PTR [rcx+rbx*1+0x1],dil
 146:	13 00                	adc    eax,DWORD PTR [rax]
 148:	00 18                	add    BYTE PTR [rax],bl
 14a:	34 00                	xor    al,0x0
 14c:	03 0e                	add    ecx,DWORD PTR [rsi]
 14e:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 150:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 152:	39 0b                	cmp    DWORD PTR [rbx],ecx
 154:	49 13 02             	adc    rax,QWORD PTR [r10]
 157:	18 00                	sbb    BYTE PTR [rax],al
 159:	00 19                	add    BYTE PTR [rcx],bl
 15b:	0b 01                	or     eax,DWORD PTR [rcx]
 15d:	11 01                	adc    DWORD PTR [rcx],eax
 15f:	12 07                	adc    al,BYTE PTR [rdi]
 161:	00 00                	add    BYTE PTR [rax],al
 163:	1a 01                	sbb    al,BYTE PTR [rcx]
 165:	01 49 13             	add    DWORD PTR [rcx+0x13],ecx
 168:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	bf 00 00 00 05       	mov    edi,0x5000000
   5:	00 08                	add    BYTE PTR [rax],cl
   7:	00 67 00             	add    BYTE PTR [rdi+0x0],ah
   a:	00 00                	add    BYTE PTR [rax],al
   c:	01 01                	add    DWORD PTR [rcx],eax
   e:	01 fb                	add    ebx,edi
  10:	0e                   	(bad)  
  11:	0d 00 01 01 01       	or     eax,0x1010100
  16:	01 00                	add    DWORD PTR [rax],eax
  18:	00 00                	add    BYTE PTR [rax],al
  1a:	01 00                	add    DWORD PTR [rax],eax
  1c:	00 01                	add    BYTE PTR [rcx],al
  1e:	01 01                	add    DWORD PTR [rcx],eax
  20:	1f                   	(bad)  
  21:	05 08 00 00 00       	add    eax,0x8
  26:	2c 00                	sub    al,0x0
  28:	00 00                	add    BYTE PTR [rax],al
  2a:	55                   	push   rbp
  2b:	00 00                	add    BYTE PTR [rax],al
  2d:	00 78 00             	add    BYTE PTR [rax+0x0],bh
  30:	00 00                	add    BYTE PTR [rax],al
  32:	a1 00 00 00 02 01 1f 	movabs eax,ds:0xf021f0102000000
  39:	02 0f 
  3b:	0b 00                	or     eax,DWORD PTR [rax]
	...
  45:	00 ae 00 00 00 01    	add    BYTE PTR [rsi+0x1000000],ch
  4b:	b7 00                	mov    bh,0x0
  4d:	00 00                	add    BYTE PTR [rax],al
  4f:	02 bf 00 00 00 03    	add    bh,BYTE PTR [rdi+0x3000000]
  55:	c6 00 00             	mov    BYTE PTR [rax],0x0
  58:	00 03                	add    BYTE PTR [rbx],al
  5a:	cd 00                	int    0x0
  5c:	00 00                	add    BYTE PTR [rax],al
  5e:	04 d5                	add    al,0xd5
  60:	00 00                	add    BYTE PTR [rax],al
  62:	00 03                	add    BYTE PTR [rbx],al
  64:	de 00                	fiadd  WORD PTR [rax]
  66:	00 00                	add    BYTE PTR [rax],al
  68:	04 e7                	add    al,0xe7
  6a:	00 00                	add    BYTE PTR [rax],al
  6c:	00 04 f0             	add    BYTE PTR [rax+rsi*8],al
  6f:	00 00                	add    BYTE PTR [rax],al
  71:	00 04 05 0c 00 09 02 	add    BYTE PTR [rax*1+0x209000c],al
  78:	49 12 00             	rex.WB adc al,BYTE PTR [r8]
  7b:	00 00                	add    BYTE PTR [rax],al
  7d:	00 00                	add    BYTE PTR [rax],al
  7f:	00 18                	add    BYTE PTR [rax],bl
  81:	05 02 cc 05 08       	add    eax,0x805cc02
  86:	08 c9                	or     cl,cl
  88:	05 10 9e 05 12       	add    eax,0x12059e10
  8d:	2e 05 10 58 05 02    	cs add eax,0x2055810
  93:	2e 05 0b 75 05 09    	cs add eax,0x905750b
  99:	58                   	pop    rax
  9a:	05 02 02 29 14       	add    eax,0x14290202
  9f:	05 05 08 3d 05       	add    eax,0x53d0805
  a4:	04 08                	add    al,0x8
  a6:	74 05                	je     ad <__abi_tag-0x2df>
  a8:	0c 59                	or     al,0x59
  aa:	05 08 08 58 05       	add    eax,0x5580808
  af:	04 3d                	add    al,0x3d
  b1:	05 06 08 83 83       	add    eax,0x83830806
  b6:	08 14 05 09 e8 05 01 	or     BYTE PTR [rax*1+0x105e809],dl
  bd:	59                   	pop    rcx
  be:	02 06                	add    al,BYTE PTR [rsi]
  c0:	00 01                	add    BYTE PTR [rcx],al
  c2:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	5f                   	pop    rdi
   1:	49                   	rex.WB
   2:	4f 5f                	rex.WRXB pop r15
   4:	46                   	rex.RX
   5:	49                   	rex.WB
   6:	4c                   	rex.WR
   7:	45 00 5f 49          	add    BYTE PTR [r15+0x49],r11b
   b:	4f 5f                	rex.WRXB pop r15
   d:	73 61                	jae    70 <__abi_tag-0x31c>
   f:	76 65                	jbe    76 <__abi_tag-0x316>
  11:	5f                   	pop    rdi
  12:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  14:	64 00 73 68          	add    BYTE PTR fs:[rbx+0x68],dh
  18:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  19:	72 74                	jb     8f <__abi_tag-0x2fd>
  1b:	20 69 6e             	and    BYTE PTR [rcx+0x6e],ch
  1e:	74 00                	je     20 <__abi_tag-0x36c>
  20:	73 69                	jae    8b <__abi_tag-0x301>
  22:	7a 65                	jp     89 <__abi_tag-0x303>
  24:	5f                   	pop    rdi
  25:	74 00                	je     27 <__abi_tag-0x365>
  27:	5f                   	pop    rdi
  28:	5f                   	pop    rdi
  29:	70 69                	jo     94 <__abi_tag-0x2f8>
  2b:	64 5f                	fs pop rdi
  2d:	74 00                	je     2f <__abi_tag-0x35d>
  2f:	5f                   	pop    rdi
  30:	49                   	rex.WB
  31:	4f 5f                	rex.WRXB pop r15
  33:	77 72                	ja     a7 <__abi_tag-0x2e5>
  35:	69 74 65 5f 70 74 72 	imul   esi,DWORD PTR [rbp+riz*2+0x5f],0x727470
  3c:	00 
  3d:	5f                   	pop    rdi
  3e:	66 6c                	data16 ins BYTE PTR es:[rdi],dx
  40:	61                   	(bad)  
  41:	67 73 00             	addr32 jae 44 <__abi_tag-0x348>
  44:	5f                   	pop    rdi
  45:	49                   	rex.WB
  46:	4f 5f                	rex.WRXB pop r15
  48:	62 75 66 5f 62       	(bad)
  4d:	61                   	(bad)  
  4e:	73 65                	jae    b5 <__abi_tag-0x2d7>
  50:	00 5f 6d             	add    BYTE PTR [rdi+0x6d],bl
  53:	61                   	(bad)  
  54:	72 6b                	jb     c1 <__abi_tag-0x2cb>
  56:	65 72 73             	gs jb  cc <__abi_tag-0x2c0>
  59:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
  5c:	4f 5f                	rex.WRXB pop r15
  5e:	72 65                	jb     c5 <__abi_tag-0x2c7>
  60:	61                   	(bad)  
  61:	64 5f                	fs pop rdi
  63:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  65:	64 00 5f 66          	add    BYTE PTR fs:[rdi+0x66],bl
  69:	72 65                	jb     d0 <__abi_tag-0x2bc>
  6b:	65 72 65             	gs jb  d3 <__abi_tag-0x2b9>
  6e:	73 5f                	jae    cf <__abi_tag-0x2bd>
  70:	62 75 66 00 66       	(bad)
  75:	67 65 74 73          	addr32 gs je ec <__abi_tag-0x2a0>
  79:	00 73 65             	add    BYTE PTR [rbx+0x65],dh
  7c:	74 76                	je     f4 <__abi_tag-0x298>
  7e:	62 75 66 00 6c       	(bad)
  83:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  84:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  85:	67 20 6c 6f 6e       	and    BYTE PTR [edi+ebp*2+0x6e],ch
  8a:	67 20 69 6e          	and    BYTE PTR [ecx+0x6e],ch
  8e:	74 00                	je     90 <__abi_tag-0x2fc>
  90:	5f                   	pop    rdi
  91:	6c                   	ins    BYTE PTR es:[rdi],dx
  92:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  93:	63 6b 00             	movsxd ebp,DWORD PTR [rbx+0x0]
  96:	70 72                	jo     10a <__abi_tag-0x282>
  98:	69 6e 74 66 00 73 74 	imul   ebp,DWORD PTR [rsi+0x74],0x74730066
  9f:	72 74                	jb     115 <__abi_tag-0x277>
  a1:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  a2:	6c                   	ins    BYTE PTR es:[rdi],dx
  a3:	00 5f 63             	add    BYTE PTR [rdi+0x63],bl
  a6:	75 72                	jne    11a <__abi_tag-0x272>
  a8:	5f                   	pop    rdi
  a9:	63 6f 6c             	movsxd ebp,DWORD PTR [rdi+0x6c]
  ac:	75 6d                	jne    11b <__abi_tag-0x271>
  ae:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  af:	00 5f 6f             	add    BYTE PTR [rdi+0x6f],bl
  b2:	6c                   	ins    BYTE PTR es:[rdi],dx
  b3:	64 5f                	fs pop rdi
  b5:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  b6:	66 66 73 65          	data16 data16 jae 11f <__abi_tag-0x26d>
  ba:	74 00                	je     bc <__abi_tag-0x2d0>
  bc:	75 6e                	jne    12c <__abi_tag-0x260>
  be:	73 69                	jae    129 <__abi_tag-0x263>
  c0:	67 6e                	outs   dx,BYTE PTR ds:[esi]
  c2:	65 64 20 63 68       	gs and BYTE PTR fs:[rbx+0x68],ah
  c7:	61                   	(bad)  
  c8:	72 00                	jb     ca <__abi_tag-0x2c2>
  ca:	6c                   	ins    BYTE PTR es:[rdi],dx
  cb:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  cc:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  cd:	67 20 6c 6f 6e       	and    BYTE PTR [edi+ebp*2+0x6e],ch
  d2:	67 20 75 6e          	and    BYTE PTR [ebp+0x6e],dh
  d6:	73 69                	jae    141 <__abi_tag-0x24b>
  d8:	67 6e                	outs   dx,BYTE PTR ds:[esi]
  da:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
  df:	74 00                	je     e1 <__abi_tag-0x2ab>
  e1:	5f                   	pop    rdi
  e2:	73 68                	jae    14c <__abi_tag-0x240>
  e4:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  e5:	72 74                	jb     15b <__abi_tag-0x231>
  e7:	62 75 66 00 5f 49 4f 	vmaxsh xmm9,xmm19,WORD PTR [rcx+0x9e]
  ee:	5f                   	pop    rdi
  ef:	6d                   	ins    DWORD PTR es:[rdi],dx
  f0:	61                   	(bad)  
  f1:	72 6b                	jb     15e <__abi_tag-0x22e>
  f3:	65 72 00             	gs jb  f6 <__abi_tag-0x296>
  f6:	67 65 74 70          	addr32 gs je 16a <__abi_tag-0x222>
  fa:	69 64 00 5f 5f 6f 66 	imul   esp,DWORD PTR [rax+rax*1+0x5f],0x66666f5f
 101:	66 
 102:	36 34 5f             	ss xor al,0x5f
 105:	74 00                	je     107 <__abi_tag-0x285>
 107:	5f                   	pop    rdi
 108:	49                   	rex.WB
 109:	4f 5f                	rex.WRXB pop r15
 10b:	77 72                	ja     17f <__abi_tag-0x20d>
 10d:	69 74 65 5f 62 61 73 	imul   esi,DWORD PTR [rbp+riz*2+0x5f],0x65736162
 114:	65 
 115:	00 74 69 6d          	add    BYTE PTR [rcx+rbp*2+0x6d],dh
 119:	65 00 5f 49          	add    BYTE PTR gs:[rdi+0x49],bl
 11d:	4f 5f                	rex.WRXB pop r15
 11f:	72 65                	jb     186 <__abi_tag-0x206>
 121:	61                   	(bad)  
 122:	64 5f                	fs pop rdi
 124:	70 74                	jo     19a <__abi_tag-0x1f2>
 126:	72 00                	jb     128 <__abi_tag-0x264>
 128:	5f                   	pop    rdi
 129:	49                   	rex.WB
 12a:	4f 5f                	rex.WRXB pop r15
 12c:	62 75 66 5f 65       	(bad)
 131:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 132:	64 00 6d 61          	add    BYTE PTR fs:[rbp+0x61],ch
 136:	69 6e 00 5f 66 72 65 	imul   ebp,DWORD PTR [rsi+0x0],0x6572665f
 13d:	65 72 65             	gs jb  1a5 <__abi_tag-0x1e7>
 140:	73 5f                	jae    1a1 <__abi_tag-0x1eb>
 142:	6c                   	ins    BYTE PTR es:[rdi],dx
 143:	69 73 74 00 61 6e 73 	imul   esi,DWORD PTR [rbx+0x74],0x736e6100
 14a:	77 65                	ja     1b1 <__abi_tag-0x1db>
 14c:	72 00                	jb     14e <__abi_tag-0x23e>
 14e:	5f                   	pop    rdi
 14f:	75 6e                	jne    1bf <__abi_tag-0x1cd>
 151:	75 73                	jne    1c6 <__abi_tag-0x1c6>
 153:	65 64 32 00          	gs xor al,BYTE PTR fs:[rax]
 157:	5f                   	pop    rdi
 158:	5f                   	pop    rdi
 159:	70 61                	jo     1bc <__abi_tag-0x1d0>
 15b:	64 35 00 73 68 6f    	fs xor eax,0x6f687300
 161:	72 74                	jb     1d7 <__abi_tag-0x1b5>
 163:	20 75 6e             	and    BYTE PTR [rbp+0x6e],dh
 166:	73 69                	jae    1d1 <__abi_tag-0x1bb>
 168:	67 6e                	outs   dx,BYTE PTR ds:[esi]
 16a:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
 16f:	74 00                	je     171 <__abi_tag-0x21b>
 171:	5f                   	pop    rdi
 172:	49                   	rex.WB
 173:	4f 5f                	rex.WRXB pop r15
 175:	77 72                	ja     1e9 <__abi_tag-0x1a3>
 177:	69 74 65 5f 65 6e 64 	imul   esi,DWORD PTR [rbp+riz*2+0x5f],0x646e65
 17e:	00 
 17f:	5f                   	pop    rdi
 180:	5f                   	pop    rdi
 181:	74 69                	je     1ec <__abi_tag-0x1a0>
 183:	6d                   	ins    DWORD PTR es:[rdi],dx
 184:	65 5f                	gs pop rdi
 186:	74 00                	je     188 <__abi_tag-0x204>
 188:	5f                   	pop    rdi
 189:	66 69 6c 65 6e 6f 00 	imul   bp,WORD PTR [rbp+riz*2+0x6e],0x6f
 190:	5f                   	pop    rdi
 191:	63 68 61             	movsxd ebp,DWORD PTR [rax+0x61]
 194:	69 6e 00 5f 49 4f 5f 	imul   ebp,DWORD PTR [rsi+0x0],0x5f4f495f
 19b:	77 69                	ja     206 <__abi_tag-0x186>
 19d:	64 65 5f             	fs gs pop rdi
 1a0:	64 61                	fs (bad) 
 1a2:	74 61                	je     205 <__abi_tag-0x187>
 1a4:	00 5f 6d             	add    BYTE PTR [rdi+0x6d],bl
 1a7:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 1a8:	64 65 00 5f 5f       	fs add BYTE PTR gs:[rdi+0x5f],bl
 1ad:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 1ae:	66 66 5f             	data16 pop di
 1b1:	74 00                	je     1b3 <__abi_tag-0x1d9>
 1b3:	5f                   	pop    rdi
 1b4:	49                   	rex.WB
 1b5:	4f 5f                	rex.WRXB pop r15
 1b7:	62 61                	(bad)  
 1b9:	63 6b 75             	movsxd ebp,DWORD PTR [rbx+0x75]
 1bc:	70 5f                	jo     21d <__abi_tag-0x16f>
 1be:	62 61                	(bad)  
 1c0:	73 65                	jae    227 <__abi_tag-0x165>
 1c2:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
 1c5:	64 69 6e 00 5f 66 6c 	imul   ebp,DWORD PTR fs:[rsi+0x0],0x616c665f
 1cc:	61 
 1cd:	67 73 32             	addr32 jae 202 <__abi_tag-0x18a>
 1d0:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 1d3:	4f 5f                	rex.WRXB pop r15
 1d5:	63 6f 64             	movsxd ebp,DWORD PTR [rdi+0x64]
 1d8:	65 63 76 74          	movsxd esi,DWORD PTR gs:[rsi+0x74]
 1dc:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 1df:	4f 5f                	rex.WRXB pop r15
 1e1:	72 65                	jb     248 <__abi_tag-0x144>
 1e3:	61                   	(bad)  
 1e4:	64 5f                	fs pop rdi
 1e6:	62 61                	(bad)  
 1e8:	73 65                	jae    24f <__abi_tag-0x13d>
 1ea:	00 5f 76             	add    BYTE PTR [rdi+0x76],bl
 1ed:	74 61                	je     250 <__abi_tag-0x13c>
 1ef:	62                   	(bad)  
 1f0:	6c                   	ins    BYTE PTR es:[rdi],dx
 1f1:	65 5f                	gs pop rdi
 1f3:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 1f4:	66 66 73 65          	data16 data16 jae 25d <__abi_tag-0x12f>
 1f8:	74 00                	je     1fa <__abi_tag-0x192>
 1fa:	5f                   	pop    rdi
 1fb:	49                   	rex.WB
 1fc:	4f 5f                	rex.WRXB pop r15
 1fe:	73 61                	jae    261 <__abi_tag-0x12b>
 200:	76 65                	jbe    267 <__abi_tag-0x125>
 202:	5f                   	pop    rdi
 203:	62 61                	(bad)  
 205:	73 65                	jae    26c <__abi_tag-0x120>
 207:	00 73 72             	add    BYTE PTR [rbx+0x72],dh
 20a:	61                   	(bad)  
 20b:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 20c:	64 00 73 74          	add    BYTE PTR fs:[rbx+0x74],dh
 210:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
 212:	75 74                	jne    288 <__abi_tag-0x104>
 214:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 217:	4f 5f                	rex.WRXB pop r15
 219:	6c                   	ins    BYTE PTR es:[rdi],dx
 21a:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 21b:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
 21e:	74 00                	je     220 <__abi_tag-0x16c>
 220:	47                   	rex.RXB
 221:	4e 55                	rex.WRX push rbp
 223:	20 43 31             	and    BYTE PTR [rbx+0x31],al
 226:	37                   	(bad)  
 227:	20 31                	and    BYTE PTR [rcx],dh
 229:	31 2e                	xor    DWORD PTR [rsi],ebp
 22b:	33 2e                	xor    ebp,DWORD PTR [rsi]
 22d:	30 20                	xor    BYTE PTR [rax],ah
 22f:	2d 6d 74 75 6e       	sub    eax,0x6e75746d
 234:	65 3d 67 65 6e 65    	gs cmp eax,0x656e6567
 23a:	72 69                	jb     2a5 <__abi_tag-0xe7>
 23c:	63 20                	movsxd esp,DWORD PTR [rax]
 23e:	2d 6d 61 72 63       	sub    eax,0x6372616d
 243:	68 3d 78 38 36       	push   0x3638783d
 248:	2d 36 34 20 2d       	sub    eax,0x2d203436
 24d:	67 20 2d 66 6e 6f 2d 	and    BYTE PTR [eip+0x2d6f6e66],ch        # 2d6f70ba <_end+0x2d6f308a>
 254:	73 74                	jae    2ca <__abi_tag-0xc2>
 256:	61                   	(bad)  
 257:	63 6b 2d             	movsxd ebp,DWORD PTR [rbx+0x2d]
 25a:	70 72                	jo     2ce <__abi_tag-0xbe>
 25c:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 25d:	74 65                	je     2c4 <__abi_tag-0xc8>
 25f:	63 74 6f 72          	movsxd esi,DWORD PTR [rdi+rbp*2+0x72]
 263:	20 2d 66 61 73 79    	and    BYTE PTR [rip+0x79736166],ch        # 797363cf <_end+0x7973239f>
 269:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 26a:	63 68 72             	movsxd ebp,DWORD PTR [rax+0x72]
 26d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 26e:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 26f:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 270:	75 73                	jne    2e5 <__abi_tag-0xa7>
 272:	2d 75 6e 77 69       	sub    eax,0x69776e75
 277:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 278:	64 2d 74 61 62 6c    	fs sub eax,0x6c626174
 27e:	65 73 20             	gs jae 2a1 <__abi_tag-0xeb>
 281:	2d 66 73 74 61       	sub    eax,0x61747366
 286:	63 6b 2d             	movsxd ebp,DWORD PTR [rbx+0x2d]
 289:	63 6c 61 73          	movsxd ebp,DWORD PTR [rcx+riz*2+0x73]
 28d:	68 2d 70 72 6f       	push   0x6f72702d
 292:	74 65                	je     2f9 <__abi_tag-0x93>
 294:	63 74 69 6f          	movsxd esi,DWORD PTR [rcx+rbp*2+0x6f]
 298:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 299:	20 2d 66 63 66 2d    	and    BYTE PTR [rip+0x2d666366],ch        # 2d666605 <_end+0x2d6625d5>
 29f:	70 72                	jo     313 <__abi_tag-0x79>
 2a1:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 2a2:	74 65                	je     309 <__abi_tag-0x83>
 2a4:	63 74 69 6f          	movsxd esi,DWORD PTR [rcx+rbp*2+0x6f]
 2a8:	6e                   	outs   dx,BYTE PTR ds:[rsi]
	...

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	67 75 65             	addr32 jne 68 <__abi_tag-0x324>
   3:	73 73                	jae    78 <__abi_tag-0x314>
   5:	2e 63 00             	cs movsxd eax,DWORD PTR [rax]
   8:	2f                   	(bad)  
   9:	68 6f 6d 65 2f       	push   0x2f656d6f
   e:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   f:	69 72 6f 77 75 2f 75 	imul   esi,DWORD PTR [rdx+0x6f],0x752f7577
  16:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  17:	69 78 2f 75 6e 69 78 	imul   edi,DWORD PTR [rax+0x2f],0x78696e75
  1e:	5f                   	pop    rdi
  1f:	70 72                	jo     93 <__abi_tag-0x2f9>
  21:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  22:	67 2f                	addr32 (bad) 
  24:	70 72                	jo     98 <__abi_tag-0x2f4>
  26:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  27:	63 65 6e             	movsxd esp,DWORD PTR [rbp+0x6e]
  2a:	76 00                	jbe    2c <__abi_tag-0x360>
  2c:	2f                   	(bad)  
  2d:	75 73                	jne    a2 <__abi_tag-0x2ea>
  2f:	72 2f                	jb     60 <__abi_tag-0x32c>
  31:	6c                   	ins    BYTE PTR es:[rdi],dx
  32:	69 62 2f 67 63 63 2f 	imul   esp,DWORD PTR [rdx+0x2f],0x2f636367
  39:	78 38                	js     73 <__abi_tag-0x319>
  3b:	36 5f                	ss pop rdi
  3d:	36 34 2d             	ss xor al,0x2d
  40:	6c                   	ins    BYTE PTR es:[rdi],dx
  41:	69 6e 75 78 2d 67 6e 	imul   ebp,DWORD PTR [rsi+0x75],0x6e672d78
  48:	75 2f                	jne    79 <__abi_tag-0x313>
  4a:	31 31                	xor    DWORD PTR [rcx],esi
  4c:	2f                   	(bad)  
  4d:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  54:	00 2f                	add    BYTE PTR [rdi],ch
  56:	75 73                	jne    cb <__abi_tag-0x2c1>
  58:	72 2f                	jb     89 <__abi_tag-0x303>
  5a:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  61:	2f                   	(bad)  
  62:	78 38                	js     9c <__abi_tag-0x2f0>
  64:	36 5f                	ss pop rdi
  66:	36 34 2d             	ss xor al,0x2d
  69:	6c                   	ins    BYTE PTR es:[rdi],dx
  6a:	69 6e 75 78 2d 67 6e 	imul   ebp,DWORD PTR [rsi+0x75],0x6e672d78
  71:	75 2f                	jne    a2 <__abi_tag-0x2ea>
  73:	62                   	(bad)  
  74:	69 74 73 00 2f 75 73 	imul   esi,DWORD PTR [rbx+rsi*2+0x0],0x7273752f
  7b:	72 
  7c:	2f                   	(bad)  
  7d:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  84:	2f                   	(bad)  
  85:	78 38                	js     bf <__abi_tag-0x2cd>
  87:	36 5f                	ss pop rdi
  89:	36 34 2d             	ss xor al,0x2d
  8c:	6c                   	ins    BYTE PTR es:[rdi],dx
  8d:	69 6e 75 78 2d 67 6e 	imul   ebp,DWORD PTR [rsi+0x75],0x6e672d78
  94:	75 2f                	jne    c5 <__abi_tag-0x2c7>
  96:	62                   	(bad)  
  97:	69 74 73 2f 74 79 70 	imul   esi,DWORD PTR [rbx+rsi*2+0x2f],0x65707974
  9e:	65 
  9f:	73 00                	jae    a1 <__abi_tag-0x2eb>
  a1:	2f                   	(bad)  
  a2:	75 73                	jne    117 <__abi_tag-0x275>
  a4:	72 2f                	jb     d5 <__abi_tag-0x2b7>
  a6:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  ad:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
  b0:	64 64 65 66 2e 68 00 	fs fs gs cs pushw 0x7400
  b7:	74 
  b8:	79 70                	jns    12a <__abi_tag-0x262>
  ba:	65 73 2e             	gs jae eb <__abi_tag-0x2a1>
  bd:	68 00 73 74 72       	push   0x72747300
  c2:	75 63                	jne    127 <__abi_tag-0x265>
  c4:	74 5f                	je     125 <__abi_tag-0x267>
  c6:	46                   	rex.RX
  c7:	49                   	rex.WB
  c8:	4c                   	rex.WR
  c9:	45                   	rex.RB
  ca:	2e 68 00 73 74 64    	cs push 0x64747300
  d0:	69 6f 2e 68 00 74 69 	imul   ebp,DWORD PTR [rdi+0x2e],0x69740068
  d7:	6d                   	ins    DWORD PTR es:[rdi],dx
  d8:	65 5f                	gs pop rdi
  da:	74 2e                	je     10a <__abi_tag-0x282>
  dc:	68 00 73 74 64       	push   0x64747300
  e1:	6c                   	ins    BYTE PTR es:[rdi],dx
  e2:	69 62 2e 68 00 75 6e 	imul   esp,DWORD PTR [rdx+0x2e],0x6e750068
  e9:	69 73 74 64 2e 68 00 	imul   esi,DWORD PTR [rbx+0x74],0x682e64
  f0:	74 69                	je     15b <__abi_tag-0x231>
  f2:	6d                   	ins    DWORD PTR es:[rdi],dx
  f3:	65                   	gs
  f4:	2e                   	cs
  f5:	68                   	.byte 0x68
	...
