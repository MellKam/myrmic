
v_xip_fastunal.o:	file format elf32-littleriscv

Disassembly of section .text:

00000000 <aot_func#0>:
       0:      	addi	sp, sp, -0x10
       2:      	sw	ra, 0xc(sp)
       4:      	mv	a5, a0
       6:      	lw	a0, 0x8(a0)
       8:      	lw	a3, 0x1d0(a0)
       c:      	lw	a4, 0x0(a3)
       e:      	lw	a3, 0x20(a5)
      10:      	addi	a7, sp, 0x8
      14:      	bltu	a7, a4, 0x36 <aot_func#0+0x36>
      18:      	mv	a6, a2
      1a:      	mv	a2, a1
      1c:      	lw	a1, 0x10(a5)
      1e:      	sub	a4, a7, a4
      22:      	bltu	a4, a1, 0x36 <aot_func#0+0x36>
      26:      	mv	a1, a3
      28:      	mv	a3, a6
      2a:      	lw	ra, 0xc(sp)
      2c:      	addi	sp, sp, 0x10
      2e:      	auipc	t1, 0x0
      32:      	jr	0x16(t1) <aot_func_internal#0>
      36:      	lw	a2, 0x0(a3)
      38:      	li	a1, 0xb
      3a:      	jalr	a2
      3c:      	li	a0, 0x0
      3e:      	lw	ra, 0xc(sp)
      40:      	addi	sp, sp, 0x10
      42:      	ret

00000044 <aot_func_internal#0>:
      44:      	lw	t4, 0x4(a1)
      48:      	bge	t4, a3, 0x98 <aot_func_internal#0+0x54>
      4c:      	addi	sp, sp, -0x10
      4e:      	sw	ra, 0xc(sp)
      50:      	sw	s0, 0x8(sp)
      52:      	sw	s1, 0x4(sp)
      54:      	sw	s2, 0x0(sp)
      56:      	lw	a6, 0x178(a0)
      5a:      	lw	a7, 0x1b8(a0)
      5e:      	lw	t0, 0xc(a1)
      62:      	lw	t1, 0x8(a1)
      66:      	bgeu	a3, t0, 0x9c <aot_func_internal#0+0x58>
      6a:      	li	t2, 0x0
      6c:      	li	a4, 0x0
      6e:      	and	a3, t1, a3
      72:      	beqz	a3, 0x116 <aot_func_internal#0+0xd2>
      74:      	lw	a5, 0x20(a1)
      76:      	sll	a5, t2, a5
      7a:      	add	a2, a2, t4
      7c:      	add	a2, a2, a5
      7e:      	bltu	a2, t4, 0x10e <aot_func_internal#0+0xca>
      82:      	bltu	a7, a2, 0x10e <aot_func_internal#0+0xca>
      86:      	add	a5, a6, a2
      8a:      	lw	a5, 0x0(a5)
      8c:      	lw	s1, 0x24(a1)
      8e:      	add	a4, a4, a5
      90:      	sub	a3, a3, s1
      92:      	add	a2, a2, t0
      94:      	bnez	a3, 0x7e <aot_func_internal#0+0x3a>
      96:      	j	0x116 <aot_func_internal#0+0xd2>
      98:      	mv	a0, t4
      9a:      	ret
      9c:      	lw	a4, 0x10(a1)
      9e:      	lw	t3, 0x14(a1)
      a2:      	and	t2, a4, a3
      a6:      	li	a4, 0x0
      a8:      	mv	t5, t2
      aa:      	mv	s0, a2
      ac:      	add	t6, s0, t3
      b0:      	add	t6, t6, t4
      b2:      	bltu	t6, t4, 0x10e <aot_func_internal#0+0xca>
      b6:      	bltu	a7, t6, 0x10e <aot_func_internal#0+0xca>
      ba:      	lw	a5, 0x18(a1)
      bc:      	add	a5, a5, s0
      be:      	add	s2, t4, a5
      c2:      	bltu	s2, t4, 0x10e <aot_func_internal#0+0xca>
      c6:      	bltu	a7, s2, 0x10e <aot_func_internal#0+0xca>
      ca:      	add	s1, s0, t0
      ce:      	add	s1, s1, t4
      d0:      	bltu	s1, t4, 0x10e <aot_func_internal#0+0xca>
      d4:      	bltu	a7, s1, 0x10e <aot_func_internal#0+0xca>
      d8:      	add	a5, t4, s0
      dc:      	bltu	a5, t4, 0x10e <aot_func_internal#0+0xca>
      e0:      	bltu	a7, a5, 0x10e <aot_func_internal#0+0xca>
      e4:      	add	t6, t6, a6
      e6:      	lw	t6, 0x0(t6)
      ea:      	add	s1, s1, a6
      ec:      	add	a5, a5, a6
      ee:      	lw	a5, 0x0(a5)
      f0:      	lw	s1, 0x0(s1)
      f2:      	add	s2, s2, a6
      f4:      	lw	s2, 0x0(s2)
      f8:      	add	a4, a4, a5
      fa:      	add	a4, a4, s1
      fc:      	lw	a5, 0x1c(a1)
      fe:      	add	a4, a4, t6
     100:      	add	a4, a4, s2
     102:      	sub	t5, t5, t0
     106:      	add	s0, s0, a5
     108:      	bnez	t5, 0xac <aot_func_internal#0+0x68>
     10c:      	j	0x6e <aot_func_internal#0+0x2a>
     10e:      	lw	a2, 0x0(a1)
     110:      	li	a1, 0x2
     112:      	jalr	a2
     114:      	li	a4, 0x0
     116:      	lw	ra, 0xc(sp)
     118:      	lw	s0, 0x8(sp)
     11a:      	lw	s1, 0x4(sp)
     11c:      	lw	s2, 0x0(sp)
     11e:      	addi	sp, sp, 0x10
     120:      	mv	a0, a4
     122:      	ret

