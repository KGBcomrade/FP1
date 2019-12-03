
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000e68  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           0000004c  08000f28  08000f28  00010f28  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000f74  08000f74  00010f74  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000f7c  08000f7c  00010f7c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000440  20000000  08000f80  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000020  20000440  080013c0  00020440  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000460  080013c0  00020460  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020440  2**0  CONTENTS, READONLY
  9 .comment          000000df  00000000  00000000  00020468  2**0  CONTENTS, READONLY
 10 .debug_info       00003acb  00000000  00000000  00020547  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_abbrev     00000d6d  00000000  00000000  00024012  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_loc        00000d9b  00000000  00000000  00024d7f  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_aranges    000002e8  00000000  00000000  00025b20  2**3  CONTENTS, READONLY, DEBUGGING
 14 .debug_ranges     00000200  00000000  00000000  00025e08  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line       00000e1d  00000000  00000000  00026008  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str        00001231  00000000  00000000  00026e25  2**0  CONTENTS, READONLY, DEBUGGING
 17 .debug_frame      00000790  00000000  00000000  00028058  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <deregister_tm_clones>:
 80000c0:	4804      	ldr	r0, [pc, #16]	; (80000d4 <deregister_tm_clones+0x14>)
 80000c2:	4b05      	ldr	r3, [pc, #20]	; (80000d8 <deregister_tm_clones+0x18>)
 80000c4:	b510      	push	{r4, lr}
 80000c6:	4283      	cmp	r3, r0
 80000c8:	d003      	beq.n	80000d2 <deregister_tm_clones+0x12>
 80000ca:	4b04      	ldr	r3, [pc, #16]	; (80000dc <deregister_tm_clones+0x1c>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d000      	beq.n	80000d2 <deregister_tm_clones+0x12>
 80000d0:	4798      	blx	r3
 80000d2:	bd10      	pop	{r4, pc}
 80000d4:	20000440 	.word	0x20000440
 80000d8:	20000440 	.word	0x20000440
 80000dc:	00000000 	.word	0x00000000

080000e0 <register_tm_clones>:
 80000e0:	4806      	ldr	r0, [pc, #24]	; (80000fc <register_tm_clones+0x1c>)
 80000e2:	4907      	ldr	r1, [pc, #28]	; (8000100 <register_tm_clones+0x20>)
 80000e4:	1a09      	subs	r1, r1, r0
 80000e6:	1089      	asrs	r1, r1, #2
 80000e8:	0fcb      	lsrs	r3, r1, #31
 80000ea:	1859      	adds	r1, r3, r1
 80000ec:	b510      	push	{r4, lr}
 80000ee:	1049      	asrs	r1, r1, #1
 80000f0:	d003      	beq.n	80000fa <register_tm_clones+0x1a>
 80000f2:	4b04      	ldr	r3, [pc, #16]	; (8000104 <register_tm_clones+0x24>)
 80000f4:	2b00      	cmp	r3, #0
 80000f6:	d000      	beq.n	80000fa <register_tm_clones+0x1a>
 80000f8:	4798      	blx	r3
 80000fa:	bd10      	pop	{r4, pc}
 80000fc:	20000440 	.word	0x20000440
 8000100:	20000440 	.word	0x20000440
 8000104:	00000000 	.word	0x00000000

08000108 <__do_global_dtors_aux>:
 8000108:	b510      	push	{r4, lr}
 800010a:	4c07      	ldr	r4, [pc, #28]	; (8000128 <__do_global_dtors_aux+0x20>)
 800010c:	7823      	ldrb	r3, [r4, #0]
 800010e:	2b00      	cmp	r3, #0
 8000110:	d109      	bne.n	8000126 <__do_global_dtors_aux+0x1e>
 8000112:	f7ff ffd5 	bl	80000c0 <deregister_tm_clones>
 8000116:	4b05      	ldr	r3, [pc, #20]	; (800012c <__do_global_dtors_aux+0x24>)
 8000118:	2b00      	cmp	r3, #0
 800011a:	d002      	beq.n	8000122 <__do_global_dtors_aux+0x1a>
 800011c:	4804      	ldr	r0, [pc, #16]	; (8000130 <__do_global_dtors_aux+0x28>)
 800011e:	e000      	b.n	8000122 <__do_global_dtors_aux+0x1a>
 8000120:	bf00      	nop
 8000122:	2301      	movs	r3, #1
 8000124:	7023      	strb	r3, [r4, #0]
 8000126:	bd10      	pop	{r4, pc}
 8000128:	20000440 	.word	0x20000440
 800012c:	00000000 	.word	0x00000000
 8000130:	08000f10 	.word	0x08000f10

08000134 <frame_dummy>:
 8000134:	4b05      	ldr	r3, [pc, #20]	; (800014c <frame_dummy+0x18>)
 8000136:	b510      	push	{r4, lr}
 8000138:	2b00      	cmp	r3, #0
 800013a:	d003      	beq.n	8000144 <frame_dummy+0x10>
 800013c:	4904      	ldr	r1, [pc, #16]	; (8000150 <frame_dummy+0x1c>)
 800013e:	4805      	ldr	r0, [pc, #20]	; (8000154 <frame_dummy+0x20>)
 8000140:	e000      	b.n	8000144 <frame_dummy+0x10>
 8000142:	bf00      	nop
 8000144:	f7ff ffcc 	bl	80000e0 <register_tm_clones>
 8000148:	bd10      	pop	{r4, pc}
 800014a:	46c0      	nop			; (mov r8, r8)
 800014c:	00000000 	.word	0x00000000
 8000150:	20000444 	.word	0x20000444
 8000154:	08000f10 	.word	0x08000f10

08000158 <__udivsi3>:
 8000158:	2200      	movs	r2, #0
 800015a:	0843      	lsrs	r3, r0, #1
 800015c:	428b      	cmp	r3, r1
 800015e:	d374      	bcc.n	800024a <__udivsi3+0xf2>
 8000160:	0903      	lsrs	r3, r0, #4
 8000162:	428b      	cmp	r3, r1
 8000164:	d35f      	bcc.n	8000226 <__udivsi3+0xce>
 8000166:	0a03      	lsrs	r3, r0, #8
 8000168:	428b      	cmp	r3, r1
 800016a:	d344      	bcc.n	80001f6 <__udivsi3+0x9e>
 800016c:	0b03      	lsrs	r3, r0, #12
 800016e:	428b      	cmp	r3, r1
 8000170:	d328      	bcc.n	80001c4 <__udivsi3+0x6c>
 8000172:	0c03      	lsrs	r3, r0, #16
 8000174:	428b      	cmp	r3, r1
 8000176:	d30d      	bcc.n	8000194 <__udivsi3+0x3c>
 8000178:	22ff      	movs	r2, #255	; 0xff
 800017a:	0209      	lsls	r1, r1, #8
 800017c:	ba12      	rev	r2, r2
 800017e:	0c03      	lsrs	r3, r0, #16
 8000180:	428b      	cmp	r3, r1
 8000182:	d302      	bcc.n	800018a <__udivsi3+0x32>
 8000184:	1212      	asrs	r2, r2, #8
 8000186:	0209      	lsls	r1, r1, #8
 8000188:	d065      	beq.n	8000256 <__udivsi3+0xfe>
 800018a:	0b03      	lsrs	r3, r0, #12
 800018c:	428b      	cmp	r3, r1
 800018e:	d319      	bcc.n	80001c4 <__udivsi3+0x6c>
 8000190:	e000      	b.n	8000194 <__udivsi3+0x3c>
 8000192:	0a09      	lsrs	r1, r1, #8
 8000194:	0bc3      	lsrs	r3, r0, #15
 8000196:	428b      	cmp	r3, r1
 8000198:	d301      	bcc.n	800019e <__udivsi3+0x46>
 800019a:	03cb      	lsls	r3, r1, #15
 800019c:	1ac0      	subs	r0, r0, r3
 800019e:	4152      	adcs	r2, r2
 80001a0:	0b83      	lsrs	r3, r0, #14
 80001a2:	428b      	cmp	r3, r1
 80001a4:	d301      	bcc.n	80001aa <__udivsi3+0x52>
 80001a6:	038b      	lsls	r3, r1, #14
 80001a8:	1ac0      	subs	r0, r0, r3
 80001aa:	4152      	adcs	r2, r2
 80001ac:	0b43      	lsrs	r3, r0, #13
 80001ae:	428b      	cmp	r3, r1
 80001b0:	d301      	bcc.n	80001b6 <__udivsi3+0x5e>
 80001b2:	034b      	lsls	r3, r1, #13
 80001b4:	1ac0      	subs	r0, r0, r3
 80001b6:	4152      	adcs	r2, r2
 80001b8:	0b03      	lsrs	r3, r0, #12
 80001ba:	428b      	cmp	r3, r1
 80001bc:	d301      	bcc.n	80001c2 <__udivsi3+0x6a>
 80001be:	030b      	lsls	r3, r1, #12
 80001c0:	1ac0      	subs	r0, r0, r3
 80001c2:	4152      	adcs	r2, r2
 80001c4:	0ac3      	lsrs	r3, r0, #11
 80001c6:	428b      	cmp	r3, r1
 80001c8:	d301      	bcc.n	80001ce <__udivsi3+0x76>
 80001ca:	02cb      	lsls	r3, r1, #11
 80001cc:	1ac0      	subs	r0, r0, r3
 80001ce:	4152      	adcs	r2, r2
 80001d0:	0a83      	lsrs	r3, r0, #10
 80001d2:	428b      	cmp	r3, r1
 80001d4:	d301      	bcc.n	80001da <__udivsi3+0x82>
 80001d6:	028b      	lsls	r3, r1, #10
 80001d8:	1ac0      	subs	r0, r0, r3
 80001da:	4152      	adcs	r2, r2
 80001dc:	0a43      	lsrs	r3, r0, #9
 80001de:	428b      	cmp	r3, r1
 80001e0:	d301      	bcc.n	80001e6 <__udivsi3+0x8e>
 80001e2:	024b      	lsls	r3, r1, #9
 80001e4:	1ac0      	subs	r0, r0, r3
 80001e6:	4152      	adcs	r2, r2
 80001e8:	0a03      	lsrs	r3, r0, #8
 80001ea:	428b      	cmp	r3, r1
 80001ec:	d301      	bcc.n	80001f2 <__udivsi3+0x9a>
 80001ee:	020b      	lsls	r3, r1, #8
 80001f0:	1ac0      	subs	r0, r0, r3
 80001f2:	4152      	adcs	r2, r2
 80001f4:	d2cd      	bcs.n	8000192 <__udivsi3+0x3a>
 80001f6:	09c3      	lsrs	r3, r0, #7
 80001f8:	428b      	cmp	r3, r1
 80001fa:	d301      	bcc.n	8000200 <__udivsi3+0xa8>
 80001fc:	01cb      	lsls	r3, r1, #7
 80001fe:	1ac0      	subs	r0, r0, r3
 8000200:	4152      	adcs	r2, r2
 8000202:	0983      	lsrs	r3, r0, #6
 8000204:	428b      	cmp	r3, r1
 8000206:	d301      	bcc.n	800020c <__udivsi3+0xb4>
 8000208:	018b      	lsls	r3, r1, #6
 800020a:	1ac0      	subs	r0, r0, r3
 800020c:	4152      	adcs	r2, r2
 800020e:	0943      	lsrs	r3, r0, #5
 8000210:	428b      	cmp	r3, r1
 8000212:	d301      	bcc.n	8000218 <__udivsi3+0xc0>
 8000214:	014b      	lsls	r3, r1, #5
 8000216:	1ac0      	subs	r0, r0, r3
 8000218:	4152      	adcs	r2, r2
 800021a:	0903      	lsrs	r3, r0, #4
 800021c:	428b      	cmp	r3, r1
 800021e:	d301      	bcc.n	8000224 <__udivsi3+0xcc>
 8000220:	010b      	lsls	r3, r1, #4
 8000222:	1ac0      	subs	r0, r0, r3
 8000224:	4152      	adcs	r2, r2
 8000226:	08c3      	lsrs	r3, r0, #3
 8000228:	428b      	cmp	r3, r1
 800022a:	d301      	bcc.n	8000230 <__udivsi3+0xd8>
 800022c:	00cb      	lsls	r3, r1, #3
 800022e:	1ac0      	subs	r0, r0, r3
 8000230:	4152      	adcs	r2, r2
 8000232:	0883      	lsrs	r3, r0, #2
 8000234:	428b      	cmp	r3, r1
 8000236:	d301      	bcc.n	800023c <__udivsi3+0xe4>
 8000238:	008b      	lsls	r3, r1, #2
 800023a:	1ac0      	subs	r0, r0, r3
 800023c:	4152      	adcs	r2, r2
 800023e:	0843      	lsrs	r3, r0, #1
 8000240:	428b      	cmp	r3, r1
 8000242:	d301      	bcc.n	8000248 <__udivsi3+0xf0>
 8000244:	004b      	lsls	r3, r1, #1
 8000246:	1ac0      	subs	r0, r0, r3
 8000248:	4152      	adcs	r2, r2
 800024a:	1a41      	subs	r1, r0, r1
 800024c:	d200      	bcs.n	8000250 <__udivsi3+0xf8>
 800024e:	4601      	mov	r1, r0
 8000250:	4152      	adcs	r2, r2
 8000252:	4610      	mov	r0, r2
 8000254:	4770      	bx	lr
 8000256:	e7ff      	b.n	8000258 <__udivsi3+0x100>
 8000258:	b501      	push	{r0, lr}
 800025a:	2000      	movs	r0, #0
 800025c:	f000 f806 	bl	800026c <__aeabi_idiv0>
 8000260:	bd02      	pop	{r1, pc}
 8000262:	46c0      	nop			; (mov r8, r8)

08000264 <__aeabi_uidivmod>:
 8000264:	2900      	cmp	r1, #0
 8000266:	d0f7      	beq.n	8000258 <__udivsi3+0x100>
 8000268:	e776      	b.n	8000158 <__udivsi3>
 800026a:	4770      	bx	lr

0800026c <__aeabi_idiv0>:
 800026c:	4770      	bx	lr
 800026e:	46c0      	nop			; (mov r8, r8)

08000270 <atexit>:
 8000270:	b510      	push	{r4, lr}
 8000272:	0001      	movs	r1, r0
 8000274:	2300      	movs	r3, #0
 8000276:	2200      	movs	r2, #0
 8000278:	2000      	movs	r0, #0
 800027a:	f000 f83f 	bl	80002fc <__register_exitproc>
 800027e:	bd10      	pop	{r4, pc}

08000280 <__libc_fini_array>:
 8000280:	b570      	push	{r4, r5, r6, lr}
 8000282:	4b09      	ldr	r3, [pc, #36]	; (80002a8 <__libc_fini_array+0x28>)
 8000284:	4c09      	ldr	r4, [pc, #36]	; (80002ac <__libc_fini_array+0x2c>)
 8000286:	1ae4      	subs	r4, r4, r3
 8000288:	10a4      	asrs	r4, r4, #2
 800028a:	d009      	beq.n	80002a0 <__libc_fini_array+0x20>
 800028c:	4a08      	ldr	r2, [pc, #32]	; (80002b0 <__libc_fini_array+0x30>)
 800028e:	18a5      	adds	r5, r4, r2
 8000290:	00ad      	lsls	r5, r5, #2
 8000292:	18ed      	adds	r5, r5, r3
 8000294:	682b      	ldr	r3, [r5, #0]
 8000296:	3c01      	subs	r4, #1
 8000298:	4798      	blx	r3
 800029a:	3d04      	subs	r5, #4
 800029c:	2c00      	cmp	r4, #0
 800029e:	d1f9      	bne.n	8000294 <__libc_fini_array+0x14>
 80002a0:	f000 fe3c 	bl	8000f1c <_fini>
 80002a4:	bd70      	pop	{r4, r5, r6, pc}
 80002a6:	46c0      	nop			; (mov r8, r8)
 80002a8:	08000f7c 	.word	0x08000f7c
 80002ac:	08000f80 	.word	0x08000f80
 80002b0:	3fffffff 	.word	0x3fffffff

080002b4 <__libc_init_array>:
 80002b4:	b570      	push	{r4, r5, r6, lr}
 80002b6:	4e0d      	ldr	r6, [pc, #52]	; (80002ec <__libc_init_array+0x38>)
 80002b8:	4d0d      	ldr	r5, [pc, #52]	; (80002f0 <__libc_init_array+0x3c>)
 80002ba:	1bad      	subs	r5, r5, r6
 80002bc:	10ad      	asrs	r5, r5, #2
 80002be:	d006      	beq.n	80002ce <__libc_init_array+0x1a>
 80002c0:	2400      	movs	r4, #0
 80002c2:	00a3      	lsls	r3, r4, #2
 80002c4:	58f3      	ldr	r3, [r6, r3]
 80002c6:	3401      	adds	r4, #1
 80002c8:	4798      	blx	r3
 80002ca:	42a5      	cmp	r5, r4
 80002cc:	d1f9      	bne.n	80002c2 <__libc_init_array+0xe>
 80002ce:	f000 fe1f 	bl	8000f10 <_init>
 80002d2:	4e08      	ldr	r6, [pc, #32]	; (80002f4 <__libc_init_array+0x40>)
 80002d4:	4d08      	ldr	r5, [pc, #32]	; (80002f8 <__libc_init_array+0x44>)
 80002d6:	1bad      	subs	r5, r5, r6
 80002d8:	10ad      	asrs	r5, r5, #2
 80002da:	d006      	beq.n	80002ea <__libc_init_array+0x36>
 80002dc:	2400      	movs	r4, #0
 80002de:	00a3      	lsls	r3, r4, #2
 80002e0:	58f3      	ldr	r3, [r6, r3]
 80002e2:	3401      	adds	r4, #1
 80002e4:	4798      	blx	r3
 80002e6:	42a5      	cmp	r5, r4
 80002e8:	d1f9      	bne.n	80002de <__libc_init_array+0x2a>
 80002ea:	bd70      	pop	{r4, r5, r6, pc}
 80002ec:	08000f74 	.word	0x08000f74
 80002f0:	08000f74 	.word	0x08000f74
 80002f4:	08000f74 	.word	0x08000f74
 80002f8:	08000f7c 	.word	0x08000f7c

080002fc <__register_exitproc>:
 80002fc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80002fe:	46c6      	mov	lr, r8
 8000300:	b500      	push	{lr}
 8000302:	4c1f      	ldr	r4, [pc, #124]	; (8000380 <__register_exitproc+0x84>)
 8000304:	b082      	sub	sp, #8
 8000306:	6824      	ldr	r4, [r4, #0]
 8000308:	9401      	str	r4, [sp, #4]
 800030a:	24a4      	movs	r4, #164	; 0xa4
 800030c:	9d01      	ldr	r5, [sp, #4]
 800030e:	0064      	lsls	r4, r4, #1
 8000310:	592d      	ldr	r5, [r5, r4]
 8000312:	2d00      	cmp	r5, #0
 8000314:	d02b      	beq.n	800036e <__register_exitproc+0x72>
 8000316:	686c      	ldr	r4, [r5, #4]
 8000318:	2c1f      	cmp	r4, #31
 800031a:	dc2e      	bgt.n	800037a <__register_exitproc+0x7e>
 800031c:	2800      	cmp	r0, #0
 800031e:	d109      	bne.n	8000334 <__register_exitproc+0x38>
 8000320:	2000      	movs	r0, #0
 8000322:	1c63      	adds	r3, r4, #1
 8000324:	3402      	adds	r4, #2
 8000326:	00a4      	lsls	r4, r4, #2
 8000328:	606b      	str	r3, [r5, #4]
 800032a:	5161      	str	r1, [r4, r5]
 800032c:	b002      	add	sp, #8
 800032e:	bc04      	pop	{r2}
 8000330:	4690      	mov	r8, r2
 8000332:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000334:	2788      	movs	r7, #136	; 0x88
 8000336:	00a6      	lsls	r6, r4, #2
 8000338:	19ae      	adds	r6, r5, r6
 800033a:	51f2      	str	r2, [r6, r7]
 800033c:	3701      	adds	r7, #1
 800033e:	37ff      	adds	r7, #255	; 0xff
 8000340:	46bc      	mov	ip, r7
 8000342:	2201      	movs	r2, #1
 8000344:	44ac      	add	ip, r5
 8000346:	4667      	mov	r7, ip
 8000348:	40a2      	lsls	r2, r4
 800034a:	683f      	ldr	r7, [r7, #0]
 800034c:	4690      	mov	r8, r2
 800034e:	4317      	orrs	r7, r2
 8000350:	4662      	mov	r2, ip
 8000352:	6017      	str	r7, [r2, #0]
 8000354:	2784      	movs	r7, #132	; 0x84
 8000356:	007f      	lsls	r7, r7, #1
 8000358:	51f3      	str	r3, [r6, r7]
 800035a:	2802      	cmp	r0, #2
 800035c:	d1e0      	bne.n	8000320 <__register_exitproc+0x24>
 800035e:	002b      	movs	r3, r5
 8000360:	4640      	mov	r0, r8
 8000362:	338d      	adds	r3, #141	; 0x8d
 8000364:	33ff      	adds	r3, #255	; 0xff
 8000366:	681a      	ldr	r2, [r3, #0]
 8000368:	4310      	orrs	r0, r2
 800036a:	6018      	str	r0, [r3, #0]
 800036c:	e7d8      	b.n	8000320 <__register_exitproc+0x24>
 800036e:	9d01      	ldr	r5, [sp, #4]
 8000370:	9e01      	ldr	r6, [sp, #4]
 8000372:	354d      	adds	r5, #77	; 0x4d
 8000374:	35ff      	adds	r5, #255	; 0xff
 8000376:	5135      	str	r5, [r6, r4]
 8000378:	e7cd      	b.n	8000316 <__register_exitproc+0x1a>
 800037a:	2001      	movs	r0, #1
 800037c:	4240      	negs	r0, r0
 800037e:	e7d5      	b.n	800032c <__register_exitproc+0x30>
 8000380:	08000f28 	.word	0x08000f28

08000384 <Reset_Handler>:
 8000384:	480d      	ldr	r0, [pc, #52]	; (80003bc <LoopForever+0x2>)
 8000386:	4685      	mov	sp, r0
 8000388:	480d      	ldr	r0, [pc, #52]	; (80003c0 <LoopForever+0x6>)
 800038a:	490e      	ldr	r1, [pc, #56]	; (80003c4 <LoopForever+0xa>)
 800038c:	4a0e      	ldr	r2, [pc, #56]	; (80003c8 <LoopForever+0xe>)
 800038e:	2300      	movs	r3, #0
 8000390:	e002      	b.n	8000398 <LoopCopyDataInit>

08000392 <CopyDataInit>:
 8000392:	58d4      	ldr	r4, [r2, r3]
 8000394:	50c4      	str	r4, [r0, r3]
 8000396:	3304      	adds	r3, #4

08000398 <LoopCopyDataInit>:
 8000398:	18c4      	adds	r4, r0, r3
 800039a:	428c      	cmp	r4, r1
 800039c:	d3f9      	bcc.n	8000392 <CopyDataInit>
 800039e:	4a0b      	ldr	r2, [pc, #44]	; (80003cc <LoopForever+0x12>)
 80003a0:	4c0b      	ldr	r4, [pc, #44]	; (80003d0 <LoopForever+0x16>)
 80003a2:	2300      	movs	r3, #0
 80003a4:	e001      	b.n	80003aa <LoopFillZerobss>

080003a6 <FillZerobss>:
 80003a6:	6013      	str	r3, [r2, #0]
 80003a8:	3204      	adds	r2, #4

080003aa <LoopFillZerobss>:
 80003aa:	42a2      	cmp	r2, r4
 80003ac:	d3fb      	bcc.n	80003a6 <FillZerobss>
 80003ae:	f000 fd4d 	bl	8000e4c <SystemInit>
 80003b2:	f7ff ff7f 	bl	80002b4 <__libc_init_array>
 80003b6:	f000 fd35 	bl	8000e24 <main>

080003ba <LoopForever>:
 80003ba:	e7fe      	b.n	80003ba <LoopForever>
 80003bc:	20002000 	.word	0x20002000
 80003c0:	20000000 	.word	0x20000000
 80003c4:	20000440 	.word	0x20000440
 80003c8:	08000f80 	.word	0x08000f80
 80003cc:	20000440 	.word	0x20000440
 80003d0:	20000460 	.word	0x20000460

080003d4 <ADC1_COMP_IRQHandler>:
 80003d4:	e7fe      	b.n	80003d4 <ADC1_COMP_IRQHandler>
	...

080003d8 <NVIC_SetPriority>:
 80003d8:	b5b0      	push	{r4, r5, r7, lr}
 80003da:	b082      	sub	sp, #8
 80003dc:	af00      	add	r7, sp, #0
 80003de:	0002      	movs	r2, r0
 80003e0:	6039      	str	r1, [r7, #0]
 80003e2:	1dfb      	adds	r3, r7, #7
 80003e4:	701a      	strb	r2, [r3, #0]
 80003e6:	1dfb      	adds	r3, r7, #7
 80003e8:	781b      	ldrb	r3, [r3, #0]
 80003ea:	2b7f      	cmp	r3, #127	; 0x7f
 80003ec:	d932      	bls.n	8000454 <NVIC_SetPriority+0x7c>
 80003ee:	4c2f      	ldr	r4, [pc, #188]	; (80004ac <NVIC_SetPriority+0xd4>)
 80003f0:	1dfb      	adds	r3, r7, #7
 80003f2:	781b      	ldrb	r3, [r3, #0]
 80003f4:	001a      	movs	r2, r3
 80003f6:	230f      	movs	r3, #15
 80003f8:	4013      	ands	r3, r2
 80003fa:	3b08      	subs	r3, #8
 80003fc:	0899      	lsrs	r1, r3, #2
 80003fe:	4a2b      	ldr	r2, [pc, #172]	; (80004ac <NVIC_SetPriority+0xd4>)
 8000400:	1dfb      	adds	r3, r7, #7
 8000402:	781b      	ldrb	r3, [r3, #0]
 8000404:	0018      	movs	r0, r3
 8000406:	230f      	movs	r3, #15
 8000408:	4003      	ands	r3, r0
 800040a:	3b08      	subs	r3, #8
 800040c:	089b      	lsrs	r3, r3, #2
 800040e:	3306      	adds	r3, #6
 8000410:	009b      	lsls	r3, r3, #2
 8000412:	18d3      	adds	r3, r2, r3
 8000414:	3304      	adds	r3, #4
 8000416:	681b      	ldr	r3, [r3, #0]
 8000418:	1dfa      	adds	r2, r7, #7
 800041a:	7812      	ldrb	r2, [r2, #0]
 800041c:	0010      	movs	r0, r2
 800041e:	2203      	movs	r2, #3
 8000420:	4002      	ands	r2, r0
 8000422:	00d2      	lsls	r2, r2, #3
 8000424:	20ff      	movs	r0, #255	; 0xff
 8000426:	4090      	lsls	r0, r2
 8000428:	0002      	movs	r2, r0
 800042a:	43d2      	mvns	r2, r2
 800042c:	401a      	ands	r2, r3
 800042e:	683b      	ldr	r3, [r7, #0]
 8000430:	019b      	lsls	r3, r3, #6
 8000432:	20ff      	movs	r0, #255	; 0xff
 8000434:	4018      	ands	r0, r3
 8000436:	1dfb      	adds	r3, r7, #7
 8000438:	781b      	ldrb	r3, [r3, #0]
 800043a:	001d      	movs	r5, r3
 800043c:	2303      	movs	r3, #3
 800043e:	402b      	ands	r3, r5
 8000440:	00db      	lsls	r3, r3, #3
 8000442:	4098      	lsls	r0, r3
 8000444:	0003      	movs	r3, r0
 8000446:	431a      	orrs	r2, r3
 8000448:	1d8b      	adds	r3, r1, #6
 800044a:	009b      	lsls	r3, r3, #2
 800044c:	18e3      	adds	r3, r4, r3
 800044e:	3304      	adds	r3, #4
 8000450:	601a      	str	r2, [r3, #0]
 8000452:	e027      	b.n	80004a4 <NVIC_SetPriority+0xcc>
 8000454:	4c16      	ldr	r4, [pc, #88]	; (80004b0 <NVIC_SetPriority+0xd8>)
 8000456:	1dfb      	adds	r3, r7, #7
 8000458:	781b      	ldrb	r3, [r3, #0]
 800045a:	b25b      	sxtb	r3, r3
 800045c:	089b      	lsrs	r3, r3, #2
 800045e:	4914      	ldr	r1, [pc, #80]	; (80004b0 <NVIC_SetPriority+0xd8>)
 8000460:	1dfa      	adds	r2, r7, #7
 8000462:	7812      	ldrb	r2, [r2, #0]
 8000464:	b252      	sxtb	r2, r2
 8000466:	0892      	lsrs	r2, r2, #2
 8000468:	32c0      	adds	r2, #192	; 0xc0
 800046a:	0092      	lsls	r2, r2, #2
 800046c:	5852      	ldr	r2, [r2, r1]
 800046e:	1df9      	adds	r1, r7, #7
 8000470:	7809      	ldrb	r1, [r1, #0]
 8000472:	0008      	movs	r0, r1
 8000474:	2103      	movs	r1, #3
 8000476:	4001      	ands	r1, r0
 8000478:	00c9      	lsls	r1, r1, #3
 800047a:	20ff      	movs	r0, #255	; 0xff
 800047c:	4088      	lsls	r0, r1
 800047e:	0001      	movs	r1, r0
 8000480:	43c9      	mvns	r1, r1
 8000482:	4011      	ands	r1, r2
 8000484:	683a      	ldr	r2, [r7, #0]
 8000486:	0192      	lsls	r2, r2, #6
 8000488:	20ff      	movs	r0, #255	; 0xff
 800048a:	4010      	ands	r0, r2
 800048c:	1dfa      	adds	r2, r7, #7
 800048e:	7812      	ldrb	r2, [r2, #0]
 8000490:	0015      	movs	r5, r2
 8000492:	2203      	movs	r2, #3
 8000494:	402a      	ands	r2, r5
 8000496:	00d2      	lsls	r2, r2, #3
 8000498:	4090      	lsls	r0, r2
 800049a:	0002      	movs	r2, r0
 800049c:	430a      	orrs	r2, r1
 800049e:	33c0      	adds	r3, #192	; 0xc0
 80004a0:	009b      	lsls	r3, r3, #2
 80004a2:	511a      	str	r2, [r3, r4]
 80004a4:	46c0      	nop			; (mov r8, r8)
 80004a6:	46bd      	mov	sp, r7
 80004a8:	b002      	add	sp, #8
 80004aa:	bdb0      	pop	{r4, r5, r7, pc}
 80004ac:	e000ed00 	.word	0xe000ed00
 80004b0:	e000e100 	.word	0xe000e100

080004b4 <LL_RCC_HSI_Enable>:
 80004b4:	b580      	push	{r7, lr}
 80004b6:	af00      	add	r7, sp, #0
 80004b8:	4b04      	ldr	r3, [pc, #16]	; (80004cc <LL_RCC_HSI_Enable+0x18>)
 80004ba:	4a04      	ldr	r2, [pc, #16]	; (80004cc <LL_RCC_HSI_Enable+0x18>)
 80004bc:	6812      	ldr	r2, [r2, #0]
 80004be:	2101      	movs	r1, #1
 80004c0:	430a      	orrs	r2, r1
 80004c2:	601a      	str	r2, [r3, #0]
 80004c4:	46c0      	nop			; (mov r8, r8)
 80004c6:	46bd      	mov	sp, r7
 80004c8:	bd80      	pop	{r7, pc}
 80004ca:	46c0      	nop			; (mov r8, r8)
 80004cc:	40021000 	.word	0x40021000

080004d0 <LL_RCC_HSI_IsReady>:
 80004d0:	b580      	push	{r7, lr}
 80004d2:	af00      	add	r7, sp, #0
 80004d4:	4b05      	ldr	r3, [pc, #20]	; (80004ec <LL_RCC_HSI_IsReady+0x1c>)
 80004d6:	681b      	ldr	r3, [r3, #0]
 80004d8:	2202      	movs	r2, #2
 80004da:	4013      	ands	r3, r2
 80004dc:	3b02      	subs	r3, #2
 80004de:	425a      	negs	r2, r3
 80004e0:	4153      	adcs	r3, r2
 80004e2:	b2db      	uxtb	r3, r3
 80004e4:	0018      	movs	r0, r3
 80004e6:	46bd      	mov	sp, r7
 80004e8:	bd80      	pop	{r7, pc}
 80004ea:	46c0      	nop			; (mov r8, r8)
 80004ec:	40021000 	.word	0x40021000

080004f0 <LL_RCC_LSI_Enable>:
 80004f0:	b580      	push	{r7, lr}
 80004f2:	af00      	add	r7, sp, #0
 80004f4:	4b04      	ldr	r3, [pc, #16]	; (8000508 <LL_RCC_LSI_Enable+0x18>)
 80004f6:	4a04      	ldr	r2, [pc, #16]	; (8000508 <LL_RCC_LSI_Enable+0x18>)
 80004f8:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80004fa:	2101      	movs	r1, #1
 80004fc:	430a      	orrs	r2, r1
 80004fe:	625a      	str	r2, [r3, #36]	; 0x24
 8000500:	46c0      	nop			; (mov r8, r8)
 8000502:	46bd      	mov	sp, r7
 8000504:	bd80      	pop	{r7, pc}
 8000506:	46c0      	nop			; (mov r8, r8)
 8000508:	40021000 	.word	0x40021000

0800050c <LL_RCC_LSI_IsReady>:
 800050c:	b580      	push	{r7, lr}
 800050e:	af00      	add	r7, sp, #0
 8000510:	4b05      	ldr	r3, [pc, #20]	; (8000528 <LL_RCC_LSI_IsReady+0x1c>)
 8000512:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000514:	2202      	movs	r2, #2
 8000516:	4013      	ands	r3, r2
 8000518:	3b02      	subs	r3, #2
 800051a:	425a      	negs	r2, r3
 800051c:	4153      	adcs	r3, r2
 800051e:	b2db      	uxtb	r3, r3
 8000520:	0018      	movs	r0, r3
 8000522:	46bd      	mov	sp, r7
 8000524:	bd80      	pop	{r7, pc}
 8000526:	46c0      	nop			; (mov r8, r8)
 8000528:	40021000 	.word	0x40021000

0800052c <LL_RCC_SetSysClkSource>:
 800052c:	b580      	push	{r7, lr}
 800052e:	b082      	sub	sp, #8
 8000530:	af00      	add	r7, sp, #0
 8000532:	6078      	str	r0, [r7, #4]
 8000534:	4b06      	ldr	r3, [pc, #24]	; (8000550 <LL_RCC_SetSysClkSource+0x24>)
 8000536:	4a06      	ldr	r2, [pc, #24]	; (8000550 <LL_RCC_SetSysClkSource+0x24>)
 8000538:	6852      	ldr	r2, [r2, #4]
 800053a:	2103      	movs	r1, #3
 800053c:	438a      	bics	r2, r1
 800053e:	0011      	movs	r1, r2
 8000540:	687a      	ldr	r2, [r7, #4]
 8000542:	430a      	orrs	r2, r1
 8000544:	605a      	str	r2, [r3, #4]
 8000546:	46c0      	nop			; (mov r8, r8)
 8000548:	46bd      	mov	sp, r7
 800054a:	b002      	add	sp, #8
 800054c:	bd80      	pop	{r7, pc}
 800054e:	46c0      	nop			; (mov r8, r8)
 8000550:	40021000 	.word	0x40021000

08000554 <LL_RCC_GetSysClkSource>:
 8000554:	b580      	push	{r7, lr}
 8000556:	af00      	add	r7, sp, #0
 8000558:	4b03      	ldr	r3, [pc, #12]	; (8000568 <LL_RCC_GetSysClkSource+0x14>)
 800055a:	685b      	ldr	r3, [r3, #4]
 800055c:	220c      	movs	r2, #12
 800055e:	4013      	ands	r3, r2
 8000560:	0018      	movs	r0, r3
 8000562:	46bd      	mov	sp, r7
 8000564:	bd80      	pop	{r7, pc}
 8000566:	46c0      	nop			; (mov r8, r8)
 8000568:	40021000 	.word	0x40021000

0800056c <LL_RCC_SetAHBPrescaler>:
 800056c:	b580      	push	{r7, lr}
 800056e:	b082      	sub	sp, #8
 8000570:	af00      	add	r7, sp, #0
 8000572:	6078      	str	r0, [r7, #4]
 8000574:	4b06      	ldr	r3, [pc, #24]	; (8000590 <LL_RCC_SetAHBPrescaler+0x24>)
 8000576:	4a06      	ldr	r2, [pc, #24]	; (8000590 <LL_RCC_SetAHBPrescaler+0x24>)
 8000578:	6852      	ldr	r2, [r2, #4]
 800057a:	21f0      	movs	r1, #240	; 0xf0
 800057c:	438a      	bics	r2, r1
 800057e:	0011      	movs	r1, r2
 8000580:	687a      	ldr	r2, [r7, #4]
 8000582:	430a      	orrs	r2, r1
 8000584:	605a      	str	r2, [r3, #4]
 8000586:	46c0      	nop			; (mov r8, r8)
 8000588:	46bd      	mov	sp, r7
 800058a:	b002      	add	sp, #8
 800058c:	bd80      	pop	{r7, pc}
 800058e:	46c0      	nop			; (mov r8, r8)
 8000590:	40021000 	.word	0x40021000

08000594 <LL_RCC_SetAPB1Prescaler>:
 8000594:	b580      	push	{r7, lr}
 8000596:	b082      	sub	sp, #8
 8000598:	af00      	add	r7, sp, #0
 800059a:	6078      	str	r0, [r7, #4]
 800059c:	4b05      	ldr	r3, [pc, #20]	; (80005b4 <LL_RCC_SetAPB1Prescaler+0x20>)
 800059e:	4a05      	ldr	r2, [pc, #20]	; (80005b4 <LL_RCC_SetAPB1Prescaler+0x20>)
 80005a0:	6852      	ldr	r2, [r2, #4]
 80005a2:	4905      	ldr	r1, [pc, #20]	; (80005b8 <LL_RCC_SetAPB1Prescaler+0x24>)
 80005a4:	4011      	ands	r1, r2
 80005a6:	687a      	ldr	r2, [r7, #4]
 80005a8:	430a      	orrs	r2, r1
 80005aa:	605a      	str	r2, [r3, #4]
 80005ac:	46c0      	nop			; (mov r8, r8)
 80005ae:	46bd      	mov	sp, r7
 80005b0:	b002      	add	sp, #8
 80005b2:	bd80      	pop	{r7, pc}
 80005b4:	40021000 	.word	0x40021000
 80005b8:	fffff8ff 	.word	0xfffff8ff

080005bc <LL_RCC_SetRTCClockSource>:
 80005bc:	b580      	push	{r7, lr}
 80005be:	b082      	sub	sp, #8
 80005c0:	af00      	add	r7, sp, #0
 80005c2:	6078      	str	r0, [r7, #4]
 80005c4:	4b05      	ldr	r3, [pc, #20]	; (80005dc <LL_RCC_SetRTCClockSource+0x20>)
 80005c6:	4a05      	ldr	r2, [pc, #20]	; (80005dc <LL_RCC_SetRTCClockSource+0x20>)
 80005c8:	6a12      	ldr	r2, [r2, #32]
 80005ca:	4905      	ldr	r1, [pc, #20]	; (80005e0 <LL_RCC_SetRTCClockSource+0x24>)
 80005cc:	4011      	ands	r1, r2
 80005ce:	687a      	ldr	r2, [r7, #4]
 80005d0:	430a      	orrs	r2, r1
 80005d2:	621a      	str	r2, [r3, #32]
 80005d4:	46c0      	nop			; (mov r8, r8)
 80005d6:	46bd      	mov	sp, r7
 80005d8:	b002      	add	sp, #8
 80005da:	bd80      	pop	{r7, pc}
 80005dc:	40021000 	.word	0x40021000
 80005e0:	fffffcff 	.word	0xfffffcff

080005e4 <LL_RCC_EnableRTC>:
 80005e4:	b580      	push	{r7, lr}
 80005e6:	af00      	add	r7, sp, #0
 80005e8:	4b04      	ldr	r3, [pc, #16]	; (80005fc <LL_RCC_EnableRTC+0x18>)
 80005ea:	4a04      	ldr	r2, [pc, #16]	; (80005fc <LL_RCC_EnableRTC+0x18>)
 80005ec:	6a12      	ldr	r2, [r2, #32]
 80005ee:	2180      	movs	r1, #128	; 0x80
 80005f0:	0209      	lsls	r1, r1, #8
 80005f2:	430a      	orrs	r2, r1
 80005f4:	621a      	str	r2, [r3, #32]
 80005f6:	46c0      	nop			; (mov r8, r8)
 80005f8:	46bd      	mov	sp, r7
 80005fa:	bd80      	pop	{r7, pc}
 80005fc:	40021000 	.word	0x40021000

08000600 <LL_RCC_PLL_Enable>:
 8000600:	b580      	push	{r7, lr}
 8000602:	af00      	add	r7, sp, #0
 8000604:	4b04      	ldr	r3, [pc, #16]	; (8000618 <LL_RCC_PLL_Enable+0x18>)
 8000606:	4a04      	ldr	r2, [pc, #16]	; (8000618 <LL_RCC_PLL_Enable+0x18>)
 8000608:	6812      	ldr	r2, [r2, #0]
 800060a:	2180      	movs	r1, #128	; 0x80
 800060c:	0449      	lsls	r1, r1, #17
 800060e:	430a      	orrs	r2, r1
 8000610:	601a      	str	r2, [r3, #0]
 8000612:	46c0      	nop			; (mov r8, r8)
 8000614:	46bd      	mov	sp, r7
 8000616:	bd80      	pop	{r7, pc}
 8000618:	40021000 	.word	0x40021000

0800061c <LL_RCC_PLL_IsReady>:
 800061c:	b580      	push	{r7, lr}
 800061e:	af00      	add	r7, sp, #0
 8000620:	4b07      	ldr	r3, [pc, #28]	; (8000640 <LL_RCC_PLL_IsReady+0x24>)
 8000622:	681a      	ldr	r2, [r3, #0]
 8000624:	2380      	movs	r3, #128	; 0x80
 8000626:	049b      	lsls	r3, r3, #18
 8000628:	4013      	ands	r3, r2
 800062a:	22fe      	movs	r2, #254	; 0xfe
 800062c:	0612      	lsls	r2, r2, #24
 800062e:	4694      	mov	ip, r2
 8000630:	4463      	add	r3, ip
 8000632:	425a      	negs	r2, r3
 8000634:	4153      	adcs	r3, r2
 8000636:	b2db      	uxtb	r3, r3
 8000638:	0018      	movs	r0, r3
 800063a:	46bd      	mov	sp, r7
 800063c:	bd80      	pop	{r7, pc}
 800063e:	46c0      	nop			; (mov r8, r8)
 8000640:	40021000 	.word	0x40021000

08000644 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000644:	b580      	push	{r7, lr}
 8000646:	b082      	sub	sp, #8
 8000648:	af00      	add	r7, sp, #0
 800064a:	6078      	str	r0, [r7, #4]
 800064c:	6039      	str	r1, [r7, #0]
 800064e:	4b0e      	ldr	r3, [pc, #56]	; (8000688 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000650:	4a0d      	ldr	r2, [pc, #52]	; (8000688 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000652:	6852      	ldr	r2, [r2, #4]
 8000654:	490d      	ldr	r1, [pc, #52]	; (800068c <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000656:	4011      	ands	r1, r2
 8000658:	6878      	ldr	r0, [r7, #4]
 800065a:	2280      	movs	r2, #128	; 0x80
 800065c:	0252      	lsls	r2, r2, #9
 800065e:	4010      	ands	r0, r2
 8000660:	683a      	ldr	r2, [r7, #0]
 8000662:	4302      	orrs	r2, r0
 8000664:	430a      	orrs	r2, r1
 8000666:	605a      	str	r2, [r3, #4]
 8000668:	4b07      	ldr	r3, [pc, #28]	; (8000688 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800066a:	4a07      	ldr	r2, [pc, #28]	; (8000688 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800066c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800066e:	210f      	movs	r1, #15
 8000670:	438a      	bics	r2, r1
 8000672:	0011      	movs	r1, r2
 8000674:	687a      	ldr	r2, [r7, #4]
 8000676:	200f      	movs	r0, #15
 8000678:	4002      	ands	r2, r0
 800067a:	430a      	orrs	r2, r1
 800067c:	62da      	str	r2, [r3, #44]	; 0x2c
 800067e:	46c0      	nop			; (mov r8, r8)
 8000680:	46bd      	mov	sp, r7
 8000682:	b002      	add	sp, #8
 8000684:	bd80      	pop	{r7, pc}
 8000686:	46c0      	nop			; (mov r8, r8)
 8000688:	40021000 	.word	0x40021000
 800068c:	ffc2ffff 	.word	0xffc2ffff

08000690 <LL_FLASH_SetLatency>:
 8000690:	b580      	push	{r7, lr}
 8000692:	b082      	sub	sp, #8
 8000694:	af00      	add	r7, sp, #0
 8000696:	6078      	str	r0, [r7, #4]
 8000698:	4b06      	ldr	r3, [pc, #24]	; (80006b4 <LL_FLASH_SetLatency+0x24>)
 800069a:	4a06      	ldr	r2, [pc, #24]	; (80006b4 <LL_FLASH_SetLatency+0x24>)
 800069c:	6812      	ldr	r2, [r2, #0]
 800069e:	2101      	movs	r1, #1
 80006a0:	438a      	bics	r2, r1
 80006a2:	0011      	movs	r1, r2
 80006a4:	687a      	ldr	r2, [r7, #4]
 80006a6:	430a      	orrs	r2, r1
 80006a8:	601a      	str	r2, [r3, #0]
 80006aa:	46c0      	nop			; (mov r8, r8)
 80006ac:	46bd      	mov	sp, r7
 80006ae:	b002      	add	sp, #8
 80006b0:	bd80      	pop	{r7, pc}
 80006b2:	46c0      	nop			; (mov r8, r8)
 80006b4:	40022000 	.word	0x40022000

080006b8 <LL_AHB1_GRP1_EnableClock>:
 80006b8:	b580      	push	{r7, lr}
 80006ba:	b084      	sub	sp, #16
 80006bc:	af00      	add	r7, sp, #0
 80006be:	6078      	str	r0, [r7, #4]
 80006c0:	4b07      	ldr	r3, [pc, #28]	; (80006e0 <LL_AHB1_GRP1_EnableClock+0x28>)
 80006c2:	4a07      	ldr	r2, [pc, #28]	; (80006e0 <LL_AHB1_GRP1_EnableClock+0x28>)
 80006c4:	6951      	ldr	r1, [r2, #20]
 80006c6:	687a      	ldr	r2, [r7, #4]
 80006c8:	430a      	orrs	r2, r1
 80006ca:	615a      	str	r2, [r3, #20]
 80006cc:	4b04      	ldr	r3, [pc, #16]	; (80006e0 <LL_AHB1_GRP1_EnableClock+0x28>)
 80006ce:	695b      	ldr	r3, [r3, #20]
 80006d0:	687a      	ldr	r2, [r7, #4]
 80006d2:	4013      	ands	r3, r2
 80006d4:	60fb      	str	r3, [r7, #12]
 80006d6:	68fb      	ldr	r3, [r7, #12]
 80006d8:	46c0      	nop			; (mov r8, r8)
 80006da:	46bd      	mov	sp, r7
 80006dc:	b004      	add	sp, #16
 80006de:	bd80      	pop	{r7, pc}
 80006e0:	40021000 	.word	0x40021000

080006e4 <LL_APB1_GRP1_EnableClock>:
 80006e4:	b580      	push	{r7, lr}
 80006e6:	b084      	sub	sp, #16
 80006e8:	af00      	add	r7, sp, #0
 80006ea:	6078      	str	r0, [r7, #4]
 80006ec:	4b07      	ldr	r3, [pc, #28]	; (800070c <LL_APB1_GRP1_EnableClock+0x28>)
 80006ee:	4a07      	ldr	r2, [pc, #28]	; (800070c <LL_APB1_GRP1_EnableClock+0x28>)
 80006f0:	69d1      	ldr	r1, [r2, #28]
 80006f2:	687a      	ldr	r2, [r7, #4]
 80006f4:	430a      	orrs	r2, r1
 80006f6:	61da      	str	r2, [r3, #28]
 80006f8:	4b04      	ldr	r3, [pc, #16]	; (800070c <LL_APB1_GRP1_EnableClock+0x28>)
 80006fa:	69db      	ldr	r3, [r3, #28]
 80006fc:	687a      	ldr	r2, [r7, #4]
 80006fe:	4013      	ands	r3, r2
 8000700:	60fb      	str	r3, [r7, #12]
 8000702:	68fb      	ldr	r3, [r7, #12]
 8000704:	46c0      	nop			; (mov r8, r8)
 8000706:	46bd      	mov	sp, r7
 8000708:	b004      	add	sp, #16
 800070a:	bd80      	pop	{r7, pc}
 800070c:	40021000 	.word	0x40021000

08000710 <LL_GPIO_SetPinMode>:
 8000710:	b580      	push	{r7, lr}
 8000712:	b084      	sub	sp, #16
 8000714:	af00      	add	r7, sp, #0
 8000716:	60f8      	str	r0, [r7, #12]
 8000718:	60b9      	str	r1, [r7, #8]
 800071a:	607a      	str	r2, [r7, #4]
 800071c:	68fb      	ldr	r3, [r7, #12]
 800071e:	6819      	ldr	r1, [r3, #0]
 8000720:	68bb      	ldr	r3, [r7, #8]
 8000722:	68ba      	ldr	r2, [r7, #8]
 8000724:	435a      	muls	r2, r3
 8000726:	0013      	movs	r3, r2
 8000728:	005b      	lsls	r3, r3, #1
 800072a:	189b      	adds	r3, r3, r2
 800072c:	43db      	mvns	r3, r3
 800072e:	400b      	ands	r3, r1
 8000730:	001a      	movs	r2, r3
 8000732:	68bb      	ldr	r3, [r7, #8]
 8000734:	68b9      	ldr	r1, [r7, #8]
 8000736:	434b      	muls	r3, r1
 8000738:	6879      	ldr	r1, [r7, #4]
 800073a:	434b      	muls	r3, r1
 800073c:	431a      	orrs	r2, r3
 800073e:	68fb      	ldr	r3, [r7, #12]
 8000740:	601a      	str	r2, [r3, #0]
 8000742:	46c0      	nop			; (mov r8, r8)
 8000744:	46bd      	mov	sp, r7
 8000746:	b004      	add	sp, #16
 8000748:	bd80      	pop	{r7, pc}

0800074a <LL_GPIO_WriteOutputPort>:
 800074a:	b580      	push	{r7, lr}
 800074c:	b082      	sub	sp, #8
 800074e:	af00      	add	r7, sp, #0
 8000750:	6078      	str	r0, [r7, #4]
 8000752:	6039      	str	r1, [r7, #0]
 8000754:	687b      	ldr	r3, [r7, #4]
 8000756:	683a      	ldr	r2, [r7, #0]
 8000758:	615a      	str	r2, [r3, #20]
 800075a:	46c0      	nop			; (mov r8, r8)
 800075c:	46bd      	mov	sp, r7
 800075e:	b002      	add	sp, #8
 8000760:	bd80      	pop	{r7, pc}

08000762 <LL_GPIO_ReadOutputPort>:
 8000762:	b580      	push	{r7, lr}
 8000764:	b082      	sub	sp, #8
 8000766:	af00      	add	r7, sp, #0
 8000768:	6078      	str	r0, [r7, #4]
 800076a:	687b      	ldr	r3, [r7, #4]
 800076c:	695b      	ldr	r3, [r3, #20]
 800076e:	0018      	movs	r0, r3
 8000770:	46bd      	mov	sp, r7
 8000772:	b002      	add	sp, #8
 8000774:	bd80      	pop	{r7, pc}

08000776 <LL_GPIO_SetOutputPin>:
 8000776:	b580      	push	{r7, lr}
 8000778:	b082      	sub	sp, #8
 800077a:	af00      	add	r7, sp, #0
 800077c:	6078      	str	r0, [r7, #4]
 800077e:	6039      	str	r1, [r7, #0]
 8000780:	687b      	ldr	r3, [r7, #4]
 8000782:	683a      	ldr	r2, [r7, #0]
 8000784:	619a      	str	r2, [r3, #24]
 8000786:	46c0      	nop			; (mov r8, r8)
 8000788:	46bd      	mov	sp, r7
 800078a:	b002      	add	sp, #8
 800078c:	bd80      	pop	{r7, pc}
	...

08000790 <LL_SYSTICK_EnableIT>:
 8000790:	b580      	push	{r7, lr}
 8000792:	af00      	add	r7, sp, #0
 8000794:	4b04      	ldr	r3, [pc, #16]	; (80007a8 <LL_SYSTICK_EnableIT+0x18>)
 8000796:	4a04      	ldr	r2, [pc, #16]	; (80007a8 <LL_SYSTICK_EnableIT+0x18>)
 8000798:	6812      	ldr	r2, [r2, #0]
 800079a:	2102      	movs	r1, #2
 800079c:	430a      	orrs	r2, r1
 800079e:	601a      	str	r2, [r3, #0]
 80007a0:	46c0      	nop			; (mov r8, r8)
 80007a2:	46bd      	mov	sp, r7
 80007a4:	bd80      	pop	{r7, pc}
 80007a6:	46c0      	nop			; (mov r8, r8)
 80007a8:	e000e010 	.word	0xe000e010

080007ac <LL_InitTick>:
 80007ac:	b590      	push	{r4, r7, lr}
 80007ae:	b083      	sub	sp, #12
 80007b0:	af00      	add	r7, sp, #0
 80007b2:	6078      	str	r0, [r7, #4]
 80007b4:	6039      	str	r1, [r7, #0]
 80007b6:	4c09      	ldr	r4, [pc, #36]	; (80007dc <LL_InitTick+0x30>)
 80007b8:	6839      	ldr	r1, [r7, #0]
 80007ba:	6878      	ldr	r0, [r7, #4]
 80007bc:	f7ff fccc 	bl	8000158 <__udivsi3>
 80007c0:	0003      	movs	r3, r0
 80007c2:	3b01      	subs	r3, #1
 80007c4:	6063      	str	r3, [r4, #4]
 80007c6:	4b05      	ldr	r3, [pc, #20]	; (80007dc <LL_InitTick+0x30>)
 80007c8:	2200      	movs	r2, #0
 80007ca:	609a      	str	r2, [r3, #8]
 80007cc:	4b03      	ldr	r3, [pc, #12]	; (80007dc <LL_InitTick+0x30>)
 80007ce:	2205      	movs	r2, #5
 80007d0:	601a      	str	r2, [r3, #0]
 80007d2:	46c0      	nop			; (mov r8, r8)
 80007d4:	46bd      	mov	sp, r7
 80007d6:	b003      	add	sp, #12
 80007d8:	bd90      	pop	{r4, r7, pc}
 80007da:	46c0      	nop			; (mov r8, r8)
 80007dc:	e000e010 	.word	0xe000e010

080007e0 <gpio_ind7_config>:
 80007e0:	b580      	push	{r7, lr}
 80007e2:	af00      	add	r7, sp, #0
 80007e4:	2380      	movs	r3, #128	; 0x80
 80007e6:	02db      	lsls	r3, r3, #11
 80007e8:	0018      	movs	r0, r3
 80007ea:	f7ff ff65 	bl	80006b8 <LL_AHB1_GRP1_EnableClock>
 80007ee:	4b2e      	ldr	r3, [pc, #184]	; (80008a8 <gpio_ind7_config+0xc8>)
 80007f0:	2201      	movs	r2, #1
 80007f2:	2101      	movs	r1, #1
 80007f4:	0018      	movs	r0, r3
 80007f6:	f7ff ff8b 	bl	8000710 <LL_GPIO_SetPinMode>
 80007fa:	4b2b      	ldr	r3, [pc, #172]	; (80008a8 <gpio_ind7_config+0xc8>)
 80007fc:	2201      	movs	r2, #1
 80007fe:	2102      	movs	r1, #2
 8000800:	0018      	movs	r0, r3
 8000802:	f7ff ff85 	bl	8000710 <LL_GPIO_SetPinMode>
 8000806:	4b28      	ldr	r3, [pc, #160]	; (80008a8 <gpio_ind7_config+0xc8>)
 8000808:	2201      	movs	r2, #1
 800080a:	2104      	movs	r1, #4
 800080c:	0018      	movs	r0, r3
 800080e:	f7ff ff7f 	bl	8000710 <LL_GPIO_SetPinMode>
 8000812:	4b25      	ldr	r3, [pc, #148]	; (80008a8 <gpio_ind7_config+0xc8>)
 8000814:	2201      	movs	r2, #1
 8000816:	2108      	movs	r1, #8
 8000818:	0018      	movs	r0, r3
 800081a:	f7ff ff79 	bl	8000710 <LL_GPIO_SetPinMode>
 800081e:	4b22      	ldr	r3, [pc, #136]	; (80008a8 <gpio_ind7_config+0xc8>)
 8000820:	2201      	movs	r2, #1
 8000822:	2110      	movs	r1, #16
 8000824:	0018      	movs	r0, r3
 8000826:	f7ff ff73 	bl	8000710 <LL_GPIO_SetPinMode>
 800082a:	4b1f      	ldr	r3, [pc, #124]	; (80008a8 <gpio_ind7_config+0xc8>)
 800082c:	2201      	movs	r2, #1
 800082e:	2120      	movs	r1, #32
 8000830:	0018      	movs	r0, r3
 8000832:	f7ff ff6d 	bl	8000710 <LL_GPIO_SetPinMode>
 8000836:	4b1c      	ldr	r3, [pc, #112]	; (80008a8 <gpio_ind7_config+0xc8>)
 8000838:	2201      	movs	r2, #1
 800083a:	2140      	movs	r1, #64	; 0x40
 800083c:	0018      	movs	r0, r3
 800083e:	f7ff ff67 	bl	8000710 <LL_GPIO_SetPinMode>
 8000842:	4b19      	ldr	r3, [pc, #100]	; (80008a8 <gpio_ind7_config+0xc8>)
 8000844:	2201      	movs	r2, #1
 8000846:	2180      	movs	r1, #128	; 0x80
 8000848:	0018      	movs	r0, r3
 800084a:	f7ff ff61 	bl	8000710 <LL_GPIO_SetPinMode>
 800084e:	2380      	movs	r3, #128	; 0x80
 8000850:	029b      	lsls	r3, r3, #10
 8000852:	0018      	movs	r0, r3
 8000854:	f7ff ff30 	bl	80006b8 <LL_AHB1_GRP1_EnableClock>
 8000858:	2390      	movs	r3, #144	; 0x90
 800085a:	05db      	lsls	r3, r3, #23
 800085c:	2200      	movs	r2, #0
 800085e:	2101      	movs	r1, #1
 8000860:	0018      	movs	r0, r3
 8000862:	f7ff ff55 	bl	8000710 <LL_GPIO_SetPinMode>
 8000866:	2380      	movs	r3, #128	; 0x80
 8000868:	031b      	lsls	r3, r3, #12
 800086a:	0018      	movs	r0, r3
 800086c:	f7ff ff24 	bl	80006b8 <LL_AHB1_GRP1_EnableClock>
 8000870:	4b0e      	ldr	r3, [pc, #56]	; (80008ac <gpio_ind7_config+0xcc>)
 8000872:	2201      	movs	r2, #1
 8000874:	2101      	movs	r1, #1
 8000876:	0018      	movs	r0, r3
 8000878:	f7ff ff4a 	bl	8000710 <LL_GPIO_SetPinMode>
 800087c:	4b0b      	ldr	r3, [pc, #44]	; (80008ac <gpio_ind7_config+0xcc>)
 800087e:	2201      	movs	r2, #1
 8000880:	2102      	movs	r1, #2
 8000882:	0018      	movs	r0, r3
 8000884:	f7ff ff44 	bl	8000710 <LL_GPIO_SetPinMode>
 8000888:	4b08      	ldr	r3, [pc, #32]	; (80008ac <gpio_ind7_config+0xcc>)
 800088a:	2201      	movs	r2, #1
 800088c:	2104      	movs	r1, #4
 800088e:	0018      	movs	r0, r3
 8000890:	f7ff ff3e 	bl	8000710 <LL_GPIO_SetPinMode>
 8000894:	4b05      	ldr	r3, [pc, #20]	; (80008ac <gpio_ind7_config+0xcc>)
 8000896:	2201      	movs	r2, #1
 8000898:	2108      	movs	r1, #8
 800089a:	0018      	movs	r0, r3
 800089c:	f7ff ff38 	bl	8000710 <LL_GPIO_SetPinMode>
 80008a0:	46c0      	nop			; (mov r8, r8)
 80008a2:	46bd      	mov	sp, r7
 80008a4:	bd80      	pop	{r7, pc}
 80008a6:	46c0      	nop			; (mov r8, r8)
 80008a8:	48000400 	.word	0x48000400
 80008ac:	48000800 	.word	0x48000800

080008b0 <set_indicator>:
 80008b0:	b590      	push	{r4, r7, lr}
 80008b2:	b085      	sub	sp, #20
 80008b4:	af00      	add	r7, sp, #0
 80008b6:	6078      	str	r0, [r7, #4]
 80008b8:	000a      	movs	r2, r1
 80008ba:	1cfb      	adds	r3, r7, #3
 80008bc:	701a      	strb	r2, [r3, #0]
 80008be:	4b25      	ldr	r3, [pc, #148]	; (8000954 <set_indicator+0xa4>)
 80008c0:	0018      	movs	r0, r3
 80008c2:	f7ff ff4e 	bl	8000762 <LL_GPIO_ReadOutputPort>
 80008c6:	0003      	movs	r3, r0
 80008c8:	60fb      	str	r3, [r7, #12]
 80008ca:	4b23      	ldr	r3, [pc, #140]	; (8000958 <set_indicator+0xa8>)
 80008cc:	681b      	ldr	r3, [r3, #0]
 80008ce:	43db      	mvns	r3, r3
 80008d0:	001a      	movs	r2, r3
 80008d2:	68fb      	ldr	r3, [r7, #12]
 80008d4:	4013      	ands	r3, r2
 80008d6:	001c      	movs	r4, r3
 80008d8:	687b      	ldr	r3, [r7, #4]
 80008da:	220f      	movs	r2, #15
 80008dc:	4013      	ands	r3, r2
 80008de:	210a      	movs	r1, #10
 80008e0:	0018      	movs	r0, r3
 80008e2:	f7ff fcbf 	bl	8000264 <__aeabi_uidivmod>
 80008e6:	000b      	movs	r3, r1
 80008e8:	001a      	movs	r2, r3
 80008ea:	4b1c      	ldr	r3, [pc, #112]	; (800095c <set_indicator+0xac>)
 80008ec:	0092      	lsls	r2, r2, #2
 80008ee:	58d3      	ldr	r3, [r2, r3]
 80008f0:	4323      	orrs	r3, r4
 80008f2:	60fb      	str	r3, [r7, #12]
 80008f4:	687b      	ldr	r3, [r7, #4]
 80008f6:	2210      	movs	r2, #16
 80008f8:	4013      	ands	r3, r2
 80008fa:	d003      	beq.n	8000904 <set_indicator+0x54>
 80008fc:	68fb      	ldr	r3, [r7, #12]
 80008fe:	2280      	movs	r2, #128	; 0x80
 8000900:	4313      	orrs	r3, r2
 8000902:	60fb      	str	r3, [r7, #12]
 8000904:	68fb      	ldr	r3, [r7, #12]
 8000906:	4a13      	ldr	r2, [pc, #76]	; (8000954 <set_indicator+0xa4>)
 8000908:	0019      	movs	r1, r3
 800090a:	0010      	movs	r0, r2
 800090c:	f7ff ff1d 	bl	800074a <LL_GPIO_WriteOutputPort>
 8000910:	4b13      	ldr	r3, [pc, #76]	; (8000960 <set_indicator+0xb0>)
 8000912:	0018      	movs	r0, r3
 8000914:	f7ff ff25 	bl	8000762 <LL_GPIO_ReadOutputPort>
 8000918:	0003      	movs	r3, r0
 800091a:	60fb      	str	r3, [r7, #12]
 800091c:	4b11      	ldr	r3, [pc, #68]	; (8000964 <set_indicator+0xb4>)
 800091e:	681b      	ldr	r3, [r3, #0]
 8000920:	43db      	mvns	r3, r3
 8000922:	001a      	movs	r2, r3
 8000924:	68fb      	ldr	r3, [r7, #12]
 8000926:	401a      	ands	r2, r3
 8000928:	1cfb      	adds	r3, r7, #3
 800092a:	7819      	ldrb	r1, [r3, #0]
 800092c:	4b0e      	ldr	r3, [pc, #56]	; (8000968 <set_indicator+0xb8>)
 800092e:	0089      	lsls	r1, r1, #2
 8000930:	58cb      	ldr	r3, [r1, r3]
 8000932:	43d9      	mvns	r1, r3
 8000934:	4b0b      	ldr	r3, [pc, #44]	; (8000964 <set_indicator+0xb4>)
 8000936:	681b      	ldr	r3, [r3, #0]
 8000938:	400b      	ands	r3, r1
 800093a:	4313      	orrs	r3, r2
 800093c:	60fb      	str	r3, [r7, #12]
 800093e:	68fb      	ldr	r3, [r7, #12]
 8000940:	4a07      	ldr	r2, [pc, #28]	; (8000960 <set_indicator+0xb0>)
 8000942:	0019      	movs	r1, r3
 8000944:	0010      	movs	r0, r2
 8000946:	f7ff ff00 	bl	800074a <LL_GPIO_WriteOutputPort>
 800094a:	46c0      	nop			; (mov r8, r8)
 800094c:	46bd      	mov	sp, r7
 800094e:	b005      	add	sp, #20
 8000950:	bd90      	pop	{r4, r7, pc}
 8000952:	46c0      	nop			; (mov r8, r8)
 8000954:	48000400 	.word	0x48000400
 8000958:	20000434 	.word	0x20000434
 800095c:	08000f3c 	.word	0x08000f3c
 8000960:	48000800 	.word	0x48000800
 8000964:	20000438 	.word	0x20000438
 8000968:	08000f64 	.word	0x08000f64

0800096c <LL_PWR_EnableBkUpAccess>:
 800096c:	b580      	push	{r7, lr}
 800096e:	af00      	add	r7, sp, #0
 8000970:	4b04      	ldr	r3, [pc, #16]	; (8000984 <LL_PWR_EnableBkUpAccess+0x18>)
 8000972:	4a04      	ldr	r2, [pc, #16]	; (8000984 <LL_PWR_EnableBkUpAccess+0x18>)
 8000974:	6812      	ldr	r2, [r2, #0]
 8000976:	2180      	movs	r1, #128	; 0x80
 8000978:	0049      	lsls	r1, r1, #1
 800097a:	430a      	orrs	r2, r1
 800097c:	601a      	str	r2, [r3, #0]
 800097e:	46c0      	nop			; (mov r8, r8)
 8000980:	46bd      	mov	sp, r7
 8000982:	bd80      	pop	{r7, pc}
 8000984:	40007000 	.word	0x40007000

08000988 <LL_RTC_SetHourFormat>:
 8000988:	b580      	push	{r7, lr}
 800098a:	b082      	sub	sp, #8
 800098c:	af00      	add	r7, sp, #0
 800098e:	6078      	str	r0, [r7, #4]
 8000990:	6039      	str	r1, [r7, #0]
 8000992:	687b      	ldr	r3, [r7, #4]
 8000994:	689b      	ldr	r3, [r3, #8]
 8000996:	2240      	movs	r2, #64	; 0x40
 8000998:	4393      	bics	r3, r2
 800099a:	001a      	movs	r2, r3
 800099c:	683b      	ldr	r3, [r7, #0]
 800099e:	431a      	orrs	r2, r3
 80009a0:	687b      	ldr	r3, [r7, #4]
 80009a2:	609a      	str	r2, [r3, #8]
 80009a4:	46c0      	nop			; (mov r8, r8)
 80009a6:	46bd      	mov	sp, r7
 80009a8:	b002      	add	sp, #8
 80009aa:	bd80      	pop	{r7, pc}

080009ac <LL_RTC_EnableInitMode>:
 80009ac:	b580      	push	{r7, lr}
 80009ae:	b082      	sub	sp, #8
 80009b0:	af00      	add	r7, sp, #0
 80009b2:	6078      	str	r0, [r7, #4]
 80009b4:	687b      	ldr	r3, [r7, #4]
 80009b6:	2201      	movs	r2, #1
 80009b8:	4252      	negs	r2, r2
 80009ba:	60da      	str	r2, [r3, #12]
 80009bc:	46c0      	nop			; (mov r8, r8)
 80009be:	46bd      	mov	sp, r7
 80009c0:	b002      	add	sp, #8
 80009c2:	bd80      	pop	{r7, pc}

080009c4 <LL_RTC_DisableInitMode>:
 80009c4:	b580      	push	{r7, lr}
 80009c6:	b082      	sub	sp, #8
 80009c8:	af00      	add	r7, sp, #0
 80009ca:	6078      	str	r0, [r7, #4]
 80009cc:	687b      	ldr	r3, [r7, #4]
 80009ce:	2281      	movs	r2, #129	; 0x81
 80009d0:	4252      	negs	r2, r2
 80009d2:	60da      	str	r2, [r3, #12]
 80009d4:	46c0      	nop			; (mov r8, r8)
 80009d6:	46bd      	mov	sp, r7
 80009d8:	b002      	add	sp, #8
 80009da:	bd80      	pop	{r7, pc}

080009dc <LL_RTC_EnableShadowRegBypass>:
 80009dc:	b580      	push	{r7, lr}
 80009de:	b082      	sub	sp, #8
 80009e0:	af00      	add	r7, sp, #0
 80009e2:	6078      	str	r0, [r7, #4]
 80009e4:	687b      	ldr	r3, [r7, #4]
 80009e6:	689b      	ldr	r3, [r3, #8]
 80009e8:	2220      	movs	r2, #32
 80009ea:	431a      	orrs	r2, r3
 80009ec:	687b      	ldr	r3, [r7, #4]
 80009ee:	609a      	str	r2, [r3, #8]
 80009f0:	46c0      	nop			; (mov r8, r8)
 80009f2:	46bd      	mov	sp, r7
 80009f4:	b002      	add	sp, #8
 80009f6:	bd80      	pop	{r7, pc}

080009f8 <LL_RTC_SetAsynchPrescaler>:
 80009f8:	b580      	push	{r7, lr}
 80009fa:	b082      	sub	sp, #8
 80009fc:	af00      	add	r7, sp, #0
 80009fe:	6078      	str	r0, [r7, #4]
 8000a00:	6039      	str	r1, [r7, #0]
 8000a02:	687b      	ldr	r3, [r7, #4]
 8000a04:	691b      	ldr	r3, [r3, #16]
 8000a06:	4a05      	ldr	r2, [pc, #20]	; (8000a1c <LL_RTC_SetAsynchPrescaler+0x24>)
 8000a08:	401a      	ands	r2, r3
 8000a0a:	683b      	ldr	r3, [r7, #0]
 8000a0c:	041b      	lsls	r3, r3, #16
 8000a0e:	431a      	orrs	r2, r3
 8000a10:	687b      	ldr	r3, [r7, #4]
 8000a12:	611a      	str	r2, [r3, #16]
 8000a14:	46c0      	nop			; (mov r8, r8)
 8000a16:	46bd      	mov	sp, r7
 8000a18:	b002      	add	sp, #8
 8000a1a:	bd80      	pop	{r7, pc}
 8000a1c:	ff80ffff 	.word	0xff80ffff

08000a20 <LL_RTC_SetSynchPrescaler>:
 8000a20:	b580      	push	{r7, lr}
 8000a22:	b082      	sub	sp, #8
 8000a24:	af00      	add	r7, sp, #0
 8000a26:	6078      	str	r0, [r7, #4]
 8000a28:	6039      	str	r1, [r7, #0]
 8000a2a:	687b      	ldr	r3, [r7, #4]
 8000a2c:	691b      	ldr	r3, [r3, #16]
 8000a2e:	0bdb      	lsrs	r3, r3, #15
 8000a30:	03da      	lsls	r2, r3, #15
 8000a32:	683b      	ldr	r3, [r7, #0]
 8000a34:	431a      	orrs	r2, r3
 8000a36:	687b      	ldr	r3, [r7, #4]
 8000a38:	611a      	str	r2, [r3, #16]
 8000a3a:	46c0      	nop			; (mov r8, r8)
 8000a3c:	46bd      	mov	sp, r7
 8000a3e:	b002      	add	sp, #8
 8000a40:	bd80      	pop	{r7, pc}

08000a42 <LL_RTC_EnableWriteProtection>:
 8000a42:	b580      	push	{r7, lr}
 8000a44:	b082      	sub	sp, #8
 8000a46:	af00      	add	r7, sp, #0
 8000a48:	6078      	str	r0, [r7, #4]
 8000a4a:	687b      	ldr	r3, [r7, #4]
 8000a4c:	22ff      	movs	r2, #255	; 0xff
 8000a4e:	625a      	str	r2, [r3, #36]	; 0x24
 8000a50:	46c0      	nop			; (mov r8, r8)
 8000a52:	46bd      	mov	sp, r7
 8000a54:	b002      	add	sp, #8
 8000a56:	bd80      	pop	{r7, pc}

08000a58 <LL_RTC_DisableWriteProtection>:
 8000a58:	b580      	push	{r7, lr}
 8000a5a:	b082      	sub	sp, #8
 8000a5c:	af00      	add	r7, sp, #0
 8000a5e:	6078      	str	r0, [r7, #4]
 8000a60:	687b      	ldr	r3, [r7, #4]
 8000a62:	22ca      	movs	r2, #202	; 0xca
 8000a64:	625a      	str	r2, [r3, #36]	; 0x24
 8000a66:	687b      	ldr	r3, [r7, #4]
 8000a68:	2253      	movs	r2, #83	; 0x53
 8000a6a:	625a      	str	r2, [r3, #36]	; 0x24
 8000a6c:	46c0      	nop			; (mov r8, r8)
 8000a6e:	46bd      	mov	sp, r7
 8000a70:	b002      	add	sp, #8
 8000a72:	bd80      	pop	{r7, pc}

08000a74 <LL_RTC_TIME_Config>:
 8000a74:	b590      	push	{r4, r7, lr}
 8000a76:	b085      	sub	sp, #20
 8000a78:	af00      	add	r7, sp, #0
 8000a7a:	60f8      	str	r0, [r7, #12]
 8000a7c:	60b9      	str	r1, [r7, #8]
 8000a7e:	607a      	str	r2, [r7, #4]
 8000a80:	603b      	str	r3, [r7, #0]
 8000a82:	2400      	movs	r4, #0
 8000a84:	687b      	ldr	r3, [r7, #4]
 8000a86:	041a      	lsls	r2, r3, #16
 8000a88:	23ff      	movs	r3, #255	; 0xff
 8000a8a:	041b      	lsls	r3, r3, #16
 8000a8c:	401a      	ands	r2, r3
 8000a8e:	68bb      	ldr	r3, [r7, #8]
 8000a90:	431a      	orrs	r2, r3
 8000a92:	683b      	ldr	r3, [r7, #0]
 8000a94:	021b      	lsls	r3, r3, #8
 8000a96:	041b      	lsls	r3, r3, #16
 8000a98:	0c1b      	lsrs	r3, r3, #16
 8000a9a:	431a      	orrs	r2, r3
 8000a9c:	6a3b      	ldr	r3, [r7, #32]
 8000a9e:	21ff      	movs	r1, #255	; 0xff
 8000aa0:	400b      	ands	r3, r1
 8000aa2:	431a      	orrs	r2, r3
 8000aa4:	0014      	movs	r4, r2
 8000aa6:	68fb      	ldr	r3, [r7, #12]
 8000aa8:	681b      	ldr	r3, [r3, #0]
 8000aaa:	4a05      	ldr	r2, [pc, #20]	; (8000ac0 <LL_RTC_TIME_Config+0x4c>)
 8000aac:	4013      	ands	r3, r2
 8000aae:	4323      	orrs	r3, r4
 8000ab0:	001a      	movs	r2, r3
 8000ab2:	68fb      	ldr	r3, [r7, #12]
 8000ab4:	601a      	str	r2, [r3, #0]
 8000ab6:	46c0      	nop			; (mov r8, r8)
 8000ab8:	46bd      	mov	sp, r7
 8000aba:	b005      	add	sp, #20
 8000abc:	bd90      	pop	{r4, r7, pc}
 8000abe:	46c0      	nop			; (mov r8, r8)
 8000ac0:	ff808080 	.word	0xff808080

08000ac4 <LL_RTC_TIME_Get>:
 8000ac4:	b590      	push	{r4, r7, lr}
 8000ac6:	b083      	sub	sp, #12
 8000ac8:	af00      	add	r7, sp, #0
 8000aca:	6078      	str	r0, [r7, #4]
 8000acc:	2400      	movs	r4, #0
 8000ace:	687b      	ldr	r3, [r7, #4]
 8000ad0:	681b      	ldr	r3, [r3, #0]
 8000ad2:	4a0e      	ldr	r2, [pc, #56]	; (8000b0c <LL_RTC_TIME_Get+0x48>)
 8000ad4:	4013      	ands	r3, r2
 8000ad6:	001c      	movs	r4, r3
 8000ad8:	0d23      	lsrs	r3, r4, #20
 8000ada:	011b      	lsls	r3, r3, #4
 8000adc:	2230      	movs	r2, #48	; 0x30
 8000ade:	401a      	ands	r2, r3
 8000ae0:	0c23      	lsrs	r3, r4, #16
 8000ae2:	210f      	movs	r1, #15
 8000ae4:	400b      	ands	r3, r1
 8000ae6:	4313      	orrs	r3, r2
 8000ae8:	041a      	lsls	r2, r3, #16
 8000aea:	0b23      	lsrs	r3, r4, #12
 8000aec:	011b      	lsls	r3, r3, #4
 8000aee:	2170      	movs	r1, #112	; 0x70
 8000af0:	4019      	ands	r1, r3
 8000af2:	0a23      	lsrs	r3, r4, #8
 8000af4:	200f      	movs	r0, #15
 8000af6:	4003      	ands	r3, r0
 8000af8:	430b      	orrs	r3, r1
 8000afa:	021b      	lsls	r3, r3, #8
 8000afc:	431a      	orrs	r2, r3
 8000afe:	237f      	movs	r3, #127	; 0x7f
 8000b00:	4023      	ands	r3, r4
 8000b02:	4313      	orrs	r3, r2
 8000b04:	0018      	movs	r0, r3
 8000b06:	46bd      	mov	sp, r7
 8000b08:	b003      	add	sp, #12
 8000b0a:	bd90      	pop	{r4, r7, pc}
 8000b0c:	003f7f7f 	.word	0x003f7f7f

08000b10 <LL_RTC_DATE_Config>:
 8000b10:	b590      	push	{r4, r7, lr}
 8000b12:	b085      	sub	sp, #20
 8000b14:	af00      	add	r7, sp, #0
 8000b16:	60f8      	str	r0, [r7, #12]
 8000b18:	60b9      	str	r1, [r7, #8]
 8000b1a:	607a      	str	r2, [r7, #4]
 8000b1c:	603b      	str	r3, [r7, #0]
 8000b1e:	2400      	movs	r4, #0
 8000b20:	68bb      	ldr	r3, [r7, #8]
 8000b22:	035a      	lsls	r2, r3, #13
 8000b24:	6a3b      	ldr	r3, [r7, #32]
 8000b26:	0419      	lsls	r1, r3, #16
 8000b28:	23ff      	movs	r3, #255	; 0xff
 8000b2a:	041b      	lsls	r3, r3, #16
 8000b2c:	400b      	ands	r3, r1
 8000b2e:	431a      	orrs	r2, r3
 8000b30:	683b      	ldr	r3, [r7, #0]
 8000b32:	021b      	lsls	r3, r3, #8
 8000b34:	041b      	lsls	r3, r3, #16
 8000b36:	0c1b      	lsrs	r3, r3, #16
 8000b38:	431a      	orrs	r2, r3
 8000b3a:	687b      	ldr	r3, [r7, #4]
 8000b3c:	21ff      	movs	r1, #255	; 0xff
 8000b3e:	400b      	ands	r3, r1
 8000b40:	431a      	orrs	r2, r3
 8000b42:	0014      	movs	r4, r2
 8000b44:	68fb      	ldr	r3, [r7, #12]
 8000b46:	685b      	ldr	r3, [r3, #4]
 8000b48:	4a04      	ldr	r2, [pc, #16]	; (8000b5c <LL_RTC_DATE_Config+0x4c>)
 8000b4a:	4013      	ands	r3, r2
 8000b4c:	4323      	orrs	r3, r4
 8000b4e:	001a      	movs	r2, r3
 8000b50:	68fb      	ldr	r3, [r7, #12]
 8000b52:	605a      	str	r2, [r3, #4]
 8000b54:	46c0      	nop			; (mov r8, r8)
 8000b56:	46bd      	mov	sp, r7
 8000b58:	b005      	add	sp, #20
 8000b5a:	bd90      	pop	{r4, r7, pc}
 8000b5c:	ff0000c0 	.word	0xff0000c0

08000b60 <LL_RTC_IsActiveFlag_INIT>:
 8000b60:	b580      	push	{r7, lr}
 8000b62:	b082      	sub	sp, #8
 8000b64:	af00      	add	r7, sp, #0
 8000b66:	6078      	str	r0, [r7, #4]
 8000b68:	687b      	ldr	r3, [r7, #4]
 8000b6a:	68db      	ldr	r3, [r3, #12]
 8000b6c:	2240      	movs	r2, #64	; 0x40
 8000b6e:	4013      	ands	r3, r2
 8000b70:	3b40      	subs	r3, #64	; 0x40
 8000b72:	425a      	negs	r2, r3
 8000b74:	4153      	adcs	r3, r2
 8000b76:	b2db      	uxtb	r3, r3
 8000b78:	0018      	movs	r0, r3
 8000b7a:	46bd      	mov	sp, r7
 8000b7c:	b002      	add	sp, #8
 8000b7e:	bd80      	pop	{r7, pc}

08000b80 <LL_RTC_IsActiveFlag_RS>:
 8000b80:	b580      	push	{r7, lr}
 8000b82:	b082      	sub	sp, #8
 8000b84:	af00      	add	r7, sp, #0
 8000b86:	6078      	str	r0, [r7, #4]
 8000b88:	687b      	ldr	r3, [r7, #4]
 8000b8a:	68db      	ldr	r3, [r3, #12]
 8000b8c:	2220      	movs	r2, #32
 8000b8e:	4013      	ands	r3, r2
 8000b90:	3b20      	subs	r3, #32
 8000b92:	425a      	negs	r2, r3
 8000b94:	4153      	adcs	r3, r2
 8000b96:	b2db      	uxtb	r3, r3
 8000b98:	0018      	movs	r0, r3
 8000b9a:	46bd      	mov	sp, r7
 8000b9c:	b002      	add	sp, #8
 8000b9e:	bd80      	pop	{r7, pc}

08000ba0 <hex2num>:
 8000ba0:	b580      	push	{r7, lr}
 8000ba2:	b084      	sub	sp, #16
 8000ba4:	af00      	add	r7, sp, #0
 8000ba6:	6078      	str	r0, [r7, #4]
 8000ba8:	2300      	movs	r3, #0
 8000baa:	60fb      	str	r3, [r7, #12]
 8000bac:	2301      	movs	r3, #1
 8000bae:	60bb      	str	r3, [r7, #8]
 8000bb0:	e010      	b.n	8000bd4 <hex2num+0x34>
 8000bb2:	687b      	ldr	r3, [r7, #4]
 8000bb4:	220f      	movs	r2, #15
 8000bb6:	4013      	ands	r3, r2
 8000bb8:	68ba      	ldr	r2, [r7, #8]
 8000bba:	435a      	muls	r2, r3
 8000bbc:	68fb      	ldr	r3, [r7, #12]
 8000bbe:	18d3      	adds	r3, r2, r3
 8000bc0:	60fb      	str	r3, [r7, #12]
 8000bc2:	68ba      	ldr	r2, [r7, #8]
 8000bc4:	0013      	movs	r3, r2
 8000bc6:	009b      	lsls	r3, r3, #2
 8000bc8:	189b      	adds	r3, r3, r2
 8000bca:	005b      	lsls	r3, r3, #1
 8000bcc:	60bb      	str	r3, [r7, #8]
 8000bce:	687b      	ldr	r3, [r7, #4]
 8000bd0:	091b      	lsrs	r3, r3, #4
 8000bd2:	607b      	str	r3, [r7, #4]
 8000bd4:	687b      	ldr	r3, [r7, #4]
 8000bd6:	2b00      	cmp	r3, #0
 8000bd8:	d1eb      	bne.n	8000bb2 <hex2num+0x12>
 8000bda:	68fb      	ldr	r3, [r7, #12]
 8000bdc:	0018      	movs	r0, r3
 8000bde:	46bd      	mov	sp, r7
 8000be0:	b004      	add	sp, #16
 8000be2:	bd80      	pop	{r7, pc}

08000be4 <gpio_config>:
 8000be4:	b580      	push	{r7, lr}
 8000be6:	af00      	add	r7, sp, #0
 8000be8:	f7ff fdfa 	bl	80007e0 <gpio_ind7_config>
 8000bec:	2380      	movs	r3, #128	; 0x80
 8000bee:	031b      	lsls	r3, r3, #12
 8000bf0:	0018      	movs	r0, r3
 8000bf2:	f7ff fd61 	bl	80006b8 <LL_AHB1_GRP1_EnableClock>
 8000bf6:	2380      	movs	r3, #128	; 0x80
 8000bf8:	005b      	lsls	r3, r3, #1
 8000bfa:	4807      	ldr	r0, [pc, #28]	; (8000c18 <gpio_config+0x34>)
 8000bfc:	2201      	movs	r2, #1
 8000bfe:	0019      	movs	r1, r3
 8000c00:	f7ff fd86 	bl	8000710 <LL_GPIO_SetPinMode>
 8000c04:	2380      	movs	r3, #128	; 0x80
 8000c06:	009b      	lsls	r3, r3, #2
 8000c08:	4803      	ldr	r0, [pc, #12]	; (8000c18 <gpio_config+0x34>)
 8000c0a:	2201      	movs	r2, #1
 8000c0c:	0019      	movs	r1, r3
 8000c0e:	f7ff fd7f 	bl	8000710 <LL_GPIO_SetPinMode>
 8000c12:	46c0      	nop			; (mov r8, r8)
 8000c14:	46bd      	mov	sp, r7
 8000c16:	bd80      	pop	{r7, pc}
 8000c18:	48000800 	.word	0x48000800

08000c1c <rcc_config>:
 8000c1c:	b580      	push	{r7, lr}
 8000c1e:	af00      	add	r7, sp, #0
 8000c20:	2001      	movs	r0, #1
 8000c22:	f7ff fd35 	bl	8000690 <LL_FLASH_SetLatency>
 8000c26:	f7ff fc45 	bl	80004b4 <LL_RCC_HSI_Enable>
 8000c2a:	46c0      	nop			; (mov r8, r8)
 8000c2c:	f7ff fc50 	bl	80004d0 <LL_RCC_HSI_IsReady>
 8000c30:	0003      	movs	r3, r0
 8000c32:	2b01      	cmp	r3, #1
 8000c34:	d1fa      	bne.n	8000c2c <rcc_config+0x10>
 8000c36:	23a0      	movs	r3, #160	; 0xa0
 8000c38:	039b      	lsls	r3, r3, #14
 8000c3a:	0019      	movs	r1, r3
 8000c3c:	2000      	movs	r0, #0
 8000c3e:	f7ff fd01 	bl	8000644 <LL_RCC_PLL_ConfigDomain_SYS>
 8000c42:	f7ff fcdd 	bl	8000600 <LL_RCC_PLL_Enable>
 8000c46:	46c0      	nop			; (mov r8, r8)
 8000c48:	f7ff fce8 	bl	800061c <LL_RCC_PLL_IsReady>
 8000c4c:	0003      	movs	r3, r0
 8000c4e:	2b01      	cmp	r3, #1
 8000c50:	d1fa      	bne.n	8000c48 <rcc_config+0x2c>
 8000c52:	2000      	movs	r0, #0
 8000c54:	f7ff fc8a 	bl	800056c <LL_RCC_SetAHBPrescaler>
 8000c58:	2002      	movs	r0, #2
 8000c5a:	f7ff fc67 	bl	800052c <LL_RCC_SetSysClkSource>
 8000c5e:	46c0      	nop			; (mov r8, r8)
 8000c60:	f7ff fc78 	bl	8000554 <LL_RCC_GetSysClkSource>
 8000c64:	0003      	movs	r3, r0
 8000c66:	2b08      	cmp	r3, #8
 8000c68:	d1fa      	bne.n	8000c60 <rcc_config+0x44>
 8000c6a:	2000      	movs	r0, #0
 8000c6c:	f7ff fc92 	bl	8000594 <LL_RCC_SetAPB1Prescaler>
 8000c70:	4b02      	ldr	r3, [pc, #8]	; (8000c7c <rcc_config+0x60>)
 8000c72:	4a03      	ldr	r2, [pc, #12]	; (8000c80 <rcc_config+0x64>)
 8000c74:	601a      	str	r2, [r3, #0]
 8000c76:	46c0      	nop			; (mov r8, r8)
 8000c78:	46bd      	mov	sp, r7
 8000c7a:	bd80      	pop	{r7, pc}
 8000c7c:	2000043c 	.word	0x2000043c
 8000c80:	02dc6c00 	.word	0x02dc6c00

08000c84 <systick_config>:
 8000c84:	b580      	push	{r7, lr}
 8000c86:	af00      	add	r7, sp, #0
 8000c88:	23fa      	movs	r3, #250	; 0xfa
 8000c8a:	009b      	lsls	r3, r3, #2
 8000c8c:	4a07      	ldr	r2, [pc, #28]	; (8000cac <systick_config+0x28>)
 8000c8e:	0019      	movs	r1, r3
 8000c90:	0010      	movs	r0, r2
 8000c92:	f7ff fd8b 	bl	80007ac <LL_InitTick>
 8000c96:	f7ff fd7b 	bl	8000790 <LL_SYSTICK_EnableIT>
 8000c9a:	2301      	movs	r3, #1
 8000c9c:	425b      	negs	r3, r3
 8000c9e:	2100      	movs	r1, #0
 8000ca0:	0018      	movs	r0, r3
 8000ca2:	f7ff fb99 	bl	80003d8 <NVIC_SetPriority>
 8000ca6:	46c0      	nop			; (mov r8, r8)
 8000ca8:	46bd      	mov	sp, r7
 8000caa:	bd80      	pop	{r7, pc}
 8000cac:	02dc6c00 	.word	0x02dc6c00

08000cb0 <SysTick_Handler>:
 8000cb0:	b5b0      	push	{r4, r5, r7, lr}
 8000cb2:	af00      	add	r7, sp, #0
 8000cb4:	4b29      	ldr	r3, [pc, #164]	; (8000d5c <SysTick_Handler+0xac>)
 8000cb6:	0018      	movs	r0, r3
 8000cb8:	f7ff ff62 	bl	8000b80 <LL_RTC_IsActiveFlag_RS>
 8000cbc:	1e03      	subs	r3, r0, #0
 8000cbe:	d01d      	beq.n	8000cfc <SysTick_Handler+0x4c>
 8000cc0:	4b26      	ldr	r3, [pc, #152]	; (8000d5c <SysTick_Handler+0xac>)
 8000cc2:	0018      	movs	r0, r3
 8000cc4:	f7ff fefe 	bl	8000ac4 <LL_RTC_TIME_Get>
 8000cc8:	0003      	movs	r3, r0
 8000cca:	0c1b      	lsrs	r3, r3, #16
 8000ccc:	22ff      	movs	r2, #255	; 0xff
 8000cce:	4013      	ands	r3, r2
 8000cd0:	0018      	movs	r0, r3
 8000cd2:	f7ff ff65 	bl	8000ba0 <hex2num>
 8000cd6:	0002      	movs	r2, r0
 8000cd8:	2364      	movs	r3, #100	; 0x64
 8000cda:	4353      	muls	r3, r2
 8000cdc:	001c      	movs	r4, r3
 8000cde:	4b1f      	ldr	r3, [pc, #124]	; (8000d5c <SysTick_Handler+0xac>)
 8000ce0:	0018      	movs	r0, r3
 8000ce2:	f7ff feef 	bl	8000ac4 <LL_RTC_TIME_Get>
 8000ce6:	0003      	movs	r3, r0
 8000ce8:	0a1b      	lsrs	r3, r3, #8
 8000cea:	22ff      	movs	r2, #255	; 0xff
 8000cec:	4013      	ands	r3, r2
 8000cee:	0018      	movs	r0, r3
 8000cf0:	f7ff ff56 	bl	8000ba0 <hex2num>
 8000cf4:	0003      	movs	r3, r0
 8000cf6:	18e2      	adds	r2, r4, r3
 8000cf8:	4b19      	ldr	r3, [pc, #100]	; (8000d60 <SysTick_Handler+0xb0>)
 8000cfa:	601a      	str	r2, [r3, #0]
 8000cfc:	4b19      	ldr	r3, [pc, #100]	; (8000d64 <SysTick_Handler+0xb4>)
 8000cfe:	781b      	ldrb	r3, [r3, #0]
 8000d00:	b25b      	sxtb	r3, r3
 8000d02:	b2db      	uxtb	r3, r3
 8000d04:	3301      	adds	r3, #1
 8000d06:	b2db      	uxtb	r3, r3
 8000d08:	b25a      	sxtb	r2, r3
 8000d0a:	4b16      	ldr	r3, [pc, #88]	; (8000d64 <SysTick_Handler+0xb4>)
 8000d0c:	701a      	strb	r2, [r3, #0]
 8000d0e:	4b15      	ldr	r3, [pc, #84]	; (8000d64 <SysTick_Handler+0xb4>)
 8000d10:	781b      	ldrb	r3, [r3, #0]
 8000d12:	b25b      	sxtb	r3, r3
 8000d14:	2b04      	cmp	r3, #4
 8000d16:	d102      	bne.n	8000d1e <SysTick_Handler+0x6e>
 8000d18:	4b12      	ldr	r3, [pc, #72]	; (8000d64 <SysTick_Handler+0xb4>)
 8000d1a:	2200      	movs	r2, #0
 8000d1c:	701a      	strb	r2, [r3, #0]
 8000d1e:	4b10      	ldr	r3, [pc, #64]	; (8000d60 <SysTick_Handler+0xb0>)
 8000d20:	6818      	ldr	r0, [r3, #0]
 8000d22:	4b10      	ldr	r3, [pc, #64]	; (8000d64 <SysTick_Handler+0xb4>)
 8000d24:	781b      	ldrb	r3, [r3, #0]
 8000d26:	b25b      	sxtb	r3, r3
 8000d28:	001a      	movs	r2, r3
 8000d2a:	4b0f      	ldr	r3, [pc, #60]	; (8000d68 <SysTick_Handler+0xb8>)
 8000d2c:	0092      	lsls	r2, r2, #2
 8000d2e:	58d3      	ldr	r3, [r2, r3]
 8000d30:	0019      	movs	r1, r3
 8000d32:	f7ff fa11 	bl	8000158 <__udivsi3>
 8000d36:	0003      	movs	r3, r0
 8000d38:	210a      	movs	r1, #10
 8000d3a:	0018      	movs	r0, r3
 8000d3c:	f7ff fa92 	bl	8000264 <__aeabi_uidivmod>
 8000d40:	000b      	movs	r3, r1
 8000d42:	001a      	movs	r2, r3
 8000d44:	4b07      	ldr	r3, [pc, #28]	; (8000d64 <SysTick_Handler+0xb4>)
 8000d46:	781b      	ldrb	r3, [r3, #0]
 8000d48:	b25b      	sxtb	r3, r3
 8000d4a:	b2db      	uxtb	r3, r3
 8000d4c:	0019      	movs	r1, r3
 8000d4e:	0010      	movs	r0, r2
 8000d50:	f7ff fdae 	bl	80008b0 <set_indicator>
 8000d54:	46c0      	nop			; (mov r8, r8)
 8000d56:	46bd      	mov	sp, r7
 8000d58:	bdb0      	pop	{r4, r5, r7, pc}
 8000d5a:	46c0      	nop			; (mov r8, r8)
 8000d5c:	40002800 	.word	0x40002800
 8000d60:	20000430 	.word	0x20000430
 8000d64:	2000045c 	.word	0x2000045c
 8000d68:	08000f2c 	.word	0x08000f2c

08000d6c <rtc_config>:
 8000d6c:	b580      	push	{r7, lr}
 8000d6e:	b082      	sub	sp, #8
 8000d70:	af02      	add	r7, sp, #8
 8000d72:	f7ff fbbd 	bl	80004f0 <LL_RCC_LSI_Enable>
 8000d76:	46c0      	nop			; (mov r8, r8)
 8000d78:	f7ff fbc8 	bl	800050c <LL_RCC_LSI_IsReady>
 8000d7c:	0003      	movs	r3, r0
 8000d7e:	2b01      	cmp	r3, #1
 8000d80:	d1fa      	bne.n	8000d78 <rtc_config+0xc>
 8000d82:	2380      	movs	r3, #128	; 0x80
 8000d84:	055b      	lsls	r3, r3, #21
 8000d86:	0018      	movs	r0, r3
 8000d88:	f7ff fcac 	bl	80006e4 <LL_APB1_GRP1_EnableClock>
 8000d8c:	f7ff fdee 	bl	800096c <LL_PWR_EnableBkUpAccess>
 8000d90:	2380      	movs	r3, #128	; 0x80
 8000d92:	009b      	lsls	r3, r3, #2
 8000d94:	0018      	movs	r0, r3
 8000d96:	f7ff fc11 	bl	80005bc <LL_RCC_SetRTCClockSource>
 8000d9a:	f7ff fc23 	bl	80005e4 <LL_RCC_EnableRTC>
 8000d9e:	4b1f      	ldr	r3, [pc, #124]	; (8000e1c <rtc_config+0xb0>)
 8000da0:	0018      	movs	r0, r3
 8000da2:	f7ff fe59 	bl	8000a58 <LL_RTC_DisableWriteProtection>
 8000da6:	4b1d      	ldr	r3, [pc, #116]	; (8000e1c <rtc_config+0xb0>)
 8000da8:	0018      	movs	r0, r3
 8000daa:	f7ff fdff 	bl	80009ac <LL_RTC_EnableInitMode>
 8000dae:	46c0      	nop			; (mov r8, r8)
 8000db0:	4b1a      	ldr	r3, [pc, #104]	; (8000e1c <rtc_config+0xb0>)
 8000db2:	0018      	movs	r0, r3
 8000db4:	f7ff fed4 	bl	8000b60 <LL_RTC_IsActiveFlag_INIT>
 8000db8:	1e03      	subs	r3, r0, #0
 8000dba:	d0f9      	beq.n	8000db0 <rtc_config+0x44>
 8000dbc:	4b17      	ldr	r3, [pc, #92]	; (8000e1c <rtc_config+0xb0>)
 8000dbe:	217f      	movs	r1, #127	; 0x7f
 8000dc0:	0018      	movs	r0, r3
 8000dc2:	f7ff fe19 	bl	80009f8 <LL_RTC_SetAsynchPrescaler>
 8000dc6:	2338      	movs	r3, #56	; 0x38
 8000dc8:	33ff      	adds	r3, #255	; 0xff
 8000dca:	4a14      	ldr	r2, [pc, #80]	; (8000e1c <rtc_config+0xb0>)
 8000dcc:	0019      	movs	r1, r3
 8000dce:	0010      	movs	r0, r2
 8000dd0:	f7ff fe26 	bl	8000a20 <LL_RTC_SetSynchPrescaler>
 8000dd4:	4b11      	ldr	r3, [pc, #68]	; (8000e1c <rtc_config+0xb0>)
 8000dd6:	2100      	movs	r1, #0
 8000dd8:	0018      	movs	r0, r3
 8000dda:	f7ff fdd5 	bl	8000988 <LL_RTC_SetHourFormat>
 8000dde:	480f      	ldr	r0, [pc, #60]	; (8000e1c <rtc_config+0xb0>)
 8000de0:	4b0f      	ldr	r3, [pc, #60]	; (8000e20 <rtc_config+0xb4>)
 8000de2:	9300      	str	r3, [sp, #0]
 8000de4:	2303      	movs	r3, #3
 8000de6:	2201      	movs	r2, #1
 8000de8:	2105      	movs	r1, #5
 8000dea:	f7ff fe91 	bl	8000b10 <LL_RTC_DATE_Config>
 8000dee:	480b      	ldr	r0, [pc, #44]	; (8000e1c <rtc_config+0xb0>)
 8000df0:	2300      	movs	r3, #0
 8000df2:	9300      	str	r3, [sp, #0]
 8000df4:	2358      	movs	r3, #88	; 0x58
 8000df6:	2219      	movs	r2, #25
 8000df8:	2100      	movs	r1, #0
 8000dfa:	f7ff fe3b 	bl	8000a74 <LL_RTC_TIME_Config>
 8000dfe:	4b07      	ldr	r3, [pc, #28]	; (8000e1c <rtc_config+0xb0>)
 8000e00:	0018      	movs	r0, r3
 8000e02:	f7ff fddf 	bl	80009c4 <LL_RTC_DisableInitMode>
 8000e06:	4b05      	ldr	r3, [pc, #20]	; (8000e1c <rtc_config+0xb0>)
 8000e08:	0018      	movs	r0, r3
 8000e0a:	f7ff fe1a 	bl	8000a42 <LL_RTC_EnableWriteProtection>
 8000e0e:	4b03      	ldr	r3, [pc, #12]	; (8000e1c <rtc_config+0xb0>)
 8000e10:	0018      	movs	r0, r3
 8000e12:	f7ff fde3 	bl	80009dc <LL_RTC_EnableShadowRegBypass>
 8000e16:	46c0      	nop			; (mov r8, r8)
 8000e18:	46bd      	mov	sp, r7
 8000e1a:	bd80      	pop	{r7, pc}
 8000e1c:	40002800 	.word	0x40002800
 8000e20:	000007e3 	.word	0x000007e3

08000e24 <main>:
 8000e24:	b580      	push	{r7, lr}
 8000e26:	af00      	add	r7, sp, #0
 8000e28:	f7ff fef8 	bl	8000c1c <rcc_config>
 8000e2c:	f7ff feda 	bl	8000be4 <gpio_config>
 8000e30:	f7ff ff28 	bl	8000c84 <systick_config>
 8000e34:	f7ff ff9a 	bl	8000d6c <rtc_config>
 8000e38:	2380      	movs	r3, #128	; 0x80
 8000e3a:	005b      	lsls	r3, r3, #1
 8000e3c:	4a02      	ldr	r2, [pc, #8]	; (8000e48 <main+0x24>)
 8000e3e:	0019      	movs	r1, r3
 8000e40:	0010      	movs	r0, r2
 8000e42:	f7ff fc98 	bl	8000776 <LL_GPIO_SetOutputPin>
 8000e46:	e7fe      	b.n	8000e46 <main+0x22>
 8000e48:	48000800 	.word	0x48000800

08000e4c <SystemInit>:
 8000e4c:	b580      	push	{r7, lr}
 8000e4e:	af00      	add	r7, sp, #0
 8000e50:	4b1a      	ldr	r3, [pc, #104]	; (8000ebc <SystemInit+0x70>)
 8000e52:	4a1a      	ldr	r2, [pc, #104]	; (8000ebc <SystemInit+0x70>)
 8000e54:	6812      	ldr	r2, [r2, #0]
 8000e56:	2101      	movs	r1, #1
 8000e58:	430a      	orrs	r2, r1
 8000e5a:	601a      	str	r2, [r3, #0]
 8000e5c:	4b17      	ldr	r3, [pc, #92]	; (8000ebc <SystemInit+0x70>)
 8000e5e:	4a17      	ldr	r2, [pc, #92]	; (8000ebc <SystemInit+0x70>)
 8000e60:	6852      	ldr	r2, [r2, #4]
 8000e62:	4917      	ldr	r1, [pc, #92]	; (8000ec0 <SystemInit+0x74>)
 8000e64:	400a      	ands	r2, r1
 8000e66:	605a      	str	r2, [r3, #4]
 8000e68:	4b14      	ldr	r3, [pc, #80]	; (8000ebc <SystemInit+0x70>)
 8000e6a:	4a14      	ldr	r2, [pc, #80]	; (8000ebc <SystemInit+0x70>)
 8000e6c:	6812      	ldr	r2, [r2, #0]
 8000e6e:	4915      	ldr	r1, [pc, #84]	; (8000ec4 <SystemInit+0x78>)
 8000e70:	400a      	ands	r2, r1
 8000e72:	601a      	str	r2, [r3, #0]
 8000e74:	4b11      	ldr	r3, [pc, #68]	; (8000ebc <SystemInit+0x70>)
 8000e76:	4a11      	ldr	r2, [pc, #68]	; (8000ebc <SystemInit+0x70>)
 8000e78:	6812      	ldr	r2, [r2, #0]
 8000e7a:	4913      	ldr	r1, [pc, #76]	; (8000ec8 <SystemInit+0x7c>)
 8000e7c:	400a      	ands	r2, r1
 8000e7e:	601a      	str	r2, [r3, #0]
 8000e80:	4b0e      	ldr	r3, [pc, #56]	; (8000ebc <SystemInit+0x70>)
 8000e82:	4a0e      	ldr	r2, [pc, #56]	; (8000ebc <SystemInit+0x70>)
 8000e84:	6852      	ldr	r2, [r2, #4]
 8000e86:	4911      	ldr	r1, [pc, #68]	; (8000ecc <SystemInit+0x80>)
 8000e88:	400a      	ands	r2, r1
 8000e8a:	605a      	str	r2, [r3, #4]
 8000e8c:	4b0b      	ldr	r3, [pc, #44]	; (8000ebc <SystemInit+0x70>)
 8000e8e:	4a0b      	ldr	r2, [pc, #44]	; (8000ebc <SystemInit+0x70>)
 8000e90:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8000e92:	210f      	movs	r1, #15
 8000e94:	438a      	bics	r2, r1
 8000e96:	62da      	str	r2, [r3, #44]	; 0x2c
 8000e98:	4b08      	ldr	r3, [pc, #32]	; (8000ebc <SystemInit+0x70>)
 8000e9a:	4a08      	ldr	r2, [pc, #32]	; (8000ebc <SystemInit+0x70>)
 8000e9c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000e9e:	490c      	ldr	r1, [pc, #48]	; (8000ed0 <SystemInit+0x84>)
 8000ea0:	400a      	ands	r2, r1
 8000ea2:	631a      	str	r2, [r3, #48]	; 0x30
 8000ea4:	4b05      	ldr	r3, [pc, #20]	; (8000ebc <SystemInit+0x70>)
 8000ea6:	4a05      	ldr	r2, [pc, #20]	; (8000ebc <SystemInit+0x70>)
 8000ea8:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8000eaa:	2101      	movs	r1, #1
 8000eac:	438a      	bics	r2, r1
 8000eae:	635a      	str	r2, [r3, #52]	; 0x34
 8000eb0:	4b02      	ldr	r3, [pc, #8]	; (8000ebc <SystemInit+0x70>)
 8000eb2:	2200      	movs	r2, #0
 8000eb4:	609a      	str	r2, [r3, #8]
 8000eb6:	46c0      	nop			; (mov r8, r8)
 8000eb8:	46bd      	mov	sp, r7
 8000eba:	bd80      	pop	{r7, pc}
 8000ebc:	40021000 	.word	0x40021000
 8000ec0:	f8ffb80c 	.word	0xf8ffb80c
 8000ec4:	fef6ffff 	.word	0xfef6ffff
 8000ec8:	fffbffff 	.word	0xfffbffff
 8000ecc:	ffc0ffff 	.word	0xffc0ffff
 8000ed0:	fffffeac 	.word	0xfffffeac

08000ed4 <NMI_Handler>:
 8000ed4:	b580      	push	{r7, lr}
 8000ed6:	af00      	add	r7, sp, #0
 8000ed8:	46c0      	nop			; (mov r8, r8)
 8000eda:	46bd      	mov	sp, r7
 8000edc:	bd80      	pop	{r7, pc}

08000ede <HardFault_Handler>:
 8000ede:	b580      	push	{r7, lr}
 8000ee0:	af00      	add	r7, sp, #0
 8000ee2:	e7fe      	b.n	8000ee2 <HardFault_Handler+0x4>

08000ee4 <SVC_Handler>:
 8000ee4:	b580      	push	{r7, lr}
 8000ee6:	af00      	add	r7, sp, #0
 8000ee8:	46c0      	nop			; (mov r8, r8)
 8000eea:	46bd      	mov	sp, r7
 8000eec:	bd80      	pop	{r7, pc}

08000eee <PendSV_Handler>:
 8000eee:	b580      	push	{r7, lr}
 8000ef0:	af00      	add	r7, sp, #0
 8000ef2:	46c0      	nop			; (mov r8, r8)
 8000ef4:	46bd      	mov	sp, r7
 8000ef6:	bd80      	pop	{r7, pc}

08000ef8 <register_fini>:
 8000ef8:	4b03      	ldr	r3, [pc, #12]	; (8000f08 <register_fini+0x10>)
 8000efa:	b510      	push	{r4, lr}
 8000efc:	2b00      	cmp	r3, #0
 8000efe:	d002      	beq.n	8000f06 <register_fini+0xe>
 8000f00:	4802      	ldr	r0, [pc, #8]	; (8000f0c <register_fini+0x14>)
 8000f02:	f7ff f9b5 	bl	8000270 <atexit>
 8000f06:	bd10      	pop	{r4, pc}
 8000f08:	00000000 	.word	0x00000000
 8000f0c:	08000281 	.word	0x08000281

08000f10 <_init>:
 8000f10:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000f12:	46c0      	nop			; (mov r8, r8)
 8000f14:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000f16:	bc08      	pop	{r3}
 8000f18:	469e      	mov	lr, r3
 8000f1a:	4770      	bx	lr

08000f1c <_fini>:
 8000f1c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000f1e:	46c0      	nop			; (mov r8, r8)
 8000f20:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000f22:	bc08      	pop	{r3}
 8000f24:	469e      	mov	lr, r3
 8000f26:	4770      	bx	lr
