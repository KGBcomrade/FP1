
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         00001204  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000068  080012c4  080012c4  000112c4  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  0800132c  0800132c  0001132c  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  08001334  08001334  00011334  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         0000043c  20000000  08001338  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss          00000034  2000043c  08001774  0002043c  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000470  08001774  00020470  2**0  ALLOC
  8 .ARM.attributes 00000028  00000000  00000000  0002043c  2**0  CONTENTS, READONLY
  9 .comment      00000031  00000000  00000000  00020464  2**0  CONTENTS, READONLY
 10 .debug_info   00003ce7  00000000  00000000  00020495  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_abbrev 00000d58  00000000  00000000  0002417c  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_loc    00000e5a  00000000  00000000  00024ed4  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_aranges 000002f0  00000000  00000000  00025d30  2**3  CONTENTS, READONLY, DEBUGGING
 14 .debug_ranges 000001e8  00000000  00000000  00026020  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line   00001028  00000000  00000000  00026208  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str    00001146  00000000  00000000  00027230  2**0  CONTENTS, READONLY, DEBUGGING
 17 .debug_frame  00000764  00000000  00000000  00028378  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <deregister_tm_clones>:
 80000c0:	4b05      	ldr	r3, [pc, #20]	; (80000d8 <deregister_tm_clones+0x18>)
 80000c2:	4806      	ldr	r0, [pc, #24]	; (80000dc <deregister_tm_clones+0x1c>)
 80000c4:	3303      	adds	r3, #3
 80000c6:	b510      	push	{r4, lr}
 80000c8:	1a1b      	subs	r3, r3, r0
 80000ca:	2b06      	cmp	r3, #6
 80000cc:	d903      	bls.n	80000d6 <deregister_tm_clones+0x16>
 80000ce:	4b04      	ldr	r3, [pc, #16]	; (80000e0 <deregister_tm_clones+0x20>)
 80000d0:	2b00      	cmp	r3, #0
 80000d2:	d000      	beq.n	80000d6 <deregister_tm_clones+0x16>
 80000d4:	4798      	blx	r3
 80000d6:	bd10      	pop	{r4, pc}
 80000d8:	2000043c 	.word	0x2000043c
 80000dc:	2000043c 	.word	0x2000043c
 80000e0:	00000000 	.word	0x00000000

080000e4 <register_tm_clones>:
 80000e4:	4806      	ldr	r0, [pc, #24]	; (8000100 <register_tm_clones+0x1c>)
 80000e6:	4907      	ldr	r1, [pc, #28]	; (8000104 <register_tm_clones+0x20>)
 80000e8:	b510      	push	{r4, lr}
 80000ea:	1a09      	subs	r1, r1, r0
 80000ec:	1089      	asrs	r1, r1, #2
 80000ee:	0fcb      	lsrs	r3, r1, #31
 80000f0:	1859      	adds	r1, r3, r1
 80000f2:	1049      	asrs	r1, r1, #1
 80000f4:	d003      	beq.n	80000fe <register_tm_clones+0x1a>
 80000f6:	4b04      	ldr	r3, [pc, #16]	; (8000108 <register_tm_clones+0x24>)
 80000f8:	2b00      	cmp	r3, #0
 80000fa:	d000      	beq.n	80000fe <register_tm_clones+0x1a>
 80000fc:	4798      	blx	r3
 80000fe:	bd10      	pop	{r4, pc}
 8000100:	2000043c 	.word	0x2000043c
 8000104:	2000043c 	.word	0x2000043c
 8000108:	00000000 	.word	0x00000000

0800010c <__do_global_dtors_aux>:
 800010c:	b510      	push	{r4, lr}
 800010e:	4c07      	ldr	r4, [pc, #28]	; (800012c <__do_global_dtors_aux+0x20>)
 8000110:	7823      	ldrb	r3, [r4, #0]
 8000112:	2b00      	cmp	r3, #0
 8000114:	d109      	bne.n	800012a <__do_global_dtors_aux+0x1e>
 8000116:	f7ff ffd3 	bl	80000c0 <deregister_tm_clones>
 800011a:	4b05      	ldr	r3, [pc, #20]	; (8000130 <__do_global_dtors_aux+0x24>)
 800011c:	2b00      	cmp	r3, #0
 800011e:	d002      	beq.n	8000126 <__do_global_dtors_aux+0x1a>
 8000120:	4804      	ldr	r0, [pc, #16]	; (8000134 <__do_global_dtors_aux+0x28>)
 8000122:	e000      	b.n	8000126 <__do_global_dtors_aux+0x1a>
 8000124:	bf00      	nop
 8000126:	2301      	movs	r3, #1
 8000128:	7023      	strb	r3, [r4, #0]
 800012a:	bd10      	pop	{r4, pc}
 800012c:	2000043c 	.word	0x2000043c
 8000130:	00000000 	.word	0x00000000
 8000134:	080012ac 	.word	0x080012ac

08000138 <frame_dummy>:
 8000138:	4b09      	ldr	r3, [pc, #36]	; (8000160 <frame_dummy+0x28>)
 800013a:	b510      	push	{r4, lr}
 800013c:	2b00      	cmp	r3, #0
 800013e:	d003      	beq.n	8000148 <frame_dummy+0x10>
 8000140:	4908      	ldr	r1, [pc, #32]	; (8000164 <frame_dummy+0x2c>)
 8000142:	4809      	ldr	r0, [pc, #36]	; (8000168 <frame_dummy+0x30>)
 8000144:	e000      	b.n	8000148 <frame_dummy+0x10>
 8000146:	bf00      	nop
 8000148:	4808      	ldr	r0, [pc, #32]	; (800016c <frame_dummy+0x34>)
 800014a:	6803      	ldr	r3, [r0, #0]
 800014c:	2b00      	cmp	r3, #0
 800014e:	d102      	bne.n	8000156 <frame_dummy+0x1e>
 8000150:	f7ff ffc8 	bl	80000e4 <register_tm_clones>
 8000154:	bd10      	pop	{r4, pc}
 8000156:	4b06      	ldr	r3, [pc, #24]	; (8000170 <frame_dummy+0x38>)
 8000158:	2b00      	cmp	r3, #0
 800015a:	d0f9      	beq.n	8000150 <frame_dummy+0x18>
 800015c:	4798      	blx	r3
 800015e:	e7f7      	b.n	8000150 <frame_dummy+0x18>
 8000160:	00000000 	.word	0x00000000
 8000164:	20000440 	.word	0x20000440
 8000168:	080012ac 	.word	0x080012ac
 800016c:	2000043c 	.word	0x2000043c
 8000170:	00000000 	.word	0x00000000

08000174 <__aeabi_uidiv>:
 8000174:	2200      	movs	r2, #0
 8000176:	0843      	lsrs	r3, r0, #1
 8000178:	428b      	cmp	r3, r1
 800017a:	d374      	bcc.n	8000266 <__aeabi_uidiv+0xf2>
 800017c:	0903      	lsrs	r3, r0, #4
 800017e:	428b      	cmp	r3, r1
 8000180:	d35f      	bcc.n	8000242 <__aeabi_uidiv+0xce>
 8000182:	0a03      	lsrs	r3, r0, #8
 8000184:	428b      	cmp	r3, r1
 8000186:	d344      	bcc.n	8000212 <__aeabi_uidiv+0x9e>
 8000188:	0b03      	lsrs	r3, r0, #12
 800018a:	428b      	cmp	r3, r1
 800018c:	d328      	bcc.n	80001e0 <__aeabi_uidiv+0x6c>
 800018e:	0c03      	lsrs	r3, r0, #16
 8000190:	428b      	cmp	r3, r1
 8000192:	d30d      	bcc.n	80001b0 <__aeabi_uidiv+0x3c>
 8000194:	22ff      	movs	r2, #255	; 0xff
 8000196:	0209      	lsls	r1, r1, #8
 8000198:	ba12      	rev	r2, r2
 800019a:	0c03      	lsrs	r3, r0, #16
 800019c:	428b      	cmp	r3, r1
 800019e:	d302      	bcc.n	80001a6 <__aeabi_uidiv+0x32>
 80001a0:	1212      	asrs	r2, r2, #8
 80001a2:	0209      	lsls	r1, r1, #8
 80001a4:	d065      	beq.n	8000272 <__aeabi_uidiv+0xfe>
 80001a6:	0b03      	lsrs	r3, r0, #12
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d319      	bcc.n	80001e0 <__aeabi_uidiv+0x6c>
 80001ac:	e000      	b.n	80001b0 <__aeabi_uidiv+0x3c>
 80001ae:	0a09      	lsrs	r1, r1, #8
 80001b0:	0bc3      	lsrs	r3, r0, #15
 80001b2:	428b      	cmp	r3, r1
 80001b4:	d301      	bcc.n	80001ba <__aeabi_uidiv+0x46>
 80001b6:	03cb      	lsls	r3, r1, #15
 80001b8:	1ac0      	subs	r0, r0, r3
 80001ba:	4152      	adcs	r2, r2
 80001bc:	0b83      	lsrs	r3, r0, #14
 80001be:	428b      	cmp	r3, r1
 80001c0:	d301      	bcc.n	80001c6 <__aeabi_uidiv+0x52>
 80001c2:	038b      	lsls	r3, r1, #14
 80001c4:	1ac0      	subs	r0, r0, r3
 80001c6:	4152      	adcs	r2, r2
 80001c8:	0b43      	lsrs	r3, r0, #13
 80001ca:	428b      	cmp	r3, r1
 80001cc:	d301      	bcc.n	80001d2 <__aeabi_uidiv+0x5e>
 80001ce:	034b      	lsls	r3, r1, #13
 80001d0:	1ac0      	subs	r0, r0, r3
 80001d2:	4152      	adcs	r2, r2
 80001d4:	0b03      	lsrs	r3, r0, #12
 80001d6:	428b      	cmp	r3, r1
 80001d8:	d301      	bcc.n	80001de <__aeabi_uidiv+0x6a>
 80001da:	030b      	lsls	r3, r1, #12
 80001dc:	1ac0      	subs	r0, r0, r3
 80001de:	4152      	adcs	r2, r2
 80001e0:	0ac3      	lsrs	r3, r0, #11
 80001e2:	428b      	cmp	r3, r1
 80001e4:	d301      	bcc.n	80001ea <__aeabi_uidiv+0x76>
 80001e6:	02cb      	lsls	r3, r1, #11
 80001e8:	1ac0      	subs	r0, r0, r3
 80001ea:	4152      	adcs	r2, r2
 80001ec:	0a83      	lsrs	r3, r0, #10
 80001ee:	428b      	cmp	r3, r1
 80001f0:	d301      	bcc.n	80001f6 <__aeabi_uidiv+0x82>
 80001f2:	028b      	lsls	r3, r1, #10
 80001f4:	1ac0      	subs	r0, r0, r3
 80001f6:	4152      	adcs	r2, r2
 80001f8:	0a43      	lsrs	r3, r0, #9
 80001fa:	428b      	cmp	r3, r1
 80001fc:	d301      	bcc.n	8000202 <__aeabi_uidiv+0x8e>
 80001fe:	024b      	lsls	r3, r1, #9
 8000200:	1ac0      	subs	r0, r0, r3
 8000202:	4152      	adcs	r2, r2
 8000204:	0a03      	lsrs	r3, r0, #8
 8000206:	428b      	cmp	r3, r1
 8000208:	d301      	bcc.n	800020e <__aeabi_uidiv+0x9a>
 800020a:	020b      	lsls	r3, r1, #8
 800020c:	1ac0      	subs	r0, r0, r3
 800020e:	4152      	adcs	r2, r2
 8000210:	d2cd      	bcs.n	80001ae <__aeabi_uidiv+0x3a>
 8000212:	09c3      	lsrs	r3, r0, #7
 8000214:	428b      	cmp	r3, r1
 8000216:	d301      	bcc.n	800021c <__aeabi_uidiv+0xa8>
 8000218:	01cb      	lsls	r3, r1, #7
 800021a:	1ac0      	subs	r0, r0, r3
 800021c:	4152      	adcs	r2, r2
 800021e:	0983      	lsrs	r3, r0, #6
 8000220:	428b      	cmp	r3, r1
 8000222:	d301      	bcc.n	8000228 <__aeabi_uidiv+0xb4>
 8000224:	018b      	lsls	r3, r1, #6
 8000226:	1ac0      	subs	r0, r0, r3
 8000228:	4152      	adcs	r2, r2
 800022a:	0943      	lsrs	r3, r0, #5
 800022c:	428b      	cmp	r3, r1
 800022e:	d301      	bcc.n	8000234 <__aeabi_uidiv+0xc0>
 8000230:	014b      	lsls	r3, r1, #5
 8000232:	1ac0      	subs	r0, r0, r3
 8000234:	4152      	adcs	r2, r2
 8000236:	0903      	lsrs	r3, r0, #4
 8000238:	428b      	cmp	r3, r1
 800023a:	d301      	bcc.n	8000240 <__aeabi_uidiv+0xcc>
 800023c:	010b      	lsls	r3, r1, #4
 800023e:	1ac0      	subs	r0, r0, r3
 8000240:	4152      	adcs	r2, r2
 8000242:	08c3      	lsrs	r3, r0, #3
 8000244:	428b      	cmp	r3, r1
 8000246:	d301      	bcc.n	800024c <__aeabi_uidiv+0xd8>
 8000248:	00cb      	lsls	r3, r1, #3
 800024a:	1ac0      	subs	r0, r0, r3
 800024c:	4152      	adcs	r2, r2
 800024e:	0883      	lsrs	r3, r0, #2
 8000250:	428b      	cmp	r3, r1
 8000252:	d301      	bcc.n	8000258 <__aeabi_uidiv+0xe4>
 8000254:	008b      	lsls	r3, r1, #2
 8000256:	1ac0      	subs	r0, r0, r3
 8000258:	4152      	adcs	r2, r2
 800025a:	0843      	lsrs	r3, r0, #1
 800025c:	428b      	cmp	r3, r1
 800025e:	d301      	bcc.n	8000264 <__aeabi_uidiv+0xf0>
 8000260:	004b      	lsls	r3, r1, #1
 8000262:	1ac0      	subs	r0, r0, r3
 8000264:	4152      	adcs	r2, r2
 8000266:	1a41      	subs	r1, r0, r1
 8000268:	d200      	bcs.n	800026c <__aeabi_uidiv+0xf8>
 800026a:	4601      	mov	r1, r0
 800026c:	4152      	adcs	r2, r2
 800026e:	4610      	mov	r0, r2
 8000270:	4770      	bx	lr
 8000272:	e7ff      	b.n	8000274 <__aeabi_uidiv+0x100>
 8000274:	b501      	push	{r0, lr}
 8000276:	2000      	movs	r0, #0
 8000278:	f000 f8f0 	bl	800045c <__aeabi_idiv0>
 800027c:	bd02      	pop	{r1, pc}
 800027e:	46c0      	nop			; (mov r8, r8)

08000280 <__aeabi_uidivmod>:
 8000280:	2900      	cmp	r1, #0
 8000282:	d0f7      	beq.n	8000274 <__aeabi_uidiv+0x100>
 8000284:	e776      	b.n	8000174 <__aeabi_uidiv>
 8000286:	4770      	bx	lr

08000288 <__aeabi_idiv>:
 8000288:	4603      	mov	r3, r0
 800028a:	430b      	orrs	r3, r1
 800028c:	d47f      	bmi.n	800038e <__aeabi_idiv+0x106>
 800028e:	2200      	movs	r2, #0
 8000290:	0843      	lsrs	r3, r0, #1
 8000292:	428b      	cmp	r3, r1
 8000294:	d374      	bcc.n	8000380 <__aeabi_idiv+0xf8>
 8000296:	0903      	lsrs	r3, r0, #4
 8000298:	428b      	cmp	r3, r1
 800029a:	d35f      	bcc.n	800035c <__aeabi_idiv+0xd4>
 800029c:	0a03      	lsrs	r3, r0, #8
 800029e:	428b      	cmp	r3, r1
 80002a0:	d344      	bcc.n	800032c <__aeabi_idiv+0xa4>
 80002a2:	0b03      	lsrs	r3, r0, #12
 80002a4:	428b      	cmp	r3, r1
 80002a6:	d328      	bcc.n	80002fa <__aeabi_idiv+0x72>
 80002a8:	0c03      	lsrs	r3, r0, #16
 80002aa:	428b      	cmp	r3, r1
 80002ac:	d30d      	bcc.n	80002ca <__aeabi_idiv+0x42>
 80002ae:	22ff      	movs	r2, #255	; 0xff
 80002b0:	0209      	lsls	r1, r1, #8
 80002b2:	ba12      	rev	r2, r2
 80002b4:	0c03      	lsrs	r3, r0, #16
 80002b6:	428b      	cmp	r3, r1
 80002b8:	d302      	bcc.n	80002c0 <__aeabi_idiv+0x38>
 80002ba:	1212      	asrs	r2, r2, #8
 80002bc:	0209      	lsls	r1, r1, #8
 80002be:	d065      	beq.n	800038c <__aeabi_idiv+0x104>
 80002c0:	0b03      	lsrs	r3, r0, #12
 80002c2:	428b      	cmp	r3, r1
 80002c4:	d319      	bcc.n	80002fa <__aeabi_idiv+0x72>
 80002c6:	e000      	b.n	80002ca <__aeabi_idiv+0x42>
 80002c8:	0a09      	lsrs	r1, r1, #8
 80002ca:	0bc3      	lsrs	r3, r0, #15
 80002cc:	428b      	cmp	r3, r1
 80002ce:	d301      	bcc.n	80002d4 <__aeabi_idiv+0x4c>
 80002d0:	03cb      	lsls	r3, r1, #15
 80002d2:	1ac0      	subs	r0, r0, r3
 80002d4:	4152      	adcs	r2, r2
 80002d6:	0b83      	lsrs	r3, r0, #14
 80002d8:	428b      	cmp	r3, r1
 80002da:	d301      	bcc.n	80002e0 <__aeabi_idiv+0x58>
 80002dc:	038b      	lsls	r3, r1, #14
 80002de:	1ac0      	subs	r0, r0, r3
 80002e0:	4152      	adcs	r2, r2
 80002e2:	0b43      	lsrs	r3, r0, #13
 80002e4:	428b      	cmp	r3, r1
 80002e6:	d301      	bcc.n	80002ec <__aeabi_idiv+0x64>
 80002e8:	034b      	lsls	r3, r1, #13
 80002ea:	1ac0      	subs	r0, r0, r3
 80002ec:	4152      	adcs	r2, r2
 80002ee:	0b03      	lsrs	r3, r0, #12
 80002f0:	428b      	cmp	r3, r1
 80002f2:	d301      	bcc.n	80002f8 <__aeabi_idiv+0x70>
 80002f4:	030b      	lsls	r3, r1, #12
 80002f6:	1ac0      	subs	r0, r0, r3
 80002f8:	4152      	adcs	r2, r2
 80002fa:	0ac3      	lsrs	r3, r0, #11
 80002fc:	428b      	cmp	r3, r1
 80002fe:	d301      	bcc.n	8000304 <__aeabi_idiv+0x7c>
 8000300:	02cb      	lsls	r3, r1, #11
 8000302:	1ac0      	subs	r0, r0, r3
 8000304:	4152      	adcs	r2, r2
 8000306:	0a83      	lsrs	r3, r0, #10
 8000308:	428b      	cmp	r3, r1
 800030a:	d301      	bcc.n	8000310 <__aeabi_idiv+0x88>
 800030c:	028b      	lsls	r3, r1, #10
 800030e:	1ac0      	subs	r0, r0, r3
 8000310:	4152      	adcs	r2, r2
 8000312:	0a43      	lsrs	r3, r0, #9
 8000314:	428b      	cmp	r3, r1
 8000316:	d301      	bcc.n	800031c <__aeabi_idiv+0x94>
 8000318:	024b      	lsls	r3, r1, #9
 800031a:	1ac0      	subs	r0, r0, r3
 800031c:	4152      	adcs	r2, r2
 800031e:	0a03      	lsrs	r3, r0, #8
 8000320:	428b      	cmp	r3, r1
 8000322:	d301      	bcc.n	8000328 <__aeabi_idiv+0xa0>
 8000324:	020b      	lsls	r3, r1, #8
 8000326:	1ac0      	subs	r0, r0, r3
 8000328:	4152      	adcs	r2, r2
 800032a:	d2cd      	bcs.n	80002c8 <__aeabi_idiv+0x40>
 800032c:	09c3      	lsrs	r3, r0, #7
 800032e:	428b      	cmp	r3, r1
 8000330:	d301      	bcc.n	8000336 <__aeabi_idiv+0xae>
 8000332:	01cb      	lsls	r3, r1, #7
 8000334:	1ac0      	subs	r0, r0, r3
 8000336:	4152      	adcs	r2, r2
 8000338:	0983      	lsrs	r3, r0, #6
 800033a:	428b      	cmp	r3, r1
 800033c:	d301      	bcc.n	8000342 <__aeabi_idiv+0xba>
 800033e:	018b      	lsls	r3, r1, #6
 8000340:	1ac0      	subs	r0, r0, r3
 8000342:	4152      	adcs	r2, r2
 8000344:	0943      	lsrs	r3, r0, #5
 8000346:	428b      	cmp	r3, r1
 8000348:	d301      	bcc.n	800034e <__aeabi_idiv+0xc6>
 800034a:	014b      	lsls	r3, r1, #5
 800034c:	1ac0      	subs	r0, r0, r3
 800034e:	4152      	adcs	r2, r2
 8000350:	0903      	lsrs	r3, r0, #4
 8000352:	428b      	cmp	r3, r1
 8000354:	d301      	bcc.n	800035a <__aeabi_idiv+0xd2>
 8000356:	010b      	lsls	r3, r1, #4
 8000358:	1ac0      	subs	r0, r0, r3
 800035a:	4152      	adcs	r2, r2
 800035c:	08c3      	lsrs	r3, r0, #3
 800035e:	428b      	cmp	r3, r1
 8000360:	d301      	bcc.n	8000366 <__aeabi_idiv+0xde>
 8000362:	00cb      	lsls	r3, r1, #3
 8000364:	1ac0      	subs	r0, r0, r3
 8000366:	4152      	adcs	r2, r2
 8000368:	0883      	lsrs	r3, r0, #2
 800036a:	428b      	cmp	r3, r1
 800036c:	d301      	bcc.n	8000372 <__aeabi_idiv+0xea>
 800036e:	008b      	lsls	r3, r1, #2
 8000370:	1ac0      	subs	r0, r0, r3
 8000372:	4152      	adcs	r2, r2
 8000374:	0843      	lsrs	r3, r0, #1
 8000376:	428b      	cmp	r3, r1
 8000378:	d301      	bcc.n	800037e <__aeabi_idiv+0xf6>
 800037a:	004b      	lsls	r3, r1, #1
 800037c:	1ac0      	subs	r0, r0, r3
 800037e:	4152      	adcs	r2, r2
 8000380:	1a41      	subs	r1, r0, r1
 8000382:	d200      	bcs.n	8000386 <__aeabi_idiv+0xfe>
 8000384:	4601      	mov	r1, r0
 8000386:	4152      	adcs	r2, r2
 8000388:	4610      	mov	r0, r2
 800038a:	4770      	bx	lr
 800038c:	e05d      	b.n	800044a <__aeabi_idiv+0x1c2>
 800038e:	0fca      	lsrs	r2, r1, #31
 8000390:	d000      	beq.n	8000394 <__aeabi_idiv+0x10c>
 8000392:	4249      	negs	r1, r1
 8000394:	1003      	asrs	r3, r0, #32
 8000396:	d300      	bcc.n	800039a <__aeabi_idiv+0x112>
 8000398:	4240      	negs	r0, r0
 800039a:	4053      	eors	r3, r2
 800039c:	2200      	movs	r2, #0
 800039e:	469c      	mov	ip, r3
 80003a0:	0903      	lsrs	r3, r0, #4
 80003a2:	428b      	cmp	r3, r1
 80003a4:	d32d      	bcc.n	8000402 <__aeabi_idiv+0x17a>
 80003a6:	0a03      	lsrs	r3, r0, #8
 80003a8:	428b      	cmp	r3, r1
 80003aa:	d312      	bcc.n	80003d2 <__aeabi_idiv+0x14a>
 80003ac:	22fc      	movs	r2, #252	; 0xfc
 80003ae:	0189      	lsls	r1, r1, #6
 80003b0:	ba12      	rev	r2, r2
 80003b2:	0a03      	lsrs	r3, r0, #8
 80003b4:	428b      	cmp	r3, r1
 80003b6:	d30c      	bcc.n	80003d2 <__aeabi_idiv+0x14a>
 80003b8:	0189      	lsls	r1, r1, #6
 80003ba:	1192      	asrs	r2, r2, #6
 80003bc:	428b      	cmp	r3, r1
 80003be:	d308      	bcc.n	80003d2 <__aeabi_idiv+0x14a>
 80003c0:	0189      	lsls	r1, r1, #6
 80003c2:	1192      	asrs	r2, r2, #6
 80003c4:	428b      	cmp	r3, r1
 80003c6:	d304      	bcc.n	80003d2 <__aeabi_idiv+0x14a>
 80003c8:	0189      	lsls	r1, r1, #6
 80003ca:	d03a      	beq.n	8000442 <__aeabi_idiv+0x1ba>
 80003cc:	1192      	asrs	r2, r2, #6
 80003ce:	e000      	b.n	80003d2 <__aeabi_idiv+0x14a>
 80003d0:	0989      	lsrs	r1, r1, #6
 80003d2:	09c3      	lsrs	r3, r0, #7
 80003d4:	428b      	cmp	r3, r1
 80003d6:	d301      	bcc.n	80003dc <__aeabi_idiv+0x154>
 80003d8:	01cb      	lsls	r3, r1, #7
 80003da:	1ac0      	subs	r0, r0, r3
 80003dc:	4152      	adcs	r2, r2
 80003de:	0983      	lsrs	r3, r0, #6
 80003e0:	428b      	cmp	r3, r1
 80003e2:	d301      	bcc.n	80003e8 <__aeabi_idiv+0x160>
 80003e4:	018b      	lsls	r3, r1, #6
 80003e6:	1ac0      	subs	r0, r0, r3
 80003e8:	4152      	adcs	r2, r2
 80003ea:	0943      	lsrs	r3, r0, #5
 80003ec:	428b      	cmp	r3, r1
 80003ee:	d301      	bcc.n	80003f4 <__aeabi_idiv+0x16c>
 80003f0:	014b      	lsls	r3, r1, #5
 80003f2:	1ac0      	subs	r0, r0, r3
 80003f4:	4152      	adcs	r2, r2
 80003f6:	0903      	lsrs	r3, r0, #4
 80003f8:	428b      	cmp	r3, r1
 80003fa:	d301      	bcc.n	8000400 <__aeabi_idiv+0x178>
 80003fc:	010b      	lsls	r3, r1, #4
 80003fe:	1ac0      	subs	r0, r0, r3
 8000400:	4152      	adcs	r2, r2
 8000402:	08c3      	lsrs	r3, r0, #3
 8000404:	428b      	cmp	r3, r1
 8000406:	d301      	bcc.n	800040c <__aeabi_idiv+0x184>
 8000408:	00cb      	lsls	r3, r1, #3
 800040a:	1ac0      	subs	r0, r0, r3
 800040c:	4152      	adcs	r2, r2
 800040e:	0883      	lsrs	r3, r0, #2
 8000410:	428b      	cmp	r3, r1
 8000412:	d301      	bcc.n	8000418 <__aeabi_idiv+0x190>
 8000414:	008b      	lsls	r3, r1, #2
 8000416:	1ac0      	subs	r0, r0, r3
 8000418:	4152      	adcs	r2, r2
 800041a:	d2d9      	bcs.n	80003d0 <__aeabi_idiv+0x148>
 800041c:	0843      	lsrs	r3, r0, #1
 800041e:	428b      	cmp	r3, r1
 8000420:	d301      	bcc.n	8000426 <__aeabi_idiv+0x19e>
 8000422:	004b      	lsls	r3, r1, #1
 8000424:	1ac0      	subs	r0, r0, r3
 8000426:	4152      	adcs	r2, r2
 8000428:	1a41      	subs	r1, r0, r1
 800042a:	d200      	bcs.n	800042e <__aeabi_idiv+0x1a6>
 800042c:	4601      	mov	r1, r0
 800042e:	4663      	mov	r3, ip
 8000430:	4152      	adcs	r2, r2
 8000432:	105b      	asrs	r3, r3, #1
 8000434:	4610      	mov	r0, r2
 8000436:	d301      	bcc.n	800043c <__aeabi_idiv+0x1b4>
 8000438:	4240      	negs	r0, r0
 800043a:	2b00      	cmp	r3, #0
 800043c:	d500      	bpl.n	8000440 <__aeabi_idiv+0x1b8>
 800043e:	4249      	negs	r1, r1
 8000440:	4770      	bx	lr
 8000442:	4663      	mov	r3, ip
 8000444:	105b      	asrs	r3, r3, #1
 8000446:	d300      	bcc.n	800044a <__aeabi_idiv+0x1c2>
 8000448:	4240      	negs	r0, r0
 800044a:	b501      	push	{r0, lr}
 800044c:	2000      	movs	r0, #0
 800044e:	f000 f805 	bl	800045c <__aeabi_idiv0>
 8000452:	bd02      	pop	{r1, pc}

08000454 <__aeabi_idivmod>:
 8000454:	2900      	cmp	r1, #0
 8000456:	d0f8      	beq.n	800044a <__aeabi_idiv+0x1c2>
 8000458:	e716      	b.n	8000288 <__aeabi_idiv>
 800045a:	4770      	bx	lr

0800045c <__aeabi_idiv0>:
 800045c:	4770      	bx	lr
 800045e:	46c0      	nop			; (mov r8, r8)

08000460 <atexit>:
 8000460:	b510      	push	{r4, lr}
 8000462:	0001      	movs	r1, r0
 8000464:	2300      	movs	r3, #0
 8000466:	2200      	movs	r2, #0
 8000468:	2000      	movs	r0, #0
 800046a:	f000 f83f 	bl	80004ec <__register_exitproc>
 800046e:	bd10      	pop	{r4, pc}

08000470 <__libc_fini_array>:
 8000470:	b570      	push	{r4, r5, r6, lr}
 8000472:	4b09      	ldr	r3, [pc, #36]	; (8000498 <__libc_fini_array+0x28>)
 8000474:	4c09      	ldr	r4, [pc, #36]	; (800049c <__libc_fini_array+0x2c>)
 8000476:	1ae4      	subs	r4, r4, r3
 8000478:	10a4      	asrs	r4, r4, #2
 800047a:	d009      	beq.n	8000490 <__libc_fini_array+0x20>
 800047c:	4a08      	ldr	r2, [pc, #32]	; (80004a0 <__libc_fini_array+0x30>)
 800047e:	18a5      	adds	r5, r4, r2
 8000480:	00ad      	lsls	r5, r5, #2
 8000482:	18ed      	adds	r5, r5, r3
 8000484:	682b      	ldr	r3, [r5, #0]
 8000486:	3c01      	subs	r4, #1
 8000488:	4798      	blx	r3
 800048a:	3d04      	subs	r5, #4
 800048c:	2c00      	cmp	r4, #0
 800048e:	d1f9      	bne.n	8000484 <__libc_fini_array+0x14>
 8000490:	f000 ff12 	bl	80012b8 <_fini>
 8000494:	bd70      	pop	{r4, r5, r6, pc}
 8000496:	46c0      	nop			; (mov r8, r8)
 8000498:	08001334 	.word	0x08001334
 800049c:	08001338 	.word	0x08001338
 80004a0:	3fffffff 	.word	0x3fffffff

080004a4 <__libc_init_array>:
 80004a4:	b570      	push	{r4, r5, r6, lr}
 80004a6:	4e0d      	ldr	r6, [pc, #52]	; (80004dc <__libc_init_array+0x38>)
 80004a8:	4d0d      	ldr	r5, [pc, #52]	; (80004e0 <__libc_init_array+0x3c>)
 80004aa:	2400      	movs	r4, #0
 80004ac:	1bad      	subs	r5, r5, r6
 80004ae:	10ad      	asrs	r5, r5, #2
 80004b0:	d005      	beq.n	80004be <__libc_init_array+0x1a>
 80004b2:	00a3      	lsls	r3, r4, #2
 80004b4:	58f3      	ldr	r3, [r6, r3]
 80004b6:	3401      	adds	r4, #1
 80004b8:	4798      	blx	r3
 80004ba:	42a5      	cmp	r5, r4
 80004bc:	d1f9      	bne.n	80004b2 <__libc_init_array+0xe>
 80004be:	f000 fef5 	bl	80012ac <_init>
 80004c2:	4e08      	ldr	r6, [pc, #32]	; (80004e4 <__libc_init_array+0x40>)
 80004c4:	4d08      	ldr	r5, [pc, #32]	; (80004e8 <__libc_init_array+0x44>)
 80004c6:	2400      	movs	r4, #0
 80004c8:	1bad      	subs	r5, r5, r6
 80004ca:	10ad      	asrs	r5, r5, #2
 80004cc:	d005      	beq.n	80004da <__libc_init_array+0x36>
 80004ce:	00a3      	lsls	r3, r4, #2
 80004d0:	58f3      	ldr	r3, [r6, r3]
 80004d2:	3401      	adds	r4, #1
 80004d4:	4798      	blx	r3
 80004d6:	42a5      	cmp	r5, r4
 80004d8:	d1f9      	bne.n	80004ce <__libc_init_array+0x2a>
 80004da:	bd70      	pop	{r4, r5, r6, pc}
 80004dc:	0800132c 	.word	0x0800132c
 80004e0:	0800132c 	.word	0x0800132c
 80004e4:	0800132c 	.word	0x0800132c
 80004e8:	08001334 	.word	0x08001334

080004ec <__register_exitproc>:
 80004ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80004ee:	46de      	mov	lr, fp
 80004f0:	469b      	mov	fp, r3
 80004f2:	4b31      	ldr	r3, [pc, #196]	; (80005b8 <__register_exitproc+0xcc>)
 80004f4:	4645      	mov	r5, r8
 80004f6:	681c      	ldr	r4, [r3, #0]
 80004f8:	23a4      	movs	r3, #164	; 0xa4
 80004fa:	464e      	mov	r6, r9
 80004fc:	4657      	mov	r7, sl
 80004fe:	005b      	lsls	r3, r3, #1
 8000500:	b5e0      	push	{r5, r6, r7, lr}
 8000502:	0005      	movs	r5, r0
 8000504:	58e0      	ldr	r0, [r4, r3]
 8000506:	000e      	movs	r6, r1
 8000508:	4690      	mov	r8, r2
 800050a:	2800      	cmp	r0, #0
 800050c:	d04b      	beq.n	80005a6 <__register_exitproc+0xba>
 800050e:	6843      	ldr	r3, [r0, #4]
 8000510:	2b1f      	cmp	r3, #31
 8000512:	dc0d      	bgt.n	8000530 <__register_exitproc+0x44>
 8000514:	1c5c      	adds	r4, r3, #1
 8000516:	2d00      	cmp	r5, #0
 8000518:	d121      	bne.n	800055e <__register_exitproc+0x72>
 800051a:	3302      	adds	r3, #2
 800051c:	009b      	lsls	r3, r3, #2
 800051e:	6044      	str	r4, [r0, #4]
 8000520:	501e      	str	r6, [r3, r0]
 8000522:	2000      	movs	r0, #0
 8000524:	bc3c      	pop	{r2, r3, r4, r5}
 8000526:	4690      	mov	r8, r2
 8000528:	4699      	mov	r9, r3
 800052a:	46a2      	mov	sl, r4
 800052c:	46ab      	mov	fp, r5
 800052e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000530:	4b22      	ldr	r3, [pc, #136]	; (80005bc <__register_exitproc+0xd0>)
 8000532:	2b00      	cmp	r3, #0
 8000534:	d03c      	beq.n	80005b0 <__register_exitproc+0xc4>
 8000536:	20c8      	movs	r0, #200	; 0xc8
 8000538:	0040      	lsls	r0, r0, #1
 800053a:	e000      	b.n	800053e <__register_exitproc+0x52>
 800053c:	bf00      	nop
 800053e:	2800      	cmp	r0, #0
 8000540:	d036      	beq.n	80005b0 <__register_exitproc+0xc4>
 8000542:	22a4      	movs	r2, #164	; 0xa4
 8000544:	2300      	movs	r3, #0
 8000546:	0052      	lsls	r2, r2, #1
 8000548:	58a1      	ldr	r1, [r4, r2]
 800054a:	6043      	str	r3, [r0, #4]
 800054c:	6001      	str	r1, [r0, #0]
 800054e:	50a0      	str	r0, [r4, r2]
 8000550:	3240      	adds	r2, #64	; 0x40
 8000552:	5083      	str	r3, [r0, r2]
 8000554:	3204      	adds	r2, #4
 8000556:	5083      	str	r3, [r0, r2]
 8000558:	2401      	movs	r4, #1
 800055a:	2d00      	cmp	r5, #0
 800055c:	d0dd      	beq.n	800051a <__register_exitproc+0x2e>
 800055e:	009a      	lsls	r2, r3, #2
 8000560:	4691      	mov	r9, r2
 8000562:	4481      	add	r9, r0
 8000564:	4642      	mov	r2, r8
 8000566:	2188      	movs	r1, #136	; 0x88
 8000568:	464f      	mov	r7, r9
 800056a:	507a      	str	r2, [r7, r1]
 800056c:	22c4      	movs	r2, #196	; 0xc4
 800056e:	0052      	lsls	r2, r2, #1
 8000570:	4690      	mov	r8, r2
 8000572:	4480      	add	r8, r0
 8000574:	4642      	mov	r2, r8
 8000576:	3987      	subs	r1, #135	; 0x87
 8000578:	4099      	lsls	r1, r3
 800057a:	6812      	ldr	r2, [r2, #0]
 800057c:	468a      	mov	sl, r1
 800057e:	430a      	orrs	r2, r1
 8000580:	4694      	mov	ip, r2
 8000582:	4642      	mov	r2, r8
 8000584:	4661      	mov	r1, ip
 8000586:	6011      	str	r1, [r2, #0]
 8000588:	2284      	movs	r2, #132	; 0x84
 800058a:	4649      	mov	r1, r9
 800058c:	465f      	mov	r7, fp
 800058e:	0052      	lsls	r2, r2, #1
 8000590:	508f      	str	r7, [r1, r2]
 8000592:	2d02      	cmp	r5, #2
 8000594:	d1c1      	bne.n	800051a <__register_exitproc+0x2e>
 8000596:	0002      	movs	r2, r0
 8000598:	4655      	mov	r5, sl
 800059a:	328d      	adds	r2, #141	; 0x8d
 800059c:	32ff      	adds	r2, #255	; 0xff
 800059e:	6811      	ldr	r1, [r2, #0]
 80005a0:	430d      	orrs	r5, r1
 80005a2:	6015      	str	r5, [r2, #0]
 80005a4:	e7b9      	b.n	800051a <__register_exitproc+0x2e>
 80005a6:	0020      	movs	r0, r4
 80005a8:	304d      	adds	r0, #77	; 0x4d
 80005aa:	30ff      	adds	r0, #255	; 0xff
 80005ac:	50e0      	str	r0, [r4, r3]
 80005ae:	e7ae      	b.n	800050e <__register_exitproc+0x22>
 80005b0:	2001      	movs	r0, #1
 80005b2:	4240      	negs	r0, r0
 80005b4:	e7b6      	b.n	8000524 <__register_exitproc+0x38>
 80005b6:	46c0      	nop			; (mov r8, r8)
 80005b8:	080012c4 	.word	0x080012c4
 80005bc:	00000000 	.word	0x00000000

080005c0 <Reset_Handler>:
 80005c0:	480d      	ldr	r0, [pc, #52]	; (80005f8 <LoopForever+0x2>)
 80005c2:	4685      	mov	sp, r0
 80005c4:	480d      	ldr	r0, [pc, #52]	; (80005fc <LoopForever+0x6>)
 80005c6:	490e      	ldr	r1, [pc, #56]	; (8000600 <LoopForever+0xa>)
 80005c8:	4a0e      	ldr	r2, [pc, #56]	; (8000604 <LoopForever+0xe>)
 80005ca:	2300      	movs	r3, #0
 80005cc:	e002      	b.n	80005d4 <LoopCopyDataInit>

080005ce <CopyDataInit>:
 80005ce:	58d4      	ldr	r4, [r2, r3]
 80005d0:	50c4      	str	r4, [r0, r3]
 80005d2:	3304      	adds	r3, #4

080005d4 <LoopCopyDataInit>:
 80005d4:	18c4      	adds	r4, r0, r3
 80005d6:	428c      	cmp	r4, r1
 80005d8:	d3f9      	bcc.n	80005ce <CopyDataInit>
 80005da:	4a0b      	ldr	r2, [pc, #44]	; (8000608 <LoopForever+0x12>)
 80005dc:	4c0b      	ldr	r4, [pc, #44]	; (800060c <LoopForever+0x16>)
 80005de:	2300      	movs	r3, #0
 80005e0:	e001      	b.n	80005e6 <LoopFillZerobss>

080005e2 <FillZerobss>:
 80005e2:	6013      	str	r3, [r2, #0]
 80005e4:	3204      	adds	r2, #4

080005e6 <LoopFillZerobss>:
 80005e6:	42a2      	cmp	r2, r4
 80005e8:	d3fb      	bcc.n	80005e2 <FillZerobss>
 80005ea:	f000 fdfd 	bl	80011e8 <SystemInit>
 80005ee:	f7ff ff59 	bl	80004a4 <__libc_init_array>
 80005f2:	f000 fde5 	bl	80011c0 <main>

080005f6 <LoopForever>:
 80005f6:	e7fe      	b.n	80005f6 <LoopForever>
 80005f8:	20002000 	.word	0x20002000
 80005fc:	20000000 	.word	0x20000000
 8000600:	2000043c 	.word	0x2000043c
 8000604:	08001338 	.word	0x08001338
 8000608:	2000043c 	.word	0x2000043c
 800060c:	20000470 	.word	0x20000470

08000610 <ADC1_COMP_IRQHandler>:
 8000610:	e7fe      	b.n	8000610 <ADC1_COMP_IRQHandler>
	...

08000614 <NVIC_EnableIRQ>:
 8000614:	b580      	push	{r7, lr}
 8000616:	b082      	sub	sp, #8
 8000618:	af00      	add	r7, sp, #0
 800061a:	0002      	movs	r2, r0
 800061c:	1dfb      	adds	r3, r7, #7
 800061e:	701a      	strb	r2, [r3, #0]
 8000620:	4b06      	ldr	r3, [pc, #24]	; (800063c <NVIC_EnableIRQ+0x28>)
 8000622:	1dfa      	adds	r2, r7, #7
 8000624:	7812      	ldrb	r2, [r2, #0]
 8000626:	0011      	movs	r1, r2
 8000628:	221f      	movs	r2, #31
 800062a:	400a      	ands	r2, r1
 800062c:	2101      	movs	r1, #1
 800062e:	4091      	lsls	r1, r2
 8000630:	000a      	movs	r2, r1
 8000632:	601a      	str	r2, [r3, #0]
 8000634:	46c0      	nop			; (mov r8, r8)
 8000636:	46bd      	mov	sp, r7
 8000638:	b002      	add	sp, #8
 800063a:	bd80      	pop	{r7, pc}
 800063c:	e000e100 	.word	0xe000e100

08000640 <NVIC_SetPriority>:
 8000640:	b5b0      	push	{r4, r5, r7, lr}
 8000642:	b082      	sub	sp, #8
 8000644:	af00      	add	r7, sp, #0
 8000646:	0002      	movs	r2, r0
 8000648:	6039      	str	r1, [r7, #0]
 800064a:	1dfb      	adds	r3, r7, #7
 800064c:	701a      	strb	r2, [r3, #0]
 800064e:	1dfb      	adds	r3, r7, #7
 8000650:	781b      	ldrb	r3, [r3, #0]
 8000652:	2b7f      	cmp	r3, #127	; 0x7f
 8000654:	d932      	bls.n	80006bc <NVIC_SetPriority+0x7c>
 8000656:	4c2f      	ldr	r4, [pc, #188]	; (8000714 <NVIC_SetPriority+0xd4>)
 8000658:	1dfb      	adds	r3, r7, #7
 800065a:	781b      	ldrb	r3, [r3, #0]
 800065c:	001a      	movs	r2, r3
 800065e:	230f      	movs	r3, #15
 8000660:	4013      	ands	r3, r2
 8000662:	3b08      	subs	r3, #8
 8000664:	0899      	lsrs	r1, r3, #2
 8000666:	4a2b      	ldr	r2, [pc, #172]	; (8000714 <NVIC_SetPriority+0xd4>)
 8000668:	1dfb      	adds	r3, r7, #7
 800066a:	781b      	ldrb	r3, [r3, #0]
 800066c:	0018      	movs	r0, r3
 800066e:	230f      	movs	r3, #15
 8000670:	4003      	ands	r3, r0
 8000672:	3b08      	subs	r3, #8
 8000674:	089b      	lsrs	r3, r3, #2
 8000676:	3306      	adds	r3, #6
 8000678:	009b      	lsls	r3, r3, #2
 800067a:	18d3      	adds	r3, r2, r3
 800067c:	3304      	adds	r3, #4
 800067e:	681b      	ldr	r3, [r3, #0]
 8000680:	1dfa      	adds	r2, r7, #7
 8000682:	7812      	ldrb	r2, [r2, #0]
 8000684:	0010      	movs	r0, r2
 8000686:	2203      	movs	r2, #3
 8000688:	4002      	ands	r2, r0
 800068a:	00d2      	lsls	r2, r2, #3
 800068c:	20ff      	movs	r0, #255	; 0xff
 800068e:	4090      	lsls	r0, r2
 8000690:	0002      	movs	r2, r0
 8000692:	43d2      	mvns	r2, r2
 8000694:	401a      	ands	r2, r3
 8000696:	683b      	ldr	r3, [r7, #0]
 8000698:	019b      	lsls	r3, r3, #6
 800069a:	20ff      	movs	r0, #255	; 0xff
 800069c:	4018      	ands	r0, r3
 800069e:	1dfb      	adds	r3, r7, #7
 80006a0:	781b      	ldrb	r3, [r3, #0]
 80006a2:	001d      	movs	r5, r3
 80006a4:	2303      	movs	r3, #3
 80006a6:	402b      	ands	r3, r5
 80006a8:	00db      	lsls	r3, r3, #3
 80006aa:	4098      	lsls	r0, r3
 80006ac:	0003      	movs	r3, r0
 80006ae:	431a      	orrs	r2, r3
 80006b0:	1d8b      	adds	r3, r1, #6
 80006b2:	009b      	lsls	r3, r3, #2
 80006b4:	18e3      	adds	r3, r4, r3
 80006b6:	3304      	adds	r3, #4
 80006b8:	601a      	str	r2, [r3, #0]
 80006ba:	e027      	b.n	800070c <NVIC_SetPriority+0xcc>
 80006bc:	4c16      	ldr	r4, [pc, #88]	; (8000718 <NVIC_SetPriority+0xd8>)
 80006be:	1dfb      	adds	r3, r7, #7
 80006c0:	781b      	ldrb	r3, [r3, #0]
 80006c2:	b25b      	sxtb	r3, r3
 80006c4:	089b      	lsrs	r3, r3, #2
 80006c6:	4914      	ldr	r1, [pc, #80]	; (8000718 <NVIC_SetPriority+0xd8>)
 80006c8:	1dfa      	adds	r2, r7, #7
 80006ca:	7812      	ldrb	r2, [r2, #0]
 80006cc:	b252      	sxtb	r2, r2
 80006ce:	0892      	lsrs	r2, r2, #2
 80006d0:	32c0      	adds	r2, #192	; 0xc0
 80006d2:	0092      	lsls	r2, r2, #2
 80006d4:	5852      	ldr	r2, [r2, r1]
 80006d6:	1df9      	adds	r1, r7, #7
 80006d8:	7809      	ldrb	r1, [r1, #0]
 80006da:	0008      	movs	r0, r1
 80006dc:	2103      	movs	r1, #3
 80006de:	4001      	ands	r1, r0
 80006e0:	00c9      	lsls	r1, r1, #3
 80006e2:	20ff      	movs	r0, #255	; 0xff
 80006e4:	4088      	lsls	r0, r1
 80006e6:	0001      	movs	r1, r0
 80006e8:	43c9      	mvns	r1, r1
 80006ea:	4011      	ands	r1, r2
 80006ec:	683a      	ldr	r2, [r7, #0]
 80006ee:	0192      	lsls	r2, r2, #6
 80006f0:	20ff      	movs	r0, #255	; 0xff
 80006f2:	4010      	ands	r0, r2
 80006f4:	1dfa      	adds	r2, r7, #7
 80006f6:	7812      	ldrb	r2, [r2, #0]
 80006f8:	0015      	movs	r5, r2
 80006fa:	2203      	movs	r2, #3
 80006fc:	402a      	ands	r2, r5
 80006fe:	00d2      	lsls	r2, r2, #3
 8000700:	4090      	lsls	r0, r2
 8000702:	0002      	movs	r2, r0
 8000704:	430a      	orrs	r2, r1
 8000706:	33c0      	adds	r3, #192	; 0xc0
 8000708:	009b      	lsls	r3, r3, #2
 800070a:	511a      	str	r2, [r3, r4]
 800070c:	46c0      	nop			; (mov r8, r8)
 800070e:	46bd      	mov	sp, r7
 8000710:	b002      	add	sp, #8
 8000712:	bdb0      	pop	{r4, r5, r7, pc}
 8000714:	e000ed00 	.word	0xe000ed00
 8000718:	e000e100 	.word	0xe000e100

0800071c <LL_RCC_HSI_Enable>:
 800071c:	b580      	push	{r7, lr}
 800071e:	af00      	add	r7, sp, #0
 8000720:	4b04      	ldr	r3, [pc, #16]	; (8000734 <LL_RCC_HSI_Enable+0x18>)
 8000722:	4a04      	ldr	r2, [pc, #16]	; (8000734 <LL_RCC_HSI_Enable+0x18>)
 8000724:	6812      	ldr	r2, [r2, #0]
 8000726:	2101      	movs	r1, #1
 8000728:	430a      	orrs	r2, r1
 800072a:	601a      	str	r2, [r3, #0]
 800072c:	46c0      	nop			; (mov r8, r8)
 800072e:	46bd      	mov	sp, r7
 8000730:	bd80      	pop	{r7, pc}
 8000732:	46c0      	nop			; (mov r8, r8)
 8000734:	40021000 	.word	0x40021000

08000738 <LL_RCC_HSI_IsReady>:
 8000738:	b580      	push	{r7, lr}
 800073a:	af00      	add	r7, sp, #0
 800073c:	4b05      	ldr	r3, [pc, #20]	; (8000754 <LL_RCC_HSI_IsReady+0x1c>)
 800073e:	681b      	ldr	r3, [r3, #0]
 8000740:	2202      	movs	r2, #2
 8000742:	4013      	ands	r3, r2
 8000744:	3b02      	subs	r3, #2
 8000746:	425a      	negs	r2, r3
 8000748:	4153      	adcs	r3, r2
 800074a:	b2db      	uxtb	r3, r3
 800074c:	0018      	movs	r0, r3
 800074e:	46bd      	mov	sp, r7
 8000750:	bd80      	pop	{r7, pc}
 8000752:	46c0      	nop			; (mov r8, r8)
 8000754:	40021000 	.word	0x40021000

08000758 <LL_RCC_SetSysClkSource>:
 8000758:	b580      	push	{r7, lr}
 800075a:	b082      	sub	sp, #8
 800075c:	af00      	add	r7, sp, #0
 800075e:	6078      	str	r0, [r7, #4]
 8000760:	4b06      	ldr	r3, [pc, #24]	; (800077c <LL_RCC_SetSysClkSource+0x24>)
 8000762:	4a06      	ldr	r2, [pc, #24]	; (800077c <LL_RCC_SetSysClkSource+0x24>)
 8000764:	6852      	ldr	r2, [r2, #4]
 8000766:	2103      	movs	r1, #3
 8000768:	438a      	bics	r2, r1
 800076a:	0011      	movs	r1, r2
 800076c:	687a      	ldr	r2, [r7, #4]
 800076e:	430a      	orrs	r2, r1
 8000770:	605a      	str	r2, [r3, #4]
 8000772:	46c0      	nop			; (mov r8, r8)
 8000774:	46bd      	mov	sp, r7
 8000776:	b002      	add	sp, #8
 8000778:	bd80      	pop	{r7, pc}
 800077a:	46c0      	nop			; (mov r8, r8)
 800077c:	40021000 	.word	0x40021000

08000780 <LL_RCC_GetSysClkSource>:
 8000780:	b580      	push	{r7, lr}
 8000782:	af00      	add	r7, sp, #0
 8000784:	4b03      	ldr	r3, [pc, #12]	; (8000794 <LL_RCC_GetSysClkSource+0x14>)
 8000786:	685b      	ldr	r3, [r3, #4]
 8000788:	220c      	movs	r2, #12
 800078a:	4013      	ands	r3, r2
 800078c:	0018      	movs	r0, r3
 800078e:	46bd      	mov	sp, r7
 8000790:	bd80      	pop	{r7, pc}
 8000792:	46c0      	nop			; (mov r8, r8)
 8000794:	40021000 	.word	0x40021000

08000798 <LL_RCC_SetAHBPrescaler>:
 8000798:	b580      	push	{r7, lr}
 800079a:	b082      	sub	sp, #8
 800079c:	af00      	add	r7, sp, #0
 800079e:	6078      	str	r0, [r7, #4]
 80007a0:	4b06      	ldr	r3, [pc, #24]	; (80007bc <LL_RCC_SetAHBPrescaler+0x24>)
 80007a2:	4a06      	ldr	r2, [pc, #24]	; (80007bc <LL_RCC_SetAHBPrescaler+0x24>)
 80007a4:	6852      	ldr	r2, [r2, #4]
 80007a6:	21f0      	movs	r1, #240	; 0xf0
 80007a8:	438a      	bics	r2, r1
 80007aa:	0011      	movs	r1, r2
 80007ac:	687a      	ldr	r2, [r7, #4]
 80007ae:	430a      	orrs	r2, r1
 80007b0:	605a      	str	r2, [r3, #4]
 80007b2:	46c0      	nop			; (mov r8, r8)
 80007b4:	46bd      	mov	sp, r7
 80007b6:	b002      	add	sp, #8
 80007b8:	bd80      	pop	{r7, pc}
 80007ba:	46c0      	nop			; (mov r8, r8)
 80007bc:	40021000 	.word	0x40021000

080007c0 <LL_RCC_SetAPB1Prescaler>:
 80007c0:	b580      	push	{r7, lr}
 80007c2:	b082      	sub	sp, #8
 80007c4:	af00      	add	r7, sp, #0
 80007c6:	6078      	str	r0, [r7, #4]
 80007c8:	4b05      	ldr	r3, [pc, #20]	; (80007e0 <LL_RCC_SetAPB1Prescaler+0x20>)
 80007ca:	4a05      	ldr	r2, [pc, #20]	; (80007e0 <LL_RCC_SetAPB1Prescaler+0x20>)
 80007cc:	6852      	ldr	r2, [r2, #4]
 80007ce:	4905      	ldr	r1, [pc, #20]	; (80007e4 <LL_RCC_SetAPB1Prescaler+0x24>)
 80007d0:	4011      	ands	r1, r2
 80007d2:	687a      	ldr	r2, [r7, #4]
 80007d4:	430a      	orrs	r2, r1
 80007d6:	605a      	str	r2, [r3, #4]
 80007d8:	46c0      	nop			; (mov r8, r8)
 80007da:	46bd      	mov	sp, r7
 80007dc:	b002      	add	sp, #8
 80007de:	bd80      	pop	{r7, pc}
 80007e0:	40021000 	.word	0x40021000
 80007e4:	fffff8ff 	.word	0xfffff8ff

080007e8 <LL_RCC_PLL_Enable>:
 80007e8:	b580      	push	{r7, lr}
 80007ea:	af00      	add	r7, sp, #0
 80007ec:	4b04      	ldr	r3, [pc, #16]	; (8000800 <LL_RCC_PLL_Enable+0x18>)
 80007ee:	4a04      	ldr	r2, [pc, #16]	; (8000800 <LL_RCC_PLL_Enable+0x18>)
 80007f0:	6812      	ldr	r2, [r2, #0]
 80007f2:	2180      	movs	r1, #128	; 0x80
 80007f4:	0449      	lsls	r1, r1, #17
 80007f6:	430a      	orrs	r2, r1
 80007f8:	601a      	str	r2, [r3, #0]
 80007fa:	46c0      	nop			; (mov r8, r8)
 80007fc:	46bd      	mov	sp, r7
 80007fe:	bd80      	pop	{r7, pc}
 8000800:	40021000 	.word	0x40021000

08000804 <LL_RCC_PLL_IsReady>:
 8000804:	b580      	push	{r7, lr}
 8000806:	af00      	add	r7, sp, #0
 8000808:	4b07      	ldr	r3, [pc, #28]	; (8000828 <LL_RCC_PLL_IsReady+0x24>)
 800080a:	681a      	ldr	r2, [r3, #0]
 800080c:	2380      	movs	r3, #128	; 0x80
 800080e:	049b      	lsls	r3, r3, #18
 8000810:	4013      	ands	r3, r2
 8000812:	22fe      	movs	r2, #254	; 0xfe
 8000814:	0612      	lsls	r2, r2, #24
 8000816:	4694      	mov	ip, r2
 8000818:	4463      	add	r3, ip
 800081a:	425a      	negs	r2, r3
 800081c:	4153      	adcs	r3, r2
 800081e:	b2db      	uxtb	r3, r3
 8000820:	0018      	movs	r0, r3
 8000822:	46bd      	mov	sp, r7
 8000824:	bd80      	pop	{r7, pc}
 8000826:	46c0      	nop			; (mov r8, r8)
 8000828:	40021000 	.word	0x40021000

0800082c <LL_RCC_PLL_ConfigDomain_SYS>:
 800082c:	b580      	push	{r7, lr}
 800082e:	b082      	sub	sp, #8
 8000830:	af00      	add	r7, sp, #0
 8000832:	6078      	str	r0, [r7, #4]
 8000834:	6039      	str	r1, [r7, #0]
 8000836:	4b0e      	ldr	r3, [pc, #56]	; (8000870 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000838:	4a0d      	ldr	r2, [pc, #52]	; (8000870 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800083a:	6852      	ldr	r2, [r2, #4]
 800083c:	490d      	ldr	r1, [pc, #52]	; (8000874 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 800083e:	4011      	ands	r1, r2
 8000840:	6878      	ldr	r0, [r7, #4]
 8000842:	2280      	movs	r2, #128	; 0x80
 8000844:	0252      	lsls	r2, r2, #9
 8000846:	4010      	ands	r0, r2
 8000848:	683a      	ldr	r2, [r7, #0]
 800084a:	4302      	orrs	r2, r0
 800084c:	430a      	orrs	r2, r1
 800084e:	605a      	str	r2, [r3, #4]
 8000850:	4b07      	ldr	r3, [pc, #28]	; (8000870 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000852:	4a07      	ldr	r2, [pc, #28]	; (8000870 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000854:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8000856:	210f      	movs	r1, #15
 8000858:	438a      	bics	r2, r1
 800085a:	0011      	movs	r1, r2
 800085c:	687a      	ldr	r2, [r7, #4]
 800085e:	200f      	movs	r0, #15
 8000860:	4002      	ands	r2, r0
 8000862:	430a      	orrs	r2, r1
 8000864:	62da      	str	r2, [r3, #44]	; 0x2c
 8000866:	46c0      	nop			; (mov r8, r8)
 8000868:	46bd      	mov	sp, r7
 800086a:	b002      	add	sp, #8
 800086c:	bd80      	pop	{r7, pc}
 800086e:	46c0      	nop			; (mov r8, r8)
 8000870:	40021000 	.word	0x40021000
 8000874:	ffc2ffff 	.word	0xffc2ffff

08000878 <LL_FLASH_SetLatency>:
 8000878:	b580      	push	{r7, lr}
 800087a:	b082      	sub	sp, #8
 800087c:	af00      	add	r7, sp, #0
 800087e:	6078      	str	r0, [r7, #4]
 8000880:	4b06      	ldr	r3, [pc, #24]	; (800089c <LL_FLASH_SetLatency+0x24>)
 8000882:	4a06      	ldr	r2, [pc, #24]	; (800089c <LL_FLASH_SetLatency+0x24>)
 8000884:	6812      	ldr	r2, [r2, #0]
 8000886:	2101      	movs	r1, #1
 8000888:	438a      	bics	r2, r1
 800088a:	0011      	movs	r1, r2
 800088c:	687a      	ldr	r2, [r7, #4]
 800088e:	430a      	orrs	r2, r1
 8000890:	601a      	str	r2, [r3, #0]
 8000892:	46c0      	nop			; (mov r8, r8)
 8000894:	46bd      	mov	sp, r7
 8000896:	b002      	add	sp, #8
 8000898:	bd80      	pop	{r7, pc}
 800089a:	46c0      	nop			; (mov r8, r8)
 800089c:	40022000 	.word	0x40022000

080008a0 <LL_AHB1_GRP1_EnableClock>:
 80008a0:	b580      	push	{r7, lr}
 80008a2:	b084      	sub	sp, #16
 80008a4:	af00      	add	r7, sp, #0
 80008a6:	6078      	str	r0, [r7, #4]
 80008a8:	4b07      	ldr	r3, [pc, #28]	; (80008c8 <LL_AHB1_GRP1_EnableClock+0x28>)
 80008aa:	4a07      	ldr	r2, [pc, #28]	; (80008c8 <LL_AHB1_GRP1_EnableClock+0x28>)
 80008ac:	6951      	ldr	r1, [r2, #20]
 80008ae:	687a      	ldr	r2, [r7, #4]
 80008b0:	430a      	orrs	r2, r1
 80008b2:	615a      	str	r2, [r3, #20]
 80008b4:	4b04      	ldr	r3, [pc, #16]	; (80008c8 <LL_AHB1_GRP1_EnableClock+0x28>)
 80008b6:	695b      	ldr	r3, [r3, #20]
 80008b8:	687a      	ldr	r2, [r7, #4]
 80008ba:	4013      	ands	r3, r2
 80008bc:	60fb      	str	r3, [r7, #12]
 80008be:	68fb      	ldr	r3, [r7, #12]
 80008c0:	46c0      	nop			; (mov r8, r8)
 80008c2:	46bd      	mov	sp, r7
 80008c4:	b004      	add	sp, #16
 80008c6:	bd80      	pop	{r7, pc}
 80008c8:	40021000 	.word	0x40021000

080008cc <LL_APB1_GRP1_EnableClock>:
 80008cc:	b580      	push	{r7, lr}
 80008ce:	b084      	sub	sp, #16
 80008d0:	af00      	add	r7, sp, #0
 80008d2:	6078      	str	r0, [r7, #4]
 80008d4:	4b07      	ldr	r3, [pc, #28]	; (80008f4 <LL_APB1_GRP1_EnableClock+0x28>)
 80008d6:	4a07      	ldr	r2, [pc, #28]	; (80008f4 <LL_APB1_GRP1_EnableClock+0x28>)
 80008d8:	69d1      	ldr	r1, [r2, #28]
 80008da:	687a      	ldr	r2, [r7, #4]
 80008dc:	430a      	orrs	r2, r1
 80008de:	61da      	str	r2, [r3, #28]
 80008e0:	4b04      	ldr	r3, [pc, #16]	; (80008f4 <LL_APB1_GRP1_EnableClock+0x28>)
 80008e2:	69db      	ldr	r3, [r3, #28]
 80008e4:	687a      	ldr	r2, [r7, #4]
 80008e6:	4013      	ands	r3, r2
 80008e8:	60fb      	str	r3, [r7, #12]
 80008ea:	68fb      	ldr	r3, [r7, #12]
 80008ec:	46c0      	nop			; (mov r8, r8)
 80008ee:	46bd      	mov	sp, r7
 80008f0:	b004      	add	sp, #16
 80008f2:	bd80      	pop	{r7, pc}
 80008f4:	40021000 	.word	0x40021000

080008f8 <LL_GPIO_SetPinMode>:
 80008f8:	b580      	push	{r7, lr}
 80008fa:	b084      	sub	sp, #16
 80008fc:	af00      	add	r7, sp, #0
 80008fe:	60f8      	str	r0, [r7, #12]
 8000900:	60b9      	str	r1, [r7, #8]
 8000902:	607a      	str	r2, [r7, #4]
 8000904:	68fb      	ldr	r3, [r7, #12]
 8000906:	6819      	ldr	r1, [r3, #0]
 8000908:	68bb      	ldr	r3, [r7, #8]
 800090a:	68ba      	ldr	r2, [r7, #8]
 800090c:	435a      	muls	r2, r3
 800090e:	0013      	movs	r3, r2
 8000910:	005b      	lsls	r3, r3, #1
 8000912:	189b      	adds	r3, r3, r2
 8000914:	43db      	mvns	r3, r3
 8000916:	400b      	ands	r3, r1
 8000918:	001a      	movs	r2, r3
 800091a:	68bb      	ldr	r3, [r7, #8]
 800091c:	68b9      	ldr	r1, [r7, #8]
 800091e:	434b      	muls	r3, r1
 8000920:	6879      	ldr	r1, [r7, #4]
 8000922:	434b      	muls	r3, r1
 8000924:	431a      	orrs	r2, r3
 8000926:	68fb      	ldr	r3, [r7, #12]
 8000928:	601a      	str	r2, [r3, #0]
 800092a:	46c0      	nop			; (mov r8, r8)
 800092c:	46bd      	mov	sp, r7
 800092e:	b004      	add	sp, #16
 8000930:	bd80      	pop	{r7, pc}

08000932 <LL_GPIO_SetPinPull>:
 8000932:	b580      	push	{r7, lr}
 8000934:	b084      	sub	sp, #16
 8000936:	af00      	add	r7, sp, #0
 8000938:	60f8      	str	r0, [r7, #12]
 800093a:	60b9      	str	r1, [r7, #8]
 800093c:	607a      	str	r2, [r7, #4]
 800093e:	68fb      	ldr	r3, [r7, #12]
 8000940:	68d9      	ldr	r1, [r3, #12]
 8000942:	68bb      	ldr	r3, [r7, #8]
 8000944:	68ba      	ldr	r2, [r7, #8]
 8000946:	435a      	muls	r2, r3
 8000948:	0013      	movs	r3, r2
 800094a:	005b      	lsls	r3, r3, #1
 800094c:	189b      	adds	r3, r3, r2
 800094e:	43db      	mvns	r3, r3
 8000950:	400b      	ands	r3, r1
 8000952:	001a      	movs	r2, r3
 8000954:	68bb      	ldr	r3, [r7, #8]
 8000956:	68b9      	ldr	r1, [r7, #8]
 8000958:	434b      	muls	r3, r1
 800095a:	6879      	ldr	r1, [r7, #4]
 800095c:	434b      	muls	r3, r1
 800095e:	431a      	orrs	r2, r3
 8000960:	68fb      	ldr	r3, [r7, #12]
 8000962:	60da      	str	r2, [r3, #12]
 8000964:	46c0      	nop			; (mov r8, r8)
 8000966:	46bd      	mov	sp, r7
 8000968:	b004      	add	sp, #16
 800096a:	bd80      	pop	{r7, pc}

0800096c <LL_GPIO_SetAFPin_0_7>:
 800096c:	b580      	push	{r7, lr}
 800096e:	b084      	sub	sp, #16
 8000970:	af00      	add	r7, sp, #0
 8000972:	60f8      	str	r0, [r7, #12]
 8000974:	60b9      	str	r1, [r7, #8]
 8000976:	607a      	str	r2, [r7, #4]
 8000978:	68fb      	ldr	r3, [r7, #12]
 800097a:	6a19      	ldr	r1, [r3, #32]
 800097c:	68bb      	ldr	r3, [r7, #8]
 800097e:	68ba      	ldr	r2, [r7, #8]
 8000980:	4353      	muls	r3, r2
 8000982:	68ba      	ldr	r2, [r7, #8]
 8000984:	4353      	muls	r3, r2
 8000986:	68ba      	ldr	r2, [r7, #8]
 8000988:	435a      	muls	r2, r3
 800098a:	0013      	movs	r3, r2
 800098c:	011b      	lsls	r3, r3, #4
 800098e:	1a9b      	subs	r3, r3, r2
 8000990:	43db      	mvns	r3, r3
 8000992:	400b      	ands	r3, r1
 8000994:	001a      	movs	r2, r3
 8000996:	68bb      	ldr	r3, [r7, #8]
 8000998:	68b9      	ldr	r1, [r7, #8]
 800099a:	434b      	muls	r3, r1
 800099c:	68b9      	ldr	r1, [r7, #8]
 800099e:	434b      	muls	r3, r1
 80009a0:	68b9      	ldr	r1, [r7, #8]
 80009a2:	434b      	muls	r3, r1
 80009a4:	6879      	ldr	r1, [r7, #4]
 80009a6:	434b      	muls	r3, r1
 80009a8:	431a      	orrs	r2, r3
 80009aa:	68fb      	ldr	r3, [r7, #12]
 80009ac:	621a      	str	r2, [r3, #32]
 80009ae:	46c0      	nop			; (mov r8, r8)
 80009b0:	46bd      	mov	sp, r7
 80009b2:	b004      	add	sp, #16
 80009b4:	bd80      	pop	{r7, pc}

080009b6 <LL_GPIO_WriteOutputPort>:
 80009b6:	b580      	push	{r7, lr}
 80009b8:	b082      	sub	sp, #8
 80009ba:	af00      	add	r7, sp, #0
 80009bc:	6078      	str	r0, [r7, #4]
 80009be:	6039      	str	r1, [r7, #0]
 80009c0:	687b      	ldr	r3, [r7, #4]
 80009c2:	683a      	ldr	r2, [r7, #0]
 80009c4:	615a      	str	r2, [r3, #20]
 80009c6:	46c0      	nop			; (mov r8, r8)
 80009c8:	46bd      	mov	sp, r7
 80009ca:	b002      	add	sp, #8
 80009cc:	bd80      	pop	{r7, pc}

080009ce <LL_GPIO_ReadOutputPort>:
 80009ce:	b580      	push	{r7, lr}
 80009d0:	b082      	sub	sp, #8
 80009d2:	af00      	add	r7, sp, #0
 80009d4:	6078      	str	r0, [r7, #4]
 80009d6:	687b      	ldr	r3, [r7, #4]
 80009d8:	695b      	ldr	r3, [r3, #20]
 80009da:	0018      	movs	r0, r3
 80009dc:	46bd      	mov	sp, r7
 80009de:	b002      	add	sp, #8
 80009e0:	bd80      	pop	{r7, pc}

080009e2 <LL_GPIO_SetOutputPin>:
 80009e2:	b580      	push	{r7, lr}
 80009e4:	b082      	sub	sp, #8
 80009e6:	af00      	add	r7, sp, #0
 80009e8:	6078      	str	r0, [r7, #4]
 80009ea:	6039      	str	r1, [r7, #0]
 80009ec:	687b      	ldr	r3, [r7, #4]
 80009ee:	683a      	ldr	r2, [r7, #0]
 80009f0:	619a      	str	r2, [r3, #24]
 80009f2:	46c0      	nop			; (mov r8, r8)
 80009f4:	46bd      	mov	sp, r7
 80009f6:	b002      	add	sp, #8
 80009f8:	bd80      	pop	{r7, pc}

080009fa <LL_GPIO_TogglePin>:
 80009fa:	b580      	push	{r7, lr}
 80009fc:	b082      	sub	sp, #8
 80009fe:	af00      	add	r7, sp, #0
 8000a00:	6078      	str	r0, [r7, #4]
 8000a02:	6039      	str	r1, [r7, #0]
 8000a04:	687b      	ldr	r3, [r7, #4]
 8000a06:	695a      	ldr	r2, [r3, #20]
 8000a08:	683b      	ldr	r3, [r7, #0]
 8000a0a:	405a      	eors	r2, r3
 8000a0c:	687b      	ldr	r3, [r7, #4]
 8000a0e:	615a      	str	r2, [r3, #20]
 8000a10:	46c0      	nop			; (mov r8, r8)
 8000a12:	46bd      	mov	sp, r7
 8000a14:	b002      	add	sp, #8
 8000a16:	bd80      	pop	{r7, pc}

08000a18 <LL_SYSTICK_EnableIT>:
 8000a18:	b580      	push	{r7, lr}
 8000a1a:	af00      	add	r7, sp, #0
 8000a1c:	4b04      	ldr	r3, [pc, #16]	; (8000a30 <LL_SYSTICK_EnableIT+0x18>)
 8000a1e:	4a04      	ldr	r2, [pc, #16]	; (8000a30 <LL_SYSTICK_EnableIT+0x18>)
 8000a20:	6812      	ldr	r2, [r2, #0]
 8000a22:	2102      	movs	r1, #2
 8000a24:	430a      	orrs	r2, r1
 8000a26:	601a      	str	r2, [r3, #0]
 8000a28:	46c0      	nop			; (mov r8, r8)
 8000a2a:	46bd      	mov	sp, r7
 8000a2c:	bd80      	pop	{r7, pc}
 8000a2e:	46c0      	nop			; (mov r8, r8)
 8000a30:	e000e010 	.word	0xe000e010

08000a34 <LL_InitTick>:
 8000a34:	b590      	push	{r4, r7, lr}
 8000a36:	b083      	sub	sp, #12
 8000a38:	af00      	add	r7, sp, #0
 8000a3a:	6078      	str	r0, [r7, #4]
 8000a3c:	6039      	str	r1, [r7, #0]
 8000a3e:	4c09      	ldr	r4, [pc, #36]	; (8000a64 <LL_InitTick+0x30>)
 8000a40:	6839      	ldr	r1, [r7, #0]
 8000a42:	6878      	ldr	r0, [r7, #4]
 8000a44:	f7ff fb96 	bl	8000174 <__aeabi_uidiv>
 8000a48:	0003      	movs	r3, r0
 8000a4a:	3b01      	subs	r3, #1
 8000a4c:	6063      	str	r3, [r4, #4]
 8000a4e:	4b05      	ldr	r3, [pc, #20]	; (8000a64 <LL_InitTick+0x30>)
 8000a50:	2200      	movs	r2, #0
 8000a52:	609a      	str	r2, [r3, #8]
 8000a54:	4b03      	ldr	r3, [pc, #12]	; (8000a64 <LL_InitTick+0x30>)
 8000a56:	2205      	movs	r2, #5
 8000a58:	601a      	str	r2, [r3, #0]
 8000a5a:	46c0      	nop			; (mov r8, r8)
 8000a5c:	46bd      	mov	sp, r7
 8000a5e:	b003      	add	sp, #12
 8000a60:	bd90      	pop	{r4, r7, pc}
 8000a62:	46c0      	nop			; (mov r8, r8)
 8000a64:	e000e010 	.word	0xe000e010

08000a68 <gpio_ind7_config>:
 8000a68:	b580      	push	{r7, lr}
 8000a6a:	af00      	add	r7, sp, #0
 8000a6c:	2380      	movs	r3, #128	; 0x80
 8000a6e:	02db      	lsls	r3, r3, #11
 8000a70:	0018      	movs	r0, r3
 8000a72:	f7ff ff15 	bl	80008a0 <LL_AHB1_GRP1_EnableClock>
 8000a76:	4b2e      	ldr	r3, [pc, #184]	; (8000b30 <gpio_ind7_config+0xc8>)
 8000a78:	2201      	movs	r2, #1
 8000a7a:	2101      	movs	r1, #1
 8000a7c:	0018      	movs	r0, r3
 8000a7e:	f7ff ff3b 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000a82:	4b2b      	ldr	r3, [pc, #172]	; (8000b30 <gpio_ind7_config+0xc8>)
 8000a84:	2201      	movs	r2, #1
 8000a86:	2102      	movs	r1, #2
 8000a88:	0018      	movs	r0, r3
 8000a8a:	f7ff ff35 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000a8e:	4b28      	ldr	r3, [pc, #160]	; (8000b30 <gpio_ind7_config+0xc8>)
 8000a90:	2201      	movs	r2, #1
 8000a92:	2104      	movs	r1, #4
 8000a94:	0018      	movs	r0, r3
 8000a96:	f7ff ff2f 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000a9a:	4b25      	ldr	r3, [pc, #148]	; (8000b30 <gpio_ind7_config+0xc8>)
 8000a9c:	2201      	movs	r2, #1
 8000a9e:	2108      	movs	r1, #8
 8000aa0:	0018      	movs	r0, r3
 8000aa2:	f7ff ff29 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000aa6:	4b22      	ldr	r3, [pc, #136]	; (8000b30 <gpio_ind7_config+0xc8>)
 8000aa8:	2201      	movs	r2, #1
 8000aaa:	2110      	movs	r1, #16
 8000aac:	0018      	movs	r0, r3
 8000aae:	f7ff ff23 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000ab2:	4b1f      	ldr	r3, [pc, #124]	; (8000b30 <gpio_ind7_config+0xc8>)
 8000ab4:	2201      	movs	r2, #1
 8000ab6:	2120      	movs	r1, #32
 8000ab8:	0018      	movs	r0, r3
 8000aba:	f7ff ff1d 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000abe:	4b1c      	ldr	r3, [pc, #112]	; (8000b30 <gpio_ind7_config+0xc8>)
 8000ac0:	2201      	movs	r2, #1
 8000ac2:	2140      	movs	r1, #64	; 0x40
 8000ac4:	0018      	movs	r0, r3
 8000ac6:	f7ff ff17 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000aca:	4b19      	ldr	r3, [pc, #100]	; (8000b30 <gpio_ind7_config+0xc8>)
 8000acc:	2201      	movs	r2, #1
 8000ace:	2180      	movs	r1, #128	; 0x80
 8000ad0:	0018      	movs	r0, r3
 8000ad2:	f7ff ff11 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000ad6:	2380      	movs	r3, #128	; 0x80
 8000ad8:	029b      	lsls	r3, r3, #10
 8000ada:	0018      	movs	r0, r3
 8000adc:	f7ff fee0 	bl	80008a0 <LL_AHB1_GRP1_EnableClock>
 8000ae0:	2390      	movs	r3, #144	; 0x90
 8000ae2:	05db      	lsls	r3, r3, #23
 8000ae4:	2200      	movs	r2, #0
 8000ae6:	2101      	movs	r1, #1
 8000ae8:	0018      	movs	r0, r3
 8000aea:	f7ff ff05 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000aee:	2380      	movs	r3, #128	; 0x80
 8000af0:	031b      	lsls	r3, r3, #12
 8000af2:	0018      	movs	r0, r3
 8000af4:	f7ff fed4 	bl	80008a0 <LL_AHB1_GRP1_EnableClock>
 8000af8:	4b0e      	ldr	r3, [pc, #56]	; (8000b34 <gpio_ind7_config+0xcc>)
 8000afa:	2201      	movs	r2, #1
 8000afc:	2101      	movs	r1, #1
 8000afe:	0018      	movs	r0, r3
 8000b00:	f7ff fefa 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000b04:	4b0b      	ldr	r3, [pc, #44]	; (8000b34 <gpio_ind7_config+0xcc>)
 8000b06:	2201      	movs	r2, #1
 8000b08:	2102      	movs	r1, #2
 8000b0a:	0018      	movs	r0, r3
 8000b0c:	f7ff fef4 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000b10:	4b08      	ldr	r3, [pc, #32]	; (8000b34 <gpio_ind7_config+0xcc>)
 8000b12:	2201      	movs	r2, #1
 8000b14:	2104      	movs	r1, #4
 8000b16:	0018      	movs	r0, r3
 8000b18:	f7ff feee 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000b1c:	4b05      	ldr	r3, [pc, #20]	; (8000b34 <gpio_ind7_config+0xcc>)
 8000b1e:	2201      	movs	r2, #1
 8000b20:	2108      	movs	r1, #8
 8000b22:	0018      	movs	r0, r3
 8000b24:	f7ff fee8 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000b28:	46c0      	nop			; (mov r8, r8)
 8000b2a:	46bd      	mov	sp, r7
 8000b2c:	bd80      	pop	{r7, pc}
 8000b2e:	46c0      	nop			; (mov r8, r8)
 8000b30:	48000400 	.word	0x48000400
 8000b34:	48000800 	.word	0x48000800

08000b38 <set_indicator>:
 8000b38:	b590      	push	{r4, r7, lr}
 8000b3a:	b085      	sub	sp, #20
 8000b3c:	af00      	add	r7, sp, #0
 8000b3e:	6078      	str	r0, [r7, #4]
 8000b40:	000a      	movs	r2, r1
 8000b42:	1cfb      	adds	r3, r7, #3
 8000b44:	701a      	strb	r2, [r3, #0]
 8000b46:	4b25      	ldr	r3, [pc, #148]	; (8000bdc <set_indicator+0xa4>)
 8000b48:	0018      	movs	r0, r3
 8000b4a:	f7ff ff40 	bl	80009ce <LL_GPIO_ReadOutputPort>
 8000b4e:	0003      	movs	r3, r0
 8000b50:	60fb      	str	r3, [r7, #12]
 8000b52:	4b23      	ldr	r3, [pc, #140]	; (8000be0 <set_indicator+0xa8>)
 8000b54:	681b      	ldr	r3, [r3, #0]
 8000b56:	43db      	mvns	r3, r3
 8000b58:	001a      	movs	r2, r3
 8000b5a:	68fb      	ldr	r3, [r7, #12]
 8000b5c:	4013      	ands	r3, r2
 8000b5e:	001c      	movs	r4, r3
 8000b60:	687b      	ldr	r3, [r7, #4]
 8000b62:	220f      	movs	r2, #15
 8000b64:	4013      	ands	r3, r2
 8000b66:	210a      	movs	r1, #10
 8000b68:	0018      	movs	r0, r3
 8000b6a:	f7ff fb89 	bl	8000280 <__aeabi_uidivmod>
 8000b6e:	000b      	movs	r3, r1
 8000b70:	001a      	movs	r2, r3
 8000b72:	4b1c      	ldr	r3, [pc, #112]	; (8000be4 <set_indicator+0xac>)
 8000b74:	0092      	lsls	r2, r2, #2
 8000b76:	58d3      	ldr	r3, [r2, r3]
 8000b78:	4323      	orrs	r3, r4
 8000b7a:	60fb      	str	r3, [r7, #12]
 8000b7c:	687b      	ldr	r3, [r7, #4]
 8000b7e:	2210      	movs	r2, #16
 8000b80:	4013      	ands	r3, r2
 8000b82:	d003      	beq.n	8000b8c <set_indicator+0x54>
 8000b84:	68fb      	ldr	r3, [r7, #12]
 8000b86:	2280      	movs	r2, #128	; 0x80
 8000b88:	4313      	orrs	r3, r2
 8000b8a:	60fb      	str	r3, [r7, #12]
 8000b8c:	68fb      	ldr	r3, [r7, #12]
 8000b8e:	4a13      	ldr	r2, [pc, #76]	; (8000bdc <set_indicator+0xa4>)
 8000b90:	0019      	movs	r1, r3
 8000b92:	0010      	movs	r0, r2
 8000b94:	f7ff ff0f 	bl	80009b6 <LL_GPIO_WriteOutputPort>
 8000b98:	4b13      	ldr	r3, [pc, #76]	; (8000be8 <set_indicator+0xb0>)
 8000b9a:	0018      	movs	r0, r3
 8000b9c:	f7ff ff17 	bl	80009ce <LL_GPIO_ReadOutputPort>
 8000ba0:	0003      	movs	r3, r0
 8000ba2:	60fb      	str	r3, [r7, #12]
 8000ba4:	4b11      	ldr	r3, [pc, #68]	; (8000bec <set_indicator+0xb4>)
 8000ba6:	681b      	ldr	r3, [r3, #0]
 8000ba8:	43db      	mvns	r3, r3
 8000baa:	001a      	movs	r2, r3
 8000bac:	68fb      	ldr	r3, [r7, #12]
 8000bae:	401a      	ands	r2, r3
 8000bb0:	1cfb      	adds	r3, r7, #3
 8000bb2:	2100      	movs	r1, #0
 8000bb4:	5659      	ldrsb	r1, [r3, r1]
 8000bb6:	4b0e      	ldr	r3, [pc, #56]	; (8000bf0 <set_indicator+0xb8>)
 8000bb8:	0089      	lsls	r1, r1, #2
 8000bba:	58cb      	ldr	r3, [r1, r3]
 8000bbc:	43d9      	mvns	r1, r3
 8000bbe:	4b0b      	ldr	r3, [pc, #44]	; (8000bec <set_indicator+0xb4>)
 8000bc0:	681b      	ldr	r3, [r3, #0]
 8000bc2:	400b      	ands	r3, r1
 8000bc4:	4313      	orrs	r3, r2
 8000bc6:	60fb      	str	r3, [r7, #12]
 8000bc8:	68fb      	ldr	r3, [r7, #12]
 8000bca:	4a07      	ldr	r2, [pc, #28]	; (8000be8 <set_indicator+0xb0>)
 8000bcc:	0019      	movs	r1, r3
 8000bce:	0010      	movs	r0, r2
 8000bd0:	f7ff fef1 	bl	80009b6 <LL_GPIO_WriteOutputPort>
 8000bd4:	46c0      	nop			; (mov r8, r8)
 8000bd6:	46bd      	mov	sp, r7
 8000bd8:	b005      	add	sp, #20
 8000bda:	bd90      	pop	{r4, r7, pc}
 8000bdc:	48000400 	.word	0x48000400
 8000be0:	20000430 	.word	0x20000430
 8000be4:	080012f0 	.word	0x080012f0
 8000be8:	48000800 	.word	0x48000800
 8000bec:	20000434 	.word	0x20000434
 8000bf0:	08001318 	.word	0x08001318

08000bf4 <LL_TIM_EnableCounter>:
 8000bf4:	b580      	push	{r7, lr}
 8000bf6:	b082      	sub	sp, #8
 8000bf8:	af00      	add	r7, sp, #0
 8000bfa:	6078      	str	r0, [r7, #4]
 8000bfc:	687b      	ldr	r3, [r7, #4]
 8000bfe:	681b      	ldr	r3, [r3, #0]
 8000c00:	2201      	movs	r2, #1
 8000c02:	431a      	orrs	r2, r3
 8000c04:	687b      	ldr	r3, [r7, #4]
 8000c06:	601a      	str	r2, [r3, #0]
 8000c08:	46c0      	nop			; (mov r8, r8)
 8000c0a:	46bd      	mov	sp, r7
 8000c0c:	b002      	add	sp, #8
 8000c0e:	bd80      	pop	{r7, pc}

08000c10 <LL_TIM_SetPrescaler>:
 8000c10:	b580      	push	{r7, lr}
 8000c12:	b082      	sub	sp, #8
 8000c14:	af00      	add	r7, sp, #0
 8000c16:	6078      	str	r0, [r7, #4]
 8000c18:	6039      	str	r1, [r7, #0]
 8000c1a:	687b      	ldr	r3, [r7, #4]
 8000c1c:	683a      	ldr	r2, [r7, #0]
 8000c1e:	629a      	str	r2, [r3, #40]	; 0x28
 8000c20:	46c0      	nop			; (mov r8, r8)
 8000c22:	46bd      	mov	sp, r7
 8000c24:	b002      	add	sp, #8
 8000c26:	bd80      	pop	{r7, pc}

08000c28 <LL_TIM_CC_EnableChannel>:
 8000c28:	b580      	push	{r7, lr}
 8000c2a:	b082      	sub	sp, #8
 8000c2c:	af00      	add	r7, sp, #0
 8000c2e:	6078      	str	r0, [r7, #4]
 8000c30:	6039      	str	r1, [r7, #0]
 8000c32:	687b      	ldr	r3, [r7, #4]
 8000c34:	6a1a      	ldr	r2, [r3, #32]
 8000c36:	683b      	ldr	r3, [r7, #0]
 8000c38:	431a      	orrs	r2, r3
 8000c3a:	687b      	ldr	r3, [r7, #4]
 8000c3c:	621a      	str	r2, [r3, #32]
 8000c3e:	46c0      	nop			; (mov r8, r8)
 8000c40:	46bd      	mov	sp, r7
 8000c42:	b002      	add	sp, #8
 8000c44:	bd80      	pop	{r7, pc}
	...

08000c48 <LL_TIM_IC_SetActiveInput>:
 8000c48:	b5b0      	push	{r4, r5, r7, lr}
 8000c4a:	b084      	sub	sp, #16
 8000c4c:	af00      	add	r7, sp, #0
 8000c4e:	60f8      	str	r0, [r7, #12]
 8000c50:	60b9      	str	r1, [r7, #8]
 8000c52:	607a      	str	r2, [r7, #4]
 8000c54:	68bb      	ldr	r3, [r7, #8]
 8000c56:	2b01      	cmp	r3, #1
 8000c58:	d01e      	beq.n	8000c98 <LL_TIM_IC_SetActiveInput+0x50>
 8000c5a:	68bb      	ldr	r3, [r7, #8]
 8000c5c:	2b04      	cmp	r3, #4
 8000c5e:	d019      	beq.n	8000c94 <LL_TIM_IC_SetActiveInput+0x4c>
 8000c60:	68bb      	ldr	r3, [r7, #8]
 8000c62:	2b10      	cmp	r3, #16
 8000c64:	d014      	beq.n	8000c90 <LL_TIM_IC_SetActiveInput+0x48>
 8000c66:	68bb      	ldr	r3, [r7, #8]
 8000c68:	2b40      	cmp	r3, #64	; 0x40
 8000c6a:	d00f      	beq.n	8000c8c <LL_TIM_IC_SetActiveInput+0x44>
 8000c6c:	68ba      	ldr	r2, [r7, #8]
 8000c6e:	2380      	movs	r3, #128	; 0x80
 8000c70:	005b      	lsls	r3, r3, #1
 8000c72:	429a      	cmp	r2, r3
 8000c74:	d008      	beq.n	8000c88 <LL_TIM_IC_SetActiveInput+0x40>
 8000c76:	68ba      	ldr	r2, [r7, #8]
 8000c78:	2380      	movs	r3, #128	; 0x80
 8000c7a:	00db      	lsls	r3, r3, #3
 8000c7c:	429a      	cmp	r2, r3
 8000c7e:	d101      	bne.n	8000c84 <LL_TIM_IC_SetActiveInput+0x3c>
 8000c80:	2305      	movs	r3, #5
 8000c82:	e00a      	b.n	8000c9a <LL_TIM_IC_SetActiveInput+0x52>
 8000c84:	2306      	movs	r3, #6
 8000c86:	e008      	b.n	8000c9a <LL_TIM_IC_SetActiveInput+0x52>
 8000c88:	2304      	movs	r3, #4
 8000c8a:	e006      	b.n	8000c9a <LL_TIM_IC_SetActiveInput+0x52>
 8000c8c:	2303      	movs	r3, #3
 8000c8e:	e004      	b.n	8000c9a <LL_TIM_IC_SetActiveInput+0x52>
 8000c90:	2302      	movs	r3, #2
 8000c92:	e002      	b.n	8000c9a <LL_TIM_IC_SetActiveInput+0x52>
 8000c94:	2301      	movs	r3, #1
 8000c96:	e000      	b.n	8000c9a <LL_TIM_IC_SetActiveInput+0x52>
 8000c98:	2300      	movs	r3, #0
 8000c9a:	001d      	movs	r5, r3
 8000c9c:	68fb      	ldr	r3, [r7, #12]
 8000c9e:	3318      	adds	r3, #24
 8000ca0:	001a      	movs	r2, r3
 8000ca2:	0029      	movs	r1, r5
 8000ca4:	4b0c      	ldr	r3, [pc, #48]	; (8000cd8 <LL_TIM_IC_SetActiveInput+0x90>)
 8000ca6:	5c5b      	ldrb	r3, [r3, r1]
 8000ca8:	18d3      	adds	r3, r2, r3
 8000caa:	001c      	movs	r4, r3
 8000cac:	6823      	ldr	r3, [r4, #0]
 8000cae:	0029      	movs	r1, r5
 8000cb0:	4a0a      	ldr	r2, [pc, #40]	; (8000cdc <LL_TIM_IC_SetActiveInput+0x94>)
 8000cb2:	5c52      	ldrb	r2, [r2, r1]
 8000cb4:	0011      	movs	r1, r2
 8000cb6:	2203      	movs	r2, #3
 8000cb8:	408a      	lsls	r2, r1
 8000cba:	43d2      	mvns	r2, r2
 8000cbc:	401a      	ands	r2, r3
 8000cbe:	687b      	ldr	r3, [r7, #4]
 8000cc0:	0c1b      	lsrs	r3, r3, #16
 8000cc2:	0028      	movs	r0, r5
 8000cc4:	4905      	ldr	r1, [pc, #20]	; (8000cdc <LL_TIM_IC_SetActiveInput+0x94>)
 8000cc6:	5c09      	ldrb	r1, [r1, r0]
 8000cc8:	408b      	lsls	r3, r1
 8000cca:	4313      	orrs	r3, r2
 8000ccc:	6023      	str	r3, [r4, #0]
 8000cce:	46c0      	nop			; (mov r8, r8)
 8000cd0:	46bd      	mov	sp, r7
 8000cd2:	b004      	add	sp, #16
 8000cd4:	bdb0      	pop	{r4, r5, r7, pc}
 8000cd6:	46c0      	nop			; (mov r8, r8)
 8000cd8:	080012c8 	.word	0x080012c8
 8000cdc:	080012d0 	.word	0x080012d0

08000ce0 <LL_TIM_IC_SetPrescaler>:
 8000ce0:	b5b0      	push	{r4, r5, r7, lr}
 8000ce2:	b084      	sub	sp, #16
 8000ce4:	af00      	add	r7, sp, #0
 8000ce6:	60f8      	str	r0, [r7, #12]
 8000ce8:	60b9      	str	r1, [r7, #8]
 8000cea:	607a      	str	r2, [r7, #4]
 8000cec:	68bb      	ldr	r3, [r7, #8]
 8000cee:	2b01      	cmp	r3, #1
 8000cf0:	d01e      	beq.n	8000d30 <LL_TIM_IC_SetPrescaler+0x50>
 8000cf2:	68bb      	ldr	r3, [r7, #8]
 8000cf4:	2b04      	cmp	r3, #4
 8000cf6:	d019      	beq.n	8000d2c <LL_TIM_IC_SetPrescaler+0x4c>
 8000cf8:	68bb      	ldr	r3, [r7, #8]
 8000cfa:	2b10      	cmp	r3, #16
 8000cfc:	d014      	beq.n	8000d28 <LL_TIM_IC_SetPrescaler+0x48>
 8000cfe:	68bb      	ldr	r3, [r7, #8]
 8000d00:	2b40      	cmp	r3, #64	; 0x40
 8000d02:	d00f      	beq.n	8000d24 <LL_TIM_IC_SetPrescaler+0x44>
 8000d04:	68ba      	ldr	r2, [r7, #8]
 8000d06:	2380      	movs	r3, #128	; 0x80
 8000d08:	005b      	lsls	r3, r3, #1
 8000d0a:	429a      	cmp	r2, r3
 8000d0c:	d008      	beq.n	8000d20 <LL_TIM_IC_SetPrescaler+0x40>
 8000d0e:	68ba      	ldr	r2, [r7, #8]
 8000d10:	2380      	movs	r3, #128	; 0x80
 8000d12:	00db      	lsls	r3, r3, #3
 8000d14:	429a      	cmp	r2, r3
 8000d16:	d101      	bne.n	8000d1c <LL_TIM_IC_SetPrescaler+0x3c>
 8000d18:	2305      	movs	r3, #5
 8000d1a:	e00a      	b.n	8000d32 <LL_TIM_IC_SetPrescaler+0x52>
 8000d1c:	2306      	movs	r3, #6
 8000d1e:	e008      	b.n	8000d32 <LL_TIM_IC_SetPrescaler+0x52>
 8000d20:	2304      	movs	r3, #4
 8000d22:	e006      	b.n	8000d32 <LL_TIM_IC_SetPrescaler+0x52>
 8000d24:	2303      	movs	r3, #3
 8000d26:	e004      	b.n	8000d32 <LL_TIM_IC_SetPrescaler+0x52>
 8000d28:	2302      	movs	r3, #2
 8000d2a:	e002      	b.n	8000d32 <LL_TIM_IC_SetPrescaler+0x52>
 8000d2c:	2301      	movs	r3, #1
 8000d2e:	e000      	b.n	8000d32 <LL_TIM_IC_SetPrescaler+0x52>
 8000d30:	2300      	movs	r3, #0
 8000d32:	001d      	movs	r5, r3
 8000d34:	68fb      	ldr	r3, [r7, #12]
 8000d36:	3318      	adds	r3, #24
 8000d38:	001a      	movs	r2, r3
 8000d3a:	0029      	movs	r1, r5
 8000d3c:	4b0c      	ldr	r3, [pc, #48]	; (8000d70 <LL_TIM_IC_SetPrescaler+0x90>)
 8000d3e:	5c5b      	ldrb	r3, [r3, r1]
 8000d40:	18d3      	adds	r3, r2, r3
 8000d42:	001c      	movs	r4, r3
 8000d44:	6823      	ldr	r3, [r4, #0]
 8000d46:	0029      	movs	r1, r5
 8000d48:	4a0a      	ldr	r2, [pc, #40]	; (8000d74 <LL_TIM_IC_SetPrescaler+0x94>)
 8000d4a:	5c52      	ldrb	r2, [r2, r1]
 8000d4c:	0011      	movs	r1, r2
 8000d4e:	220c      	movs	r2, #12
 8000d50:	408a      	lsls	r2, r1
 8000d52:	43d2      	mvns	r2, r2
 8000d54:	401a      	ands	r2, r3
 8000d56:	687b      	ldr	r3, [r7, #4]
 8000d58:	0c1b      	lsrs	r3, r3, #16
 8000d5a:	0028      	movs	r0, r5
 8000d5c:	4905      	ldr	r1, [pc, #20]	; (8000d74 <LL_TIM_IC_SetPrescaler+0x94>)
 8000d5e:	5c09      	ldrb	r1, [r1, r0]
 8000d60:	408b      	lsls	r3, r1
 8000d62:	4313      	orrs	r3, r2
 8000d64:	6023      	str	r3, [r4, #0]
 8000d66:	46c0      	nop			; (mov r8, r8)
 8000d68:	46bd      	mov	sp, r7
 8000d6a:	b004      	add	sp, #16
 8000d6c:	bdb0      	pop	{r4, r5, r7, pc}
 8000d6e:	46c0      	nop			; (mov r8, r8)
 8000d70:	080012c8 	.word	0x080012c8
 8000d74:	080012d0 	.word	0x080012d0

08000d78 <LL_TIM_IC_SetFilter>:
 8000d78:	b5b0      	push	{r4, r5, r7, lr}
 8000d7a:	b084      	sub	sp, #16
 8000d7c:	af00      	add	r7, sp, #0
 8000d7e:	60f8      	str	r0, [r7, #12]
 8000d80:	60b9      	str	r1, [r7, #8]
 8000d82:	607a      	str	r2, [r7, #4]
 8000d84:	68bb      	ldr	r3, [r7, #8]
 8000d86:	2b01      	cmp	r3, #1
 8000d88:	d01e      	beq.n	8000dc8 <LL_TIM_IC_SetFilter+0x50>
 8000d8a:	68bb      	ldr	r3, [r7, #8]
 8000d8c:	2b04      	cmp	r3, #4
 8000d8e:	d019      	beq.n	8000dc4 <LL_TIM_IC_SetFilter+0x4c>
 8000d90:	68bb      	ldr	r3, [r7, #8]
 8000d92:	2b10      	cmp	r3, #16
 8000d94:	d014      	beq.n	8000dc0 <LL_TIM_IC_SetFilter+0x48>
 8000d96:	68bb      	ldr	r3, [r7, #8]
 8000d98:	2b40      	cmp	r3, #64	; 0x40
 8000d9a:	d00f      	beq.n	8000dbc <LL_TIM_IC_SetFilter+0x44>
 8000d9c:	68ba      	ldr	r2, [r7, #8]
 8000d9e:	2380      	movs	r3, #128	; 0x80
 8000da0:	005b      	lsls	r3, r3, #1
 8000da2:	429a      	cmp	r2, r3
 8000da4:	d008      	beq.n	8000db8 <LL_TIM_IC_SetFilter+0x40>
 8000da6:	68ba      	ldr	r2, [r7, #8]
 8000da8:	2380      	movs	r3, #128	; 0x80
 8000daa:	00db      	lsls	r3, r3, #3
 8000dac:	429a      	cmp	r2, r3
 8000dae:	d101      	bne.n	8000db4 <LL_TIM_IC_SetFilter+0x3c>
 8000db0:	2305      	movs	r3, #5
 8000db2:	e00a      	b.n	8000dca <LL_TIM_IC_SetFilter+0x52>
 8000db4:	2306      	movs	r3, #6
 8000db6:	e008      	b.n	8000dca <LL_TIM_IC_SetFilter+0x52>
 8000db8:	2304      	movs	r3, #4
 8000dba:	e006      	b.n	8000dca <LL_TIM_IC_SetFilter+0x52>
 8000dbc:	2303      	movs	r3, #3
 8000dbe:	e004      	b.n	8000dca <LL_TIM_IC_SetFilter+0x52>
 8000dc0:	2302      	movs	r3, #2
 8000dc2:	e002      	b.n	8000dca <LL_TIM_IC_SetFilter+0x52>
 8000dc4:	2301      	movs	r3, #1
 8000dc6:	e000      	b.n	8000dca <LL_TIM_IC_SetFilter+0x52>
 8000dc8:	2300      	movs	r3, #0
 8000dca:	001d      	movs	r5, r3
 8000dcc:	68fb      	ldr	r3, [r7, #12]
 8000dce:	3318      	adds	r3, #24
 8000dd0:	001a      	movs	r2, r3
 8000dd2:	0029      	movs	r1, r5
 8000dd4:	4b0c      	ldr	r3, [pc, #48]	; (8000e08 <LL_TIM_IC_SetFilter+0x90>)
 8000dd6:	5c5b      	ldrb	r3, [r3, r1]
 8000dd8:	18d3      	adds	r3, r2, r3
 8000dda:	001c      	movs	r4, r3
 8000ddc:	6823      	ldr	r3, [r4, #0]
 8000dde:	0029      	movs	r1, r5
 8000de0:	4a0a      	ldr	r2, [pc, #40]	; (8000e0c <LL_TIM_IC_SetFilter+0x94>)
 8000de2:	5c52      	ldrb	r2, [r2, r1]
 8000de4:	0011      	movs	r1, r2
 8000de6:	22f0      	movs	r2, #240	; 0xf0
 8000de8:	408a      	lsls	r2, r1
 8000dea:	43d2      	mvns	r2, r2
 8000dec:	401a      	ands	r2, r3
 8000dee:	687b      	ldr	r3, [r7, #4]
 8000df0:	0c1b      	lsrs	r3, r3, #16
 8000df2:	0028      	movs	r0, r5
 8000df4:	4905      	ldr	r1, [pc, #20]	; (8000e0c <LL_TIM_IC_SetFilter+0x94>)
 8000df6:	5c09      	ldrb	r1, [r1, r0]
 8000df8:	408b      	lsls	r3, r1
 8000dfa:	4313      	orrs	r3, r2
 8000dfc:	6023      	str	r3, [r4, #0]
 8000dfe:	46c0      	nop			; (mov r8, r8)
 8000e00:	46bd      	mov	sp, r7
 8000e02:	b004      	add	sp, #16
 8000e04:	bdb0      	pop	{r4, r5, r7, pc}
 8000e06:	46c0      	nop			; (mov r8, r8)
 8000e08:	080012c8 	.word	0x080012c8
 8000e0c:	080012d0 	.word	0x080012d0

08000e10 <LL_TIM_IC_SetPolarity>:
 8000e10:	b590      	push	{r4, r7, lr}
 8000e12:	b085      	sub	sp, #20
 8000e14:	af00      	add	r7, sp, #0
 8000e16:	60f8      	str	r0, [r7, #12]
 8000e18:	60b9      	str	r1, [r7, #8]
 8000e1a:	607a      	str	r2, [r7, #4]
 8000e1c:	68bb      	ldr	r3, [r7, #8]
 8000e1e:	2b01      	cmp	r3, #1
 8000e20:	d01e      	beq.n	8000e60 <LL_TIM_IC_SetPolarity+0x50>
 8000e22:	68bb      	ldr	r3, [r7, #8]
 8000e24:	2b04      	cmp	r3, #4
 8000e26:	d019      	beq.n	8000e5c <LL_TIM_IC_SetPolarity+0x4c>
 8000e28:	68bb      	ldr	r3, [r7, #8]
 8000e2a:	2b10      	cmp	r3, #16
 8000e2c:	d014      	beq.n	8000e58 <LL_TIM_IC_SetPolarity+0x48>
 8000e2e:	68bb      	ldr	r3, [r7, #8]
 8000e30:	2b40      	cmp	r3, #64	; 0x40
 8000e32:	d00f      	beq.n	8000e54 <LL_TIM_IC_SetPolarity+0x44>
 8000e34:	68ba      	ldr	r2, [r7, #8]
 8000e36:	2380      	movs	r3, #128	; 0x80
 8000e38:	005b      	lsls	r3, r3, #1
 8000e3a:	429a      	cmp	r2, r3
 8000e3c:	d008      	beq.n	8000e50 <LL_TIM_IC_SetPolarity+0x40>
 8000e3e:	68ba      	ldr	r2, [r7, #8]
 8000e40:	2380      	movs	r3, #128	; 0x80
 8000e42:	00db      	lsls	r3, r3, #3
 8000e44:	429a      	cmp	r2, r3
 8000e46:	d101      	bne.n	8000e4c <LL_TIM_IC_SetPolarity+0x3c>
 8000e48:	2305      	movs	r3, #5
 8000e4a:	e00a      	b.n	8000e62 <LL_TIM_IC_SetPolarity+0x52>
 8000e4c:	2306      	movs	r3, #6
 8000e4e:	e008      	b.n	8000e62 <LL_TIM_IC_SetPolarity+0x52>
 8000e50:	2304      	movs	r3, #4
 8000e52:	e006      	b.n	8000e62 <LL_TIM_IC_SetPolarity+0x52>
 8000e54:	2303      	movs	r3, #3
 8000e56:	e004      	b.n	8000e62 <LL_TIM_IC_SetPolarity+0x52>
 8000e58:	2302      	movs	r3, #2
 8000e5a:	e002      	b.n	8000e62 <LL_TIM_IC_SetPolarity+0x52>
 8000e5c:	2301      	movs	r3, #1
 8000e5e:	e000      	b.n	8000e62 <LL_TIM_IC_SetPolarity+0x52>
 8000e60:	2300      	movs	r3, #0
 8000e62:	001c      	movs	r4, r3
 8000e64:	68fb      	ldr	r3, [r7, #12]
 8000e66:	6a1b      	ldr	r3, [r3, #32]
 8000e68:	0021      	movs	r1, r4
 8000e6a:	4a0a      	ldr	r2, [pc, #40]	; (8000e94 <LL_TIM_IC_SetPolarity+0x84>)
 8000e6c:	5c52      	ldrb	r2, [r2, r1]
 8000e6e:	0011      	movs	r1, r2
 8000e70:	220a      	movs	r2, #10
 8000e72:	408a      	lsls	r2, r1
 8000e74:	43d2      	mvns	r2, r2
 8000e76:	401a      	ands	r2, r3
 8000e78:	0021      	movs	r1, r4
 8000e7a:	4b06      	ldr	r3, [pc, #24]	; (8000e94 <LL_TIM_IC_SetPolarity+0x84>)
 8000e7c:	5c5b      	ldrb	r3, [r3, r1]
 8000e7e:	0019      	movs	r1, r3
 8000e80:	687b      	ldr	r3, [r7, #4]
 8000e82:	408b      	lsls	r3, r1
 8000e84:	431a      	orrs	r2, r3
 8000e86:	68fb      	ldr	r3, [r7, #12]
 8000e88:	621a      	str	r2, [r3, #32]
 8000e8a:	46c0      	nop			; (mov r8, r8)
 8000e8c:	46bd      	mov	sp, r7
 8000e8e:	b005      	add	sp, #20
 8000e90:	bd90      	pop	{r4, r7, pc}
 8000e92:	46c0      	nop			; (mov r8, r8)
 8000e94:	080012d8 	.word	0x080012d8

08000e98 <LL_TIM_IC_GetCaptureCH1>:
 8000e98:	b580      	push	{r7, lr}
 8000e9a:	b082      	sub	sp, #8
 8000e9c:	af00      	add	r7, sp, #0
 8000e9e:	6078      	str	r0, [r7, #4]
 8000ea0:	687b      	ldr	r3, [r7, #4]
 8000ea2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8000ea4:	0018      	movs	r0, r3
 8000ea6:	46bd      	mov	sp, r7
 8000ea8:	b002      	add	sp, #8
 8000eaa:	bd80      	pop	{r7, pc}

08000eac <LL_TIM_ClearFlag_CC1>:
 8000eac:	b580      	push	{r7, lr}
 8000eae:	b082      	sub	sp, #8
 8000eb0:	af00      	add	r7, sp, #0
 8000eb2:	6078      	str	r0, [r7, #4]
 8000eb4:	687b      	ldr	r3, [r7, #4]
 8000eb6:	2203      	movs	r2, #3
 8000eb8:	4252      	negs	r2, r2
 8000eba:	611a      	str	r2, [r3, #16]
 8000ebc:	46c0      	nop			; (mov r8, r8)
 8000ebe:	46bd      	mov	sp, r7
 8000ec0:	b002      	add	sp, #8
 8000ec2:	bd80      	pop	{r7, pc}

08000ec4 <LL_TIM_EnableIT_CC1>:
 8000ec4:	b580      	push	{r7, lr}
 8000ec6:	b082      	sub	sp, #8
 8000ec8:	af00      	add	r7, sp, #0
 8000eca:	6078      	str	r0, [r7, #4]
 8000ecc:	687b      	ldr	r3, [r7, #4]
 8000ece:	68db      	ldr	r3, [r3, #12]
 8000ed0:	2202      	movs	r2, #2
 8000ed2:	431a      	orrs	r2, r3
 8000ed4:	687b      	ldr	r3, [r7, #4]
 8000ed6:	60da      	str	r2, [r3, #12]
 8000ed8:	46c0      	nop			; (mov r8, r8)
 8000eda:	46bd      	mov	sp, r7
 8000edc:	b002      	add	sp, #8
 8000ede:	bd80      	pop	{r7, pc}

08000ee0 <LL_TIM_GenerateEvent_UPDATE>:
 8000ee0:	b580      	push	{r7, lr}
 8000ee2:	b082      	sub	sp, #8
 8000ee4:	af00      	add	r7, sp, #0
 8000ee6:	6078      	str	r0, [r7, #4]
 8000ee8:	687b      	ldr	r3, [r7, #4]
 8000eea:	695b      	ldr	r3, [r3, #20]
 8000eec:	2201      	movs	r2, #1
 8000eee:	431a      	orrs	r2, r3
 8000ef0:	687b      	ldr	r3, [r7, #4]
 8000ef2:	615a      	str	r2, [r3, #20]
 8000ef4:	46c0      	nop			; (mov r8, r8)
 8000ef6:	46bd      	mov	sp, r7
 8000ef8:	b002      	add	sp, #8
 8000efa:	bd80      	pop	{r7, pc}

08000efc <gpio_config>:
 8000efc:	b580      	push	{r7, lr}
 8000efe:	af00      	add	r7, sp, #0
 8000f00:	f7ff fdb2 	bl	8000a68 <gpio_ind7_config>
 8000f04:	2380      	movs	r3, #128	; 0x80
 8000f06:	031b      	lsls	r3, r3, #12
 8000f08:	0018      	movs	r0, r3
 8000f0a:	f7ff fcc9 	bl	80008a0 <LL_AHB1_GRP1_EnableClock>
 8000f0e:	2380      	movs	r3, #128	; 0x80
 8000f10:	005b      	lsls	r3, r3, #1
 8000f12:	4807      	ldr	r0, [pc, #28]	; (8000f30 <gpio_config+0x34>)
 8000f14:	2201      	movs	r2, #1
 8000f16:	0019      	movs	r1, r3
 8000f18:	f7ff fcee 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000f1c:	2380      	movs	r3, #128	; 0x80
 8000f1e:	009b      	lsls	r3, r3, #2
 8000f20:	4803      	ldr	r0, [pc, #12]	; (8000f30 <gpio_config+0x34>)
 8000f22:	2201      	movs	r2, #1
 8000f24:	0019      	movs	r1, r3
 8000f26:	f7ff fce7 	bl	80008f8 <LL_GPIO_SetPinMode>
 8000f2a:	46c0      	nop			; (mov r8, r8)
 8000f2c:	46bd      	mov	sp, r7
 8000f2e:	bd80      	pop	{r7, pc}
 8000f30:	48000800 	.word	0x48000800

08000f34 <rcc_config>:
 8000f34:	b580      	push	{r7, lr}
 8000f36:	af00      	add	r7, sp, #0
 8000f38:	2001      	movs	r0, #1
 8000f3a:	f7ff fc9d 	bl	8000878 <LL_FLASH_SetLatency>
 8000f3e:	f7ff fbed 	bl	800071c <LL_RCC_HSI_Enable>
 8000f42:	46c0      	nop			; (mov r8, r8)
 8000f44:	f7ff fbf8 	bl	8000738 <LL_RCC_HSI_IsReady>
 8000f48:	0003      	movs	r3, r0
 8000f4a:	2b01      	cmp	r3, #1
 8000f4c:	d1fa      	bne.n	8000f44 <rcc_config+0x10>
 8000f4e:	23a0      	movs	r3, #160	; 0xa0
 8000f50:	039b      	lsls	r3, r3, #14
 8000f52:	0019      	movs	r1, r3
 8000f54:	2000      	movs	r0, #0
 8000f56:	f7ff fc69 	bl	800082c <LL_RCC_PLL_ConfigDomain_SYS>
 8000f5a:	f7ff fc45 	bl	80007e8 <LL_RCC_PLL_Enable>
 8000f5e:	46c0      	nop			; (mov r8, r8)
 8000f60:	f7ff fc50 	bl	8000804 <LL_RCC_PLL_IsReady>
 8000f64:	0003      	movs	r3, r0
 8000f66:	2b01      	cmp	r3, #1
 8000f68:	d1fa      	bne.n	8000f60 <rcc_config+0x2c>
 8000f6a:	2000      	movs	r0, #0
 8000f6c:	f7ff fc14 	bl	8000798 <LL_RCC_SetAHBPrescaler>
 8000f70:	2002      	movs	r0, #2
 8000f72:	f7ff fbf1 	bl	8000758 <LL_RCC_SetSysClkSource>
 8000f76:	46c0      	nop			; (mov r8, r8)
 8000f78:	f7ff fc02 	bl	8000780 <LL_RCC_GetSysClkSource>
 8000f7c:	0003      	movs	r3, r0
 8000f7e:	2b08      	cmp	r3, #8
 8000f80:	d1fa      	bne.n	8000f78 <rcc_config+0x44>
 8000f82:	2000      	movs	r0, #0
 8000f84:	f7ff fc1c 	bl	80007c0 <LL_RCC_SetAPB1Prescaler>
 8000f88:	4b02      	ldr	r3, [pc, #8]	; (8000f94 <rcc_config+0x60>)
 8000f8a:	4a03      	ldr	r2, [pc, #12]	; (8000f98 <rcc_config+0x64>)
 8000f8c:	601a      	str	r2, [r3, #0]
 8000f8e:	46c0      	nop			; (mov r8, r8)
 8000f90:	46bd      	mov	sp, r7
 8000f92:	bd80      	pop	{r7, pc}
 8000f94:	20000438 	.word	0x20000438
 8000f98:	02dc6c00 	.word	0x02dc6c00

08000f9c <systick_config>:
 8000f9c:	b580      	push	{r7, lr}
 8000f9e:	af00      	add	r7, sp, #0
 8000fa0:	23fa      	movs	r3, #250	; 0xfa
 8000fa2:	009b      	lsls	r3, r3, #2
 8000fa4:	4a07      	ldr	r2, [pc, #28]	; (8000fc4 <systick_config+0x28>)
 8000fa6:	0019      	movs	r1, r3
 8000fa8:	0010      	movs	r0, r2
 8000faa:	f7ff fd43 	bl	8000a34 <LL_InitTick>
 8000fae:	f7ff fd33 	bl	8000a18 <LL_SYSTICK_EnableIT>
 8000fb2:	2301      	movs	r3, #1
 8000fb4:	425b      	negs	r3, r3
 8000fb6:	2100      	movs	r1, #0
 8000fb8:	0018      	movs	r0, r3
 8000fba:	f7ff fb41 	bl	8000640 <NVIC_SetPriority>
 8000fbe:	46c0      	nop			; (mov r8, r8)
 8000fc0:	46bd      	mov	sp, r7
 8000fc2:	bd80      	pop	{r7, pc}
 8000fc4:	02dc6c00 	.word	0x02dc6c00

08000fc8 <SysTick_Handler>:
 8000fc8:	b580      	push	{r7, lr}
 8000fca:	af00      	add	r7, sp, #0
 8000fcc:	4b19      	ldr	r3, [pc, #100]	; (8001034 <SysTick_Handler+0x6c>)
 8000fce:	781b      	ldrb	r3, [r3, #0]
 8000fd0:	b25b      	sxtb	r3, r3
 8000fd2:	b2db      	uxtb	r3, r3
 8000fd4:	3301      	adds	r3, #1
 8000fd6:	b2db      	uxtb	r3, r3
 8000fd8:	b25a      	sxtb	r2, r3
 8000fda:	4b16      	ldr	r3, [pc, #88]	; (8001034 <SysTick_Handler+0x6c>)
 8000fdc:	701a      	strb	r2, [r3, #0]
 8000fde:	4b15      	ldr	r3, [pc, #84]	; (8001034 <SysTick_Handler+0x6c>)
 8000fe0:	781b      	ldrb	r3, [r3, #0]
 8000fe2:	b25b      	sxtb	r3, r3
 8000fe4:	2b04      	cmp	r3, #4
 8000fe6:	d102      	bne.n	8000fee <SysTick_Handler+0x26>
 8000fe8:	4b12      	ldr	r3, [pc, #72]	; (8001034 <SysTick_Handler+0x6c>)
 8000fea:	2200      	movs	r2, #0
 8000fec:	701a      	strb	r2, [r3, #0]
 8000fee:	4b12      	ldr	r3, [pc, #72]	; (8001038 <SysTick_Handler+0x70>)
 8000ff0:	6818      	ldr	r0, [r3, #0]
 8000ff2:	4b10      	ldr	r3, [pc, #64]	; (8001034 <SysTick_Handler+0x6c>)
 8000ff4:	781b      	ldrb	r3, [r3, #0]
 8000ff6:	b25b      	sxtb	r3, r3
 8000ff8:	001a      	movs	r2, r3
 8000ffa:	4b10      	ldr	r3, [pc, #64]	; (800103c <SysTick_Handler+0x74>)
 8000ffc:	0092      	lsls	r2, r2, #2
 8000ffe:	58d3      	ldr	r3, [r2, r3]
 8001000:	0019      	movs	r1, r3
 8001002:	f7ff f941 	bl	8000288 <__aeabi_idiv>
 8001006:	0003      	movs	r3, r0
 8001008:	001a      	movs	r2, r3
 800100a:	230f      	movs	r3, #15
 800100c:	401a      	ands	r2, r3
 800100e:	4b09      	ldr	r3, [pc, #36]	; (8001034 <SysTick_Handler+0x6c>)
 8001010:	781b      	ldrb	r3, [r3, #0]
 8001012:	b25b      	sxtb	r3, r3
 8001014:	2b03      	cmp	r3, #3
 8001016:	d101      	bne.n	800101c <SysTick_Handler+0x54>
 8001018:	2310      	movs	r3, #16
 800101a:	e000      	b.n	800101e <SysTick_Handler+0x56>
 800101c:	2300      	movs	r3, #0
 800101e:	431a      	orrs	r2, r3
 8001020:	4b04      	ldr	r3, [pc, #16]	; (8001034 <SysTick_Handler+0x6c>)
 8001022:	781b      	ldrb	r3, [r3, #0]
 8001024:	b25b      	sxtb	r3, r3
 8001026:	0019      	movs	r1, r3
 8001028:	0010      	movs	r0, r2
 800102a:	f7ff fd85 	bl	8000b38 <set_indicator>
 800102e:	46c0      	nop			; (mov r8, r8)
 8001030:	46bd      	mov	sp, r7
 8001032:	bd80      	pop	{r7, pc}
 8001034:	2000045c 	.word	0x2000045c
 8001038:	20000458 	.word	0x20000458
 800103c:	080012e0 	.word	0x080012e0

08001040 <timers_config>:
 8001040:	b580      	push	{r7, lr}
 8001042:	af00      	add	r7, sp, #0
 8001044:	2380      	movs	r3, #128	; 0x80
 8001046:	029b      	lsls	r3, r3, #10
 8001048:	0018      	movs	r0, r3
 800104a:	f7ff fc29 	bl	80008a0 <LL_AHB1_GRP1_EnableClock>
 800104e:	2390      	movs	r3, #144	; 0x90
 8001050:	05db      	lsls	r3, r3, #23
 8001052:	2202      	movs	r2, #2
 8001054:	2120      	movs	r1, #32
 8001056:	0018      	movs	r0, r3
 8001058:	f7ff fc4e 	bl	80008f8 <LL_GPIO_SetPinMode>
 800105c:	2390      	movs	r3, #144	; 0x90
 800105e:	05db      	lsls	r3, r3, #23
 8001060:	2202      	movs	r2, #2
 8001062:	2120      	movs	r1, #32
 8001064:	0018      	movs	r0, r3
 8001066:	f7ff fc81 	bl	800096c <LL_GPIO_SetAFPin_0_7>
 800106a:	2390      	movs	r3, #144	; 0x90
 800106c:	05db      	lsls	r3, r3, #23
 800106e:	2201      	movs	r2, #1
 8001070:	2120      	movs	r1, #32
 8001072:	0018      	movs	r0, r3
 8001074:	f7ff fc5d 	bl	8000932 <LL_GPIO_SetPinPull>
 8001078:	2001      	movs	r0, #1
 800107a:	f7ff fc27 	bl	80008cc <LL_APB1_GRP1_EnableClock>
 800107e:	4a22      	ldr	r2, [pc, #136]	; (8001108 <timers_config+0xc8>)
 8001080:	2380      	movs	r3, #128	; 0x80
 8001082:	05db      	lsls	r3, r3, #23
 8001084:	0011      	movs	r1, r2
 8001086:	0018      	movs	r0, r3
 8001088:	f7ff fdc2 	bl	8000c10 <LL_TIM_SetPrescaler>
 800108c:	23a0      	movs	r3, #160	; 0xa0
 800108e:	041a      	lsls	r2, r3, #16
 8001090:	2380      	movs	r3, #128	; 0x80
 8001092:	05db      	lsls	r3, r3, #23
 8001094:	2101      	movs	r1, #1
 8001096:	0018      	movs	r0, r3
 8001098:	f7ff fe6e 	bl	8000d78 <LL_TIM_IC_SetFilter>
 800109c:	2380      	movs	r3, #128	; 0x80
 800109e:	05db      	lsls	r3, r3, #23
 80010a0:	2202      	movs	r2, #2
 80010a2:	2101      	movs	r1, #1
 80010a4:	0018      	movs	r0, r3
 80010a6:	f7ff feb3 	bl	8000e10 <LL_TIM_IC_SetPolarity>
 80010aa:	2380      	movs	r3, #128	; 0x80
 80010ac:	025a      	lsls	r2, r3, #9
 80010ae:	2380      	movs	r3, #128	; 0x80
 80010b0:	05db      	lsls	r3, r3, #23
 80010b2:	2101      	movs	r1, #1
 80010b4:	0018      	movs	r0, r3
 80010b6:	f7ff fdc7 	bl	8000c48 <LL_TIM_IC_SetActiveInput>
 80010ba:	2380      	movs	r3, #128	; 0x80
 80010bc:	05db      	lsls	r3, r3, #23
 80010be:	2200      	movs	r2, #0
 80010c0:	2101      	movs	r1, #1
 80010c2:	0018      	movs	r0, r3
 80010c4:	f7ff fe0c 	bl	8000ce0 <LL_TIM_IC_SetPrescaler>
 80010c8:	2380      	movs	r3, #128	; 0x80
 80010ca:	05db      	lsls	r3, r3, #23
 80010cc:	2101      	movs	r1, #1
 80010ce:	0018      	movs	r0, r3
 80010d0:	f7ff fdaa 	bl	8000c28 <LL_TIM_CC_EnableChannel>
 80010d4:	2380      	movs	r3, #128	; 0x80
 80010d6:	05db      	lsls	r3, r3, #23
 80010d8:	0018      	movs	r0, r3
 80010da:	f7ff fef3 	bl	8000ec4 <LL_TIM_EnableIT_CC1>
 80010de:	2380      	movs	r3, #128	; 0x80
 80010e0:	05db      	lsls	r3, r3, #23
 80010e2:	0018      	movs	r0, r3
 80010e4:	f7ff fd86 	bl	8000bf4 <LL_TIM_EnableCounter>
 80010e8:	2380      	movs	r3, #128	; 0x80
 80010ea:	05db      	lsls	r3, r3, #23
 80010ec:	0018      	movs	r0, r3
 80010ee:	f7ff fef7 	bl	8000ee0 <LL_TIM_GenerateEvent_UPDATE>
 80010f2:	200f      	movs	r0, #15
 80010f4:	f7ff fa8e 	bl	8000614 <NVIC_EnableIRQ>
 80010f8:	2101      	movs	r1, #1
 80010fa:	200f      	movs	r0, #15
 80010fc:	f7ff faa0 	bl	8000640 <NVIC_SetPriority>
 8001100:	46c0      	nop			; (mov r8, r8)
 8001102:	46bd      	mov	sp, r7
 8001104:	bd80      	pop	{r7, pc}
 8001106:	46c0      	nop			; (mov r8, r8)
 8001108:	0000bb7f 	.word	0x0000bb7f

0800110c <TIM2_IRQHandler>:
 800110c:	b580      	push	{r7, lr}
 800110e:	af00      	add	r7, sp, #0
 8001110:	4b24      	ldr	r3, [pc, #144]	; (80011a4 <TIM2_IRQHandler+0x98>)
 8001112:	681b      	ldr	r3, [r3, #0]
 8001114:	2b00      	cmp	r3, #0
 8001116:	d108      	bne.n	800112a <TIM2_IRQHandler+0x1e>
 8001118:	2380      	movs	r3, #128	; 0x80
 800111a:	05db      	lsls	r3, r3, #23
 800111c:	0018      	movs	r0, r3
 800111e:	f7ff febb 	bl	8000e98 <LL_TIM_IC_GetCaptureCH1>
 8001122:	0002      	movs	r2, r0
 8001124:	4b20      	ldr	r3, [pc, #128]	; (80011a8 <TIM2_IRQHandler+0x9c>)
 8001126:	601a      	str	r2, [r3, #0]
 8001128:	e01e      	b.n	8001168 <TIM2_IRQHandler+0x5c>
 800112a:	2380      	movs	r3, #128	; 0x80
 800112c:	05db      	lsls	r3, r3, #23
 800112e:	0018      	movs	r0, r3
 8001130:	f7ff feb2 	bl	8000e98 <LL_TIM_IC_GetCaptureCH1>
 8001134:	0002      	movs	r2, r0
 8001136:	4b1d      	ldr	r3, [pc, #116]	; (80011ac <TIM2_IRQHandler+0xa0>)
 8001138:	601a      	str	r2, [r3, #0]
 800113a:	4b1c      	ldr	r3, [pc, #112]	; (80011ac <TIM2_IRQHandler+0xa0>)
 800113c:	681a      	ldr	r2, [r3, #0]
 800113e:	4b1a      	ldr	r3, [pc, #104]	; (80011a8 <TIM2_IRQHandler+0x9c>)
 8001140:	681b      	ldr	r3, [r3, #0]
 8001142:	1ad2      	subs	r2, r2, r3
 8001144:	4b1a      	ldr	r3, [pc, #104]	; (80011b0 <TIM2_IRQHandler+0xa4>)
 8001146:	601a      	str	r2, [r3, #0]
 8001148:	4b19      	ldr	r3, [pc, #100]	; (80011b0 <TIM2_IRQHandler+0xa4>)
 800114a:	681b      	ldr	r3, [r3, #0]
 800114c:	001a      	movs	r2, r3
 800114e:	4b19      	ldr	r3, [pc, #100]	; (80011b4 <TIM2_IRQHandler+0xa8>)
 8001150:	601a      	str	r2, [r3, #0]
 8001152:	4b15      	ldr	r3, [pc, #84]	; (80011a8 <TIM2_IRQHandler+0x9c>)
 8001154:	2200      	movs	r2, #0
 8001156:	601a      	str	r2, [r3, #0]
 8001158:	4b14      	ldr	r3, [pc, #80]	; (80011ac <TIM2_IRQHandler+0xa0>)
 800115a:	2200      	movs	r2, #0
 800115c:	601a      	str	r2, [r3, #0]
 800115e:	2380      	movs	r3, #128	; 0x80
 8001160:	05db      	lsls	r3, r3, #23
 8001162:	0018      	movs	r0, r3
 8001164:	f7ff febc 	bl	8000ee0 <LL_TIM_GenerateEvent_UPDATE>
 8001168:	4b0e      	ldr	r3, [pc, #56]	; (80011a4 <TIM2_IRQHandler+0x98>)
 800116a:	681b      	ldr	r3, [r3, #0]
 800116c:	3301      	adds	r3, #1
 800116e:	4a12      	ldr	r2, [pc, #72]	; (80011b8 <TIM2_IRQHandler+0xac>)
 8001170:	4013      	ands	r3, r2
 8001172:	d504      	bpl.n	800117e <TIM2_IRQHandler+0x72>
 8001174:	3b01      	subs	r3, #1
 8001176:	2202      	movs	r2, #2
 8001178:	4252      	negs	r2, r2
 800117a:	4313      	orrs	r3, r2
 800117c:	3301      	adds	r3, #1
 800117e:	001a      	movs	r2, r3
 8001180:	4b08      	ldr	r3, [pc, #32]	; (80011a4 <TIM2_IRQHandler+0x98>)
 8001182:	601a      	str	r2, [r3, #0]
 8001184:	2380      	movs	r3, #128	; 0x80
 8001186:	005b      	lsls	r3, r3, #1
 8001188:	4a0c      	ldr	r2, [pc, #48]	; (80011bc <TIM2_IRQHandler+0xb0>)
 800118a:	0019      	movs	r1, r3
 800118c:	0010      	movs	r0, r2
 800118e:	f7ff fc34 	bl	80009fa <LL_GPIO_TogglePin>
 8001192:	2380      	movs	r3, #128	; 0x80
 8001194:	05db      	lsls	r3, r3, #23
 8001196:	0018      	movs	r0, r3
 8001198:	f7ff fe88 	bl	8000eac <LL_TIM_ClearFlag_CC1>
 800119c:	46c0      	nop			; (mov r8, r8)
 800119e:	46bd      	mov	sp, r7
 80011a0:	bd80      	pop	{r7, pc}
 80011a2:	46c0      	nop			; (mov r8, r8)
 80011a4:	20000460 	.word	0x20000460
 80011a8:	20000464 	.word	0x20000464
 80011ac:	20000468 	.word	0x20000468
 80011b0:	2000046c 	.word	0x2000046c
 80011b4:	20000458 	.word	0x20000458
 80011b8:	80000001 	.word	0x80000001
 80011bc:	48000800 	.word	0x48000800

080011c0 <main>:
 80011c0:	b580      	push	{r7, lr}
 80011c2:	af00      	add	r7, sp, #0
 80011c4:	f7ff feb6 	bl	8000f34 <rcc_config>
 80011c8:	f7ff fe98 	bl	8000efc <gpio_config>
 80011cc:	f7ff ff38 	bl	8001040 <timers_config>
 80011d0:	f7ff fee4 	bl	8000f9c <systick_config>
 80011d4:	2380      	movs	r3, #128	; 0x80
 80011d6:	005b      	lsls	r3, r3, #1
 80011d8:	4a02      	ldr	r2, [pc, #8]	; (80011e4 <main+0x24>)
 80011da:	0019      	movs	r1, r3
 80011dc:	0010      	movs	r0, r2
 80011de:	f7ff fc00 	bl	80009e2 <LL_GPIO_SetOutputPin>
 80011e2:	e7fe      	b.n	80011e2 <main+0x22>
 80011e4:	48000800 	.word	0x48000800

080011e8 <SystemInit>:
 80011e8:	b580      	push	{r7, lr}
 80011ea:	af00      	add	r7, sp, #0
 80011ec:	4b1a      	ldr	r3, [pc, #104]	; (8001258 <SystemInit+0x70>)
 80011ee:	4a1a      	ldr	r2, [pc, #104]	; (8001258 <SystemInit+0x70>)
 80011f0:	6812      	ldr	r2, [r2, #0]
 80011f2:	2101      	movs	r1, #1
 80011f4:	430a      	orrs	r2, r1
 80011f6:	601a      	str	r2, [r3, #0]
 80011f8:	4b17      	ldr	r3, [pc, #92]	; (8001258 <SystemInit+0x70>)
 80011fa:	4a17      	ldr	r2, [pc, #92]	; (8001258 <SystemInit+0x70>)
 80011fc:	6852      	ldr	r2, [r2, #4]
 80011fe:	4917      	ldr	r1, [pc, #92]	; (800125c <SystemInit+0x74>)
 8001200:	400a      	ands	r2, r1
 8001202:	605a      	str	r2, [r3, #4]
 8001204:	4b14      	ldr	r3, [pc, #80]	; (8001258 <SystemInit+0x70>)
 8001206:	4a14      	ldr	r2, [pc, #80]	; (8001258 <SystemInit+0x70>)
 8001208:	6812      	ldr	r2, [r2, #0]
 800120a:	4915      	ldr	r1, [pc, #84]	; (8001260 <SystemInit+0x78>)
 800120c:	400a      	ands	r2, r1
 800120e:	601a      	str	r2, [r3, #0]
 8001210:	4b11      	ldr	r3, [pc, #68]	; (8001258 <SystemInit+0x70>)
 8001212:	4a11      	ldr	r2, [pc, #68]	; (8001258 <SystemInit+0x70>)
 8001214:	6812      	ldr	r2, [r2, #0]
 8001216:	4913      	ldr	r1, [pc, #76]	; (8001264 <SystemInit+0x7c>)
 8001218:	400a      	ands	r2, r1
 800121a:	601a      	str	r2, [r3, #0]
 800121c:	4b0e      	ldr	r3, [pc, #56]	; (8001258 <SystemInit+0x70>)
 800121e:	4a0e      	ldr	r2, [pc, #56]	; (8001258 <SystemInit+0x70>)
 8001220:	6852      	ldr	r2, [r2, #4]
 8001222:	4911      	ldr	r1, [pc, #68]	; (8001268 <SystemInit+0x80>)
 8001224:	400a      	ands	r2, r1
 8001226:	605a      	str	r2, [r3, #4]
 8001228:	4b0b      	ldr	r3, [pc, #44]	; (8001258 <SystemInit+0x70>)
 800122a:	4a0b      	ldr	r2, [pc, #44]	; (8001258 <SystemInit+0x70>)
 800122c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800122e:	210f      	movs	r1, #15
 8001230:	438a      	bics	r2, r1
 8001232:	62da      	str	r2, [r3, #44]	; 0x2c
 8001234:	4b08      	ldr	r3, [pc, #32]	; (8001258 <SystemInit+0x70>)
 8001236:	4a08      	ldr	r2, [pc, #32]	; (8001258 <SystemInit+0x70>)
 8001238:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800123a:	490c      	ldr	r1, [pc, #48]	; (800126c <SystemInit+0x84>)
 800123c:	400a      	ands	r2, r1
 800123e:	631a      	str	r2, [r3, #48]	; 0x30
 8001240:	4b05      	ldr	r3, [pc, #20]	; (8001258 <SystemInit+0x70>)
 8001242:	4a05      	ldr	r2, [pc, #20]	; (8001258 <SystemInit+0x70>)
 8001244:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8001246:	2101      	movs	r1, #1
 8001248:	438a      	bics	r2, r1
 800124a:	635a      	str	r2, [r3, #52]	; 0x34
 800124c:	4b02      	ldr	r3, [pc, #8]	; (8001258 <SystemInit+0x70>)
 800124e:	2200      	movs	r2, #0
 8001250:	609a      	str	r2, [r3, #8]
 8001252:	46c0      	nop			; (mov r8, r8)
 8001254:	46bd      	mov	sp, r7
 8001256:	bd80      	pop	{r7, pc}
 8001258:	40021000 	.word	0x40021000
 800125c:	f8ffb80c 	.word	0xf8ffb80c
 8001260:	fef6ffff 	.word	0xfef6ffff
 8001264:	fffbffff 	.word	0xfffbffff
 8001268:	ffc0ffff 	.word	0xffc0ffff
 800126c:	fffffeac 	.word	0xfffffeac

08001270 <NMI_Handler>:
 8001270:	b580      	push	{r7, lr}
 8001272:	af00      	add	r7, sp, #0
 8001274:	46c0      	nop			; (mov r8, r8)
 8001276:	46bd      	mov	sp, r7
 8001278:	bd80      	pop	{r7, pc}

0800127a <HardFault_Handler>:
 800127a:	b580      	push	{r7, lr}
 800127c:	af00      	add	r7, sp, #0
 800127e:	e7fe      	b.n	800127e <HardFault_Handler+0x4>

08001280 <SVC_Handler>:
 8001280:	b580      	push	{r7, lr}
 8001282:	af00      	add	r7, sp, #0
 8001284:	46c0      	nop			; (mov r8, r8)
 8001286:	46bd      	mov	sp, r7
 8001288:	bd80      	pop	{r7, pc}

0800128a <PendSV_Handler>:
 800128a:	b580      	push	{r7, lr}
 800128c:	af00      	add	r7, sp, #0
 800128e:	46c0      	nop			; (mov r8, r8)
 8001290:	46bd      	mov	sp, r7
 8001292:	bd80      	pop	{r7, pc}

08001294 <register_fini>:
 8001294:	4b03      	ldr	r3, [pc, #12]	; (80012a4 <register_fini+0x10>)
 8001296:	b510      	push	{r4, lr}
 8001298:	2b00      	cmp	r3, #0
 800129a:	d002      	beq.n	80012a2 <register_fini+0xe>
 800129c:	4802      	ldr	r0, [pc, #8]	; (80012a8 <register_fini+0x14>)
 800129e:	f7ff f8df 	bl	8000460 <atexit>
 80012a2:	bd10      	pop	{r4, pc}
 80012a4:	00000000 	.word	0x00000000
 80012a8:	08000471 	.word	0x08000471

080012ac <_init>:
 80012ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80012ae:	46c0      	nop			; (mov r8, r8)
 80012b0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80012b2:	bc08      	pop	{r3}
 80012b4:	469e      	mov	lr, r3
 80012b6:	4770      	bx	lr

080012b8 <_fini>:
 80012b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80012ba:	46c0      	nop			; (mov r8, r8)
 80012bc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80012be:	bc08      	pop	{r3}
 80012c0:	469e      	mov	lr, r3
 80012c2:	4770      	bx	lr