00000124 <aot_func#1>:
     124:      	addi	sp, sp, -0x10
     126:      	sw	ra, 0xc(sp)
     128:      	mv	a5, a0
     12a:      	lw	a0, 0x8(a0)
     12c:      	lw	a4, 0x1d0(a0)
     130:      	lw	a4, 0x4(a4)
     132:      	lw	a7, 0x20(a5)
     136:      	addi	t0, sp, 0x8
     13a:      	bltu	t0, a4, 0x15e <aot_func#1+0x3a>
     13e:      	mv	a6, a3
     140:      	mv	a3, a2
     142:      	mv	a2, a1
     144:      	lw	a1, 0x10(a5)
     146:      	sub	a4, t0, a4
     14a:      	bltu	a4, a1, 0x15e <aot_func#1+0x3a>
     14e:      	mv	a1, a7
     150:      	mv	a4, a6
     152:      	lw	ra, 0xc(sp)
     154:      	addi	sp, sp, 0x10
     156:      	auipc	t1, 0x0
     15a:      	jr	0x16(t1) <aot_func_internal#1>
     15e:      	lw	a2, 0x0(a7)
     162:      	li	a1, 0xb
     164:      	jalr	a2
     166:      	lw	ra, 0xc(sp)
     168:      	addi	sp, sp, 0x10
     16a:      	ret

0000016c <aot_func_internal#1>:
     16c:      	lw	a5, 0x4(a1)
     16e:      	bge	a5, a3, 0x1c6 <aot_func_internal#1+0x5a>
     172:      	lw	a6, 0x178(a0)
     176:      	lw	t1, 0x1b8(a0)
     17a:      	lw	a5, 0xc(a1)
     17c:      	lw	a7, 0x8(a1)
     180:      	bgeu	a3, a5, 0x1c8 <aot_func_internal#1+0x5c>
     184:      	li	t0, 0x0
     186:      	and	a3, a7, a3
     18a:      	beqz	a3, 0x1c6 <aot_func_internal#1+0x5a>
     18c:      	lw	a5, 0x20(a1)
     18e:      	sll	a5, t0, a5
     192:      	add	a2, a2, a5
     194:      	lw	a7, 0x4(a1)
     198:      	add	a5, a7, a2
     19c:      	bltu	a5, a7, 0x280 <aot_func_internal#1+0x114>
     1a0:      	bltu	t1, a5, 0x280 <aot_func_internal#1+0x114>
     1a4:      	add	t2, a6, a5
     1a8:      	lw	a7, 0x0(t2)
     1ac:      	lw	t0, 0x24(a1)
     1b0:      	mul	a5, a7, a4
     1b4:      	add	a5, a5, t0
     1b6:      	sw	a5, 0x0(t2)
     1ba:      	lw	a5, 0x24(a1)
     1bc:      	lw	a7, 0xc(a1)
     1c0:      	sub	a3, a3, a5
     1c2:      	add	a2, a2, a7
     1c4:      	bnez	a3, 0x194 <aot_func_internal#1+0x28>
     1c6:      	ret
     1c8:      	lw	a5, 0x10(a1)
     1ca:      	li	t2, 0x0
     1cc:      	and	t0, a5, a3
     1d0:      	mv	t3, a2
     1d2:      	lw	t4, 0x4(a1)
     1d6:      	add	a5, t4, t3
     1da:      	bltu	a5, t4, 0x280 <aot_func_internal#1+0x114>
     1de:      	bltu	t1, a5, 0x280 <aot_func_internal#1+0x114>
     1e2:      	add	t6, a6, a5
     1e6:      	lw	t4, 0x0(t6)
     1ea:      	lw	t5, 0x24(a1)
     1ee:      	mul	a5, t4, a4
     1f2:      	add	a5, a5, t5
     1f4:      	sw	a5, 0x0(t6)
     1f8:      	lw	a5, 0xc(a1)
     1fa:      	lw	t4, 0x4(a1)
     1fe:      	add	a5, a5, t3
     200:      	add	a5, a5, t4
     202:      	bltu	a5, t4, 0x280 <aot_func_internal#1+0x114>
     206:      	bltu	t1, a5, 0x280 <aot_func_internal#1+0x114>
     20a:      	add	t6, a6, a5
     20e:      	lw	t4, 0x0(t6)
     212:      	lw	t5, 0x24(a1)
     216:      	mul	a5, t4, a4
     21a:      	add	a5, a5, t5
     21c:      	sw	a5, 0x0(t6)
     220:      	lw	a5, 0x18(a1)
     222:      	lw	t4, 0x4(a1)
     226:      	add	a5, a5, t3
     228:      	add	a5, a5, t4
     22a:      	bltu	a5, t4, 0x280 <aot_func_internal#1+0x114>
     22e:      	bltu	t1, a5, 0x280 <aot_func_internal#1+0x114>
     232:      	add	t6, a6, a5
     236:      	lw	t4, 0x0(t6)
     23a:      	lw	t5, 0x24(a1)
     23e:      	mul	a5, t4, a4
     242:      	add	a5, a5, t5
     244:      	sw	a5, 0x0(t6)
     248:      	lw	a5, 0x14(a1)
     24a:      	lw	t4, 0x4(a1)
     24e:      	add	a5, a5, t3
     250:      	add	a5, a5, t4
     252:      	bltu	a5, t4, 0x280 <aot_func_internal#1+0x114>
     256:      	bltu	t1, a5, 0x280 <aot_func_internal#1+0x114>
     25a:      	add	t6, a6, a5
     25e:      	lw	t4, 0x0(t6)
     262:      	lw	t5, 0x24(a1)
     266:      	mul	a5, t4, a4
     26a:      	add	a5, a5, t5
     26c:      	sw	a5, 0x0(t6)
     270:      	lw	a5, 0xc(a1)
     272:      	lw	t4, 0x1c(a1)
     276:      	add	t2, t2, a5
     278:      	add	t3, t3, t4
     27a:      	bne	t0, t2, 0x1d2 <aot_func_internal#1+0x66>
     27e:      	j	0x186 <aot_func_internal#1+0x1a>
     280:      	lw	a5, 0x0(a1)
     282:      	li	a1, 0x2
     284:      	jr	a5

00000286 <aot_func#2>:
     286:      	addi	sp, sp, -0x10
     288:      	sw	ra, 0xc(sp)
     28a:      	mv	a3, a0
     28c:      	lw	a0, 0x8(a0)
     28e:      	lw	a4, 0x1d0(a0)
     292:      	lw	a4, 0x8(a4)
     294:      	addi	a6, sp, 0x8
     298:      	bltu	a6, a4, 0x2b4 <aot_func#2+0x2e>
     29c:      	lw	a5, 0x10(a3)
     29e:      	sub	a4, a6, a4
     2a2:      	bltu	a4, a5, 0x2b4 <aot_func#2+0x2e>
     2a6:      	mv	a0, a3
     2a8:      	lw	ra, 0xc(sp)
     2aa:      	addi	sp, sp, 0x10
     2ac:      	auipc	t1, 0x0
     2b0:      	jr	0x18(t1) <aot_func_internal#2>
     2b4:      	lw	a1, 0x20(a3)
     2b6:      	lw	a2, 0x0(a1)
     2b8:      	li	a1, 0xb
     2ba:      	jalr	a2
     2bc:      	li	a0, 0x0
     2be:      	lw	ra, 0xc(sp)
     2c0:      	addi	sp, sp, 0x10
     2c2:      	ret

000002c4 <aot_func_internal#2>:
     2c4:      	addi	sp, sp, -0x20
     2c6:      	sw	ra, 0x1c(sp)
     2c8:      	sw	s0, 0x18(sp)
     2ca:      	sw	s1, 0x14(sp)
     2cc:      	sw	s2, 0x10(sp)
     2ce:      	sw	s3, 0xc(sp)
     2d0:      	sw	s4, 0x8(sp)
     2d2:      	sw	s5, 0x4(sp)
     2d4:      	sw	s6, 0x0(sp)
     2d6:      	mv	s4, a0
     2d8:      	lw	s5, 0x20(a0)
     2dc:      	lw	a0, 0x4(s5)
     2e0:      	bge	a0, a2, 0x324 <aot_func_internal#2+0x60>
     2e4:      	mv	s3, a2
     2e6:      	mv	s2, a1
     2e8:      	lw	s6, 0xc(s4)
     2ec:      	li	s1, 0x0
     2ee:      	li	s0, 0x0
     2f0:      	lw	a0, 0x24(s5)
     2f4:      	lw	a4, 0x28(s5)
     2f8:      	and	a0, a0, s0
     2fa:      	sw	s2, 0x0(s6)
     2fe:      	sw	a0, 0x4(s6)
     302:      	li	a2, 0x2
     304:      	mv	a0, s4
     306:      	li	a1, 0x0
     308:      	mv	a3, s6
     30a:      	jalr	a4
     30c:      	andi	a0, a0, 0xff
     310:      	beqz	a0, 0x324 <aot_func_internal#2+0x60>
     312:      	lw	a0, 0x24(s5)
     316:      	lw	a1, 0x0(s6)
     31a:      	add	s0, s0, a0
     31c:      	or	s1, s1, a1
     31e:      	bne	s0, s3, 0x2f0 <aot_func_internal#2+0x2c>
     322:      	j	0x326 <aot_func_internal#2+0x62>
     324:      	li	s1, 0x0
     326:      	mv	a0, s1
     328:      	lw	ra, 0x1c(sp)
     32a:      	lw	s0, 0x18(sp)
     32c:      	lw	s1, 0x14(sp)
     32e:      	lw	s2, 0x10(sp)
     330:      	lw	s3, 0xc(sp)
     332:      	lw	s4, 0x8(sp)
     334:      	lw	s5, 0x4(sp)
     336:      	lw	s6, 0x0(sp)
     338:      	addi	sp, sp, 0x20
     33a:      	ret

0000033c <aot_func#3>:
     33c:      	addi	sp, sp, -0x10
     33e:      	sw	ra, 0xc(sp)
     340:      	mv	t2, a0
     342:      	lw	a0, 0x8(a0)
     344:      	lw	a5, 0x1d0(a0)
     348:      	lw	t0, 0xc(a5)
     34c:      	lw	a7, 0x20(t2)
     350:      	addi	t1, sp, 0x8
     354:      	bltu	t1, t0, 0x37c <aot_func#3+0x40>
     358:      	mv	a6, a4
     35a:      	mv	a4, a3
     35c:      	mv	a3, a2
     35e:      	mv	a2, a1
     360:      	lw	a1, 0x10(t2)
     364:      	sub	a5, t1, t0
     368:      	bltu	a5, a1, 0x37c <aot_func#3+0x40>
     36c:      	mv	a1, a7
     36e:      	mv	a5, a6
     370:      	lw	ra, 0xc(sp)
     372:      	addi	sp, sp, 0x10
     374:      	auipc	t1, 0x0
     378:      	jr	0x1a(t1) <aot_func_internal#3>
     37c:      	lw	a2, 0x0(a7)
     380:      	li	a1, 0xb
     382:      	jalr	a2
     384:      	li	a0, 0x0
     386:      	li	a1, 0x0
     388:      	lw	ra, 0xc(sp)
     38a:      	addi	sp, sp, 0x10
     38c:      	ret

0000038e <aot_func_internal#3>:
     38e:      	addi	sp, sp, -0x20
     390:      	sw	ra, 0x1c(sp)
     392:      	sw	s0, 0x18(sp)
     394:      	sw	s1, 0x14(sp)
     396:      	sw	s2, 0x10(sp)
     398:      	sw	s3, 0xc(sp)
     39a:      	mv	s0, a3
     39c:      	mv	s1, a2
     39e:      	lui	a2, 0x80000
     3a2:      	xor	a2, a2, a3
     3a4:      	or	a3, s1, a2
     3a8:      	ori	a2, a4, 0x1
     3ac:      	bnez	a3, 0x3c4 <aot_func_internal#3+0x36>
     3ae:      	and	a3, a2, a5
     3b2:      	li	a4, -0x1
     3b4:      	bne	a3, a4, 0x3c4 <aot_func_internal#3+0x36>
     3b8:      	lw	a2, 0x0(a1)
     3ba:      	li	a1, 0x3
     3bc:      	jalr	a2
     3be:      	li	a0, 0x0
     3c0:      	li	a1, 0x0
     3c2:      	j	0x3ec <aot_func_internal#3+0x5e>
     3c4:      	lw	a4, 0x2c(a1)
     3c6:      	mv	a0, s1
     3c8:      	mv	s2, a1
     3ca:      	mv	a1, s0
     3cc:      	mv	a3, a5
     3ce:      	jalr	a4
     3d0:      	lw	a4, 0x30(s2)
     3d4:      	mv	s2, a0
     3d6:      	mv	s3, a1
     3d8:      	li	a2, 0x7
     3da:      	mv	a0, s1
     3dc:      	mv	a1, s0
     3de:      	li	a3, 0x0
     3e0:      	jalr	a4
     3e2:      	add	a1, a1, s3
     3e4:      	add	a0, a0, s2
     3e6:      	sltu	a2, a0, s2
     3ea:      	add	a1, a1, a2
     3ec:      	lw	ra, 0x1c(sp)
     3ee:      	lw	s0, 0x18(sp)
     3f0:      	lw	s1, 0x14(sp)
     3f2:      	lw	s2, 0x10(sp)
     3f4:      	lw	s3, 0xc(sp)
     3f6:      	addi	sp, sp, 0x20
     3f8:      	ret

000003fa <aot_func#4>:
     3fa:      	addi	sp, sp, -0x10
     3fc:      	sw	ra, 0xc(sp)
     3fe:      	mv	a4, a0
     400:      	lw	a0, 0x8(a0)
     402:      	lw	a3, 0x1d0(a0)
     406:      	lw	a5, 0x10(a3)
     408:      	lw	a3, 0x20(a4)
     40a:      	addi	a6, sp, 0x8
     40e:      	bltu	a6, a5, 0x42a <aot_func#4+0x30>
     412:      	lw	a4, 0x10(a4)
     414:      	sub	a5, a6, a5
     418:      	bltu	a5, a4, 0x42a <aot_func#4+0x30>
     41c:      	mv	a0, a3
     41e:      	lw	ra, 0xc(sp)
     420:      	addi	sp, sp, 0x10
     422:      	auipc	t1, 0x0
     426:      	jr	0x16(t1) <aot_func_internal#4>
     42a:      	lw	a2, 0x0(a3)
     42c:      	li	a1, 0xb
     42e:      	jalr	a2
     430:      	li	a0, 0x0
     432:      	lw	ra, 0xc(sp)
     434:      	addi	sp, sp, 0x10
     436:      	ret

00000438 <aot_func_internal#4>:
     438:      	addi	sp, sp, -0x20
     43a:      	sw	ra, 0x1c(sp)
     43c:      	sw	s0, 0x18(sp)
     43e:      	sw	s1, 0x14(sp)
     440:      	sw	s2, 0x10(sp)
     442:      	sw	s3, 0xc(sp)
     444:      	mv	s0, a0
     446:      	lw	a3, 0x34(a0)
     448:      	mv	s1, a2
     44a:      	mv	s2, a1
     44c:      	mv	a0, a1
     44e:      	mv	a1, a2
     450:      	jalr	a3
     452:      	lw	a2, 0x38(s0)
     454:      	mv	s3, a0
     456:      	lui	a1, 0x3f800
     45a:      	mv	a0, s1
     45c:      	jalr	a2
     45e:      	lw	a2, 0x3c(s0)
     460:      	mv	a1, a0
     462:      	mv	a0, s2
     464:      	jalr	a2
     466:      	lw	a5, 0x38(s0)
     468:      	mv	a1, a0
     46a:      	mv	a0, s3
     46c:      	lw	ra, 0x1c(sp)
     46e:      	lw	s0, 0x18(sp)
     470:      	lw	s1, 0x14(sp)
     472:      	lw	s2, 0x10(sp)
     474:      	lw	s3, 0xc(sp)
     476:      	addi	sp, sp, 0x20
     478:      	jr	a5

0000047a <aot_func#5>:
     47a:      	addi	sp, sp, -0x10
     47c:      	sw	ra, 0xc(sp)
     47e:      	mv	a2, a0
     480:      	lw	a0, 0x8(a0)
     482:      	lw	a3, 0x1d0(a0)
     486:      	lw	a3, 0x14(a3)
     488:      	addi	a4, sp, 0x8
     48a:      	bltu	a4, a3, 0x4a4 <aot_func#5+0x2a>
     48e:      	lw	a5, 0x10(a2)
     490:      	sub	a4, a4, a3
     492:      	bltu	a4, a5, 0x4a4 <aot_func#5+0x2a>
     496:      	mv	a0, a2
     498:      	lw	ra, 0xc(sp)
     49a:      	addi	sp, sp, 0x10
     49c:      	auipc	t1, 0x0
     4a0:      	jr	0x18(t1) <aot_func_internal#5>
     4a4:      	lw	a1, 0x20(a2)
     4a6:      	lw	a2, 0x0(a1)
     4a8:      	li	a1, 0xb
     4aa:      	jalr	a2
     4ac:      	li	a0, 0x0
     4ae:      	lw	ra, 0xc(sp)
     4b0:      	addi	sp, sp, 0x10
     4b2:      	ret

000004b4 <aot_func_internal#5>:
     4b4:      	addi	sp, sp, -0x20
     4b6:      	sw	ra, 0x1c(sp)
     4b8:      	sw	s0, 0x18(sp)
     4ba:      	sw	s1, 0x14(sp)
     4bc:      	sw	s2, 0x10(sp)
     4be:      	sw	s3, 0xc(sp)
     4c0:      	sw	s4, 0x8(sp)
     4c2:      	sw	s5, 0x4(sp)
     4c4:      	mv	s4, a0
     4c6:      	lw	s5, 0x20(a0)
     4ca:      	lw	a2, 0x20(s5)
     4ce:      	mv	a0, a1
     4d0:      	blt	a1, a2, 0x50e <aot_func_internal#5+0x5a>
     4d4:      	lw	s2, 0x8(s4)
     4d8:      	lw	s3, 0x28(s2)
     4dc:      	li	s0, 0x0
     4de:      	lw	a1, 0x24(s5)
     4e2:      	lw	a2, 0x18(s3)
     4e6:      	mv	s1, a0
     4e8:      	sub	a1, a0, a1
     4ec:      	mv	a0, s4
     4ee:      	jalr	a2
     4f0:      	lbu	a1, 0x68(s2)
     4f4:      	bnez	a1, 0x50c <aot_func_internal#5+0x58>
     4f6:      	lw	a1, 0x8(s5)
     4fa:      	lw	a2, 0x20(s5)
     4fe:      	add	s0, s0, a0
     500:      	sub	a0, s1, a2
     504:      	bltu	a1, s1, 0x4de <aot_func_internal#5+0x2a>
     508:      	add	a0, a0, s0
     50a:      	j	0x50e <aot_func_internal#5+0x5a>
     50c:      	li	a0, 0x0
     50e:      	lw	ra, 0x1c(sp)
     510:      	lw	s0, 0x18(sp)
     512:      	lw	s1, 0x14(sp)
     514:      	lw	s2, 0x10(sp)
     516:      	lw	s3, 0xc(sp)
     518:      	lw	s4, 0x8(sp)
     51a:      	lw	s5, 0x4(sp)
     51c:      	addi	sp, sp, 0x20
     51e:      	ret

00000520 <aot_func#6>:
     520:      	addi	sp, sp, -0x10
     522:      	sw	ra, 0xc(sp)
     524:      	mv	a3, a0
     526:      	lw	a0, 0x8(a0)
     528:      	lw	a2, 0x1d0(a0)
     52c:      	lw	a4, 0x18(a2)
     52e:      	lw	a2, 0x20(a3)
     530:      	addi	a5, sp, 0x8
     532:      	bltu	a5, a4, 0x54c <aot_func#6+0x2c>
     536:      	lw	a3, 0x10(a3)
     538:      	sub	a5, a5, a4
     53a:      	bltu	a5, a3, 0x54c <aot_func#6+0x2c>
     53e:      	mv	a0, a2
     540:      	lw	ra, 0xc(sp)
     542:      	addi	sp, sp, 0x10
     544:      	auipc	t1, 0x0
     548:      	jr	0x16(t1) <aot_func_internal#6>
     54c:      	lw	a2, 0x0(a2)
     54e:      	li	a1, 0xb
     550:      	jalr	a2
     552:      	li	a0, 0x0
     554:      	lw	ra, 0xc(sp)
     556:      	addi	sp, sp, 0x10
     558:      	ret

0000055a <aot_func_internal#6>:
     55a:      	lw	a2, 0x4(a0)
     55c:      	bge	a2, a1, 0x574 <aot_func_internal#6+0x1a>
     560:      	lw	a2, 0x24(a0)
     562:      	li	a3, 0x0
     564:      	li	a0, 0x0
     566:      	mul	a4, a3, a3
     56a:      	add	a3, a3, a2
     56c:      	add	a0, a0, a4
     56e:      	bne	a1, a3, 0x566 <aot_func_internal#6+0xc>
     572:      	ret
     574:      	li	a0, 0x0
     576:      	ret
