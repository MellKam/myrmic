
v_myrmic_xip.o:	file format elf32-littleriscv

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
      44:      	addi	sp, sp, -0x30
      46:      	sw	ra, 0x2c(sp)
      48:      	sw	s0, 0x28(sp)
      4a:      	sw	s1, 0x24(sp)
      4c:      	sw	s2, 0x20(sp)
      4e:      	sw	s3, 0x1c(sp)
      50:      	sw	s4, 0x18(sp)
      52:      	sw	s5, 0x14(sp)
      54:      	sw	s6, 0x10(sp)
      56:      	sw	s7, 0xc(sp)
      58:      	lw	t5, 0x4(a1)
      5c:      	bge	t5, a3, 0xbe <aot_func_internal#0+0x7a>
      60:      	lw	a6, 0x178(a0)
      64:      	lw	a7, 0x1b8(a0)
      68:      	lw	t0, 0xc(a1)
      6c:      	lw	t1, 0x8(a1)
      70:      	bgeu	a3, t0, 0xc2 <aot_func_internal#0+0x7e>
      74:      	li	t2, 0x0
      76:      	li	s7, 0x0
      78:      	and	a3, t1, a3
      7c:      	beqz	a3, 0x1b6 <aot_func_internal#0+0x172>
      80:      	lw	a5, 0x20(a1)
      82:      	sll	a5, t2, a5
      86:      	add	a2, a2, t5
      88:      	add	a2, a2, a5
      8a:      	bltu	a2, t5, 0x1ae <aot_func_internal#0+0x16a>
      8e:      	bltu	a7, a2, 0x1ae <aot_func_internal#0+0x16a>
      92:      	add	a5, a6, a2
      96:      	lbu	s1, 0x1(a5)
      9a:      	lbu	s0, 0x0(a5)
      9e:      	lbu	a4, 0x2(a5)
      a2:      	lbu	a5, 0x3(a5)
      a6:      	slli	s1, s1, 0x8
      a8:      	or	s0, s0, s1
      aa:      	slli	a4, a4, 0x10
      ac:      	slli	a5, a5, 0x18
      ae:      	lw	s1, 0x24(a1)
      b0:      	or	a4, a4, a5
      b2:      	or	a4, a4, s0
      b4:      	add	s7, s7, a4
      b6:      	sub	a3, a3, s1
      b8:      	add	a2, a2, t0
      ba:      	bnez	a3, 0x8a <aot_func_internal#0+0x46>
      bc:      	j	0x1b6 <aot_func_internal#0+0x172>
      be:      	mv	s7, t5
      c0:      	j	0x1b6 <aot_func_internal#0+0x172>
      c2:      	lw	a4, 0x10(a1)
      c4:      	lw	t3, 0x14(a1)
      c8:      	and	t2, a4, a3
      cc:      	li	s7, 0x0
      ce:      	mv	t4, t2
      d0:      	mv	t6, a2
      d2:      	add	a5, t6, t3
      d6:      	add	a5, a5, t5
      d8:      	bltu	a5, t5, 0x1ae <aot_func_internal#0+0x16a>
      dc:      	bltu	a7, a5, 0x1ae <aot_func_internal#0+0x16a>
      e0:      	lw	s0, 0x18(a1)
      e2:      	add	s0, s0, t6
      e4:      	add	s1, t5, s0
      e8:      	bltu	s1, t5, 0x1ae <aot_func_internal#0+0x16a>
      ec:      	bltu	a7, s1, 0x1ae <aot_func_internal#0+0x16a>
      f0:      	add	s0, t6, t0
      f4:      	add	s0, s0, t5
      f6:      	bltu	s0, t5, 0x1ae <aot_func_internal#0+0x16a>
      fa:      	bltu	a7, s0, 0x1ae <aot_func_internal#0+0x16a>
      fe:      	add	s2, t5, t6
     102:      	bltu	s2, t5, 0x1ae <aot_func_internal#0+0x16a>
     106:      	bltu	a7, s2, 0x1ae <aot_func_internal#0+0x16a>
     10a:      	add	a5, a5, a6
     10c:      	lbu	s3, 0x1(a5)
     110:      	lbu	s4, 0x0(a5)
     114:      	lbu	s5, 0x2(a5)
     118:      	lbu	a5, 0x3(a5)
     11c:      	slli	s3, s3, 0x8
     11e:      	or	s3, s3, s4
     122:      	slli	s5, s5, 0x10
     124:      	slli	a5, a5, 0x18
     126:      	or	a5, a5, s5
     12a:      	or	s3, a5, s3
     12e:      	add	s1, s1, a6
     130:      	lbu	s5, 0x1(s1)
     134:      	lbu	s4, 0x0(s1)
     138:      	lbu	s6, 0x2(s1)
     13c:      	lbu	s1, 0x3(s1)
     140:      	slli	s5, s5, 0x8
     142:      	or	a5, s5, s4
     146:      	slli	s6, s6, 0x10
     148:      	slli	s1, s1, 0x18
     14a:      	or	s1, s1, s6
     14e:      	or	s4, s1, a5
     152:      	add	s0, s0, a6
     154:      	lbu	s1, 0x1(s0)
     158:      	lbu	s5, 0x0(s0)
     15c:      	lbu	a5, 0x2(s0)
     160:      	lbu	s0, 0x3(s0)
     164:      	slli	s1, s1, 0x8
     166:      	or	s1, s1, s5
     16a:      	slli	a5, a5, 0x10
     16c:      	slli	s0, s0, 0x18
     16e:      	or	a5, a5, s0
     170:      	or	s5, a5, s1
     174:      	add	s2, s2, a6
     176:      	lbu	s6, 0x1(s2)
     17a:      	lbu	s1, 0x0(s2)
     17e:      	lbu	a5, 0x2(s2)
     182:      	lbu	s0, 0x3(s2)
     186:      	slli	s6, s6, 0x8
     188:      	or	s1, s6, s1
     18c:      	slli	a5, a5, 0x10
     18e:      	slli	s0, s0, 0x18
     190:      	or	a5, a5, s0
     192:      	or	a5, a5, s1
     194:      	add	a4, a5, s7
     198:      	add	a4, a4, s5
     19a:      	lw	a5, 0x1c(a1)
     19c:      	add	a4, a4, s3
     19e:      	add	s7, a4, s4
     1a2:      	sub	t4, t4, t0
     1a6:      	add	t6, t6, a5
     1a8:      	bnez	t4, 0xd2 <aot_func_internal#0+0x8e>
     1ac:      	j	0x78 <aot_func_internal#0+0x34>
     1ae:      	lw	a2, 0x0(a1)
     1b0:      	li	a1, 0x2
     1b2:      	jalr	a2
     1b4:      	li	s7, 0x0
     1b6:      	mv	a0, s7
     1b8:      	lw	ra, 0x2c(sp)
     1ba:      	lw	s0, 0x28(sp)
     1bc:      	lw	s1, 0x24(sp)
     1be:      	lw	s2, 0x20(sp)
     1c0:      	lw	s3, 0x1c(sp)
     1c2:      	lw	s4, 0x18(sp)
     1c4:      	lw	s5, 0x14(sp)
     1c6:      	lw	s6, 0x10(sp)
     1c8:      	lw	s7, 0xc(sp)
     1ca:      	addi	sp, sp, 0x30
     1cc:      	ret

000001ce <aot_func#1>:
     1ce:      	addi	sp, sp, -0x10
     1d0:      	sw	ra, 0xc(sp)
     1d2:      	mv	a5, a0
     1d4:      	lw	a0, 0x8(a0)
     1d6:      	lw	a4, 0x1d0(a0)
     1da:      	lw	a4, 0x4(a4)
     1dc:      	lw	a7, 0x20(a5)
     1e0:      	addi	t0, sp, 0x8
     1e4:      	bltu	t0, a4, 0x208 <aot_func#1+0x3a>
     1e8:      	mv	a6, a3
     1ea:      	mv	a3, a2
     1ec:      	mv	a2, a1
     1ee:      	lw	a1, 0x10(a5)
     1f0:      	sub	a4, t0, a4
     1f4:      	bltu	a4, a1, 0x208 <aot_func#1+0x3a>
     1f8:      	mv	a1, a7
     1fa:      	mv	a4, a6
     1fc:      	lw	ra, 0xc(sp)
     1fe:      	addi	sp, sp, 0x10
     200:      	auipc	t1, 0x0
     204:      	jr	0x16(t1) <aot_func_internal#1>
     208:      	lw	a2, 0x0(a7)
     20c:      	li	a1, 0xb
     20e:      	jalr	a2
     210:      	lw	ra, 0xc(sp)
     212:      	addi	sp, sp, 0x10
     214:      	ret

00000216 <aot_func_internal#1>:
     216:      	addi	sp, sp, -0x10
     218:      	sw	s0, 0xc(sp)
     21a:      	sw	s1, 0x8(sp)
     21c:      	lw	a5, 0x4(a1)
     21e:      	bge	a5, a3, 0x2ac <aot_func_internal#1+0x96>
     222:      	lw	a6, 0x178(a0)
     226:      	lw	t1, 0x1b8(a0)
     22a:      	lw	a5, 0xc(a1)
     22c:      	lw	a7, 0x8(a1)
     230:      	bgeu	a3, a5, 0x2b4 <aot_func_internal#1+0x9e>
     234:      	li	t0, 0x0
     236:      	and	t2, a7, a3
     23a:      	beqz	t2, 0x2ac <aot_func_internal#1+0x96>
     23e:      	lw	a5, 0x20(a1)
     240:      	sll	a5, t0, a5
     244:      	add	a2, a2, a5
     246:      	lw	s1, 0x4(a1)
     248:      	add	a5, s1, a2
     24c:      	bltu	a5, s1, 0x43c <aot_func_internal#1+0x226>
     250:      	bltu	t1, a5, 0x43c <aot_func_internal#1+0x226>
     254:      	add	a5, a5, a6
     256:      	lbu	t0, 0x1(a5)
     25a:      	lbu	a7, 0x0(a5)
     25e:      	lbu	s0, 0x2(a5)
     262:      	lbu	s1, 0x3(a5)
     266:      	slli	t0, t0, 0x8
     268:      	or	a7, t0, a7
     26c:      	slli	t0, s0, 0x10
     270:      	slli	s1, s1, 0x18
     272:      	lw	s0, 0x24(a1)
     274:      	or	s1, s1, t0
     278:      	or	s1, s1, a7
     27c:      	mul	s1, s1, a4
     280:      	add	a3, s1, s0
     284:      	sb	a3, 0x0(a5)
     288:      	srli	s0, a3, 0x10
     28c:      	sb	s0, 0x2(a5)
     290:      	srli	s1, a3, 0x18
     294:      	sb	s1, 0x3(a5)
     298:      	srli	a3, a3, 0x8
     29a:      	sb	a3, 0x1(a5)
     29e:      	lw	a3, 0x24(a1)
     2a0:      	lw	a5, 0xc(a1)
     2a2:      	sub	t2, t2, a3
     2a6:      	add	a2, a2, a5
     2a8:      	bnez	t2, 0x246 <aot_func_internal#1+0x30>
     2ac:      	lw	s0, 0xc(sp)
     2ae:      	lw	s1, 0x8(sp)
     2b0:      	addi	sp, sp, 0x10
     2b2:      	ret
     2b4:      	lw	a5, 0x10(a1)
     2b6:      	li	t2, 0x0
     2b8:      	and	t0, a5, a3
     2bc:      	mv	t3, a2
     2be:      	lw	t4, 0x4(a1)
     2c2:      	add	a5, t4, t3
     2c6:      	bltu	a5, t4, 0x43c <aot_func_internal#1+0x226>
     2ca:      	bltu	t1, a5, 0x43c <aot_func_internal#1+0x226>
     2ce:      	add	a5, a5, a6
     2d0:      	lbu	t4, 0x1(a5)
     2d4:      	lbu	t5, 0x0(a5)
     2d8:      	lbu	t6, 0x2(a5)
     2dc:      	lbu	s0, 0x3(a5)
     2e0:      	slli	t4, t4, 0x8
     2e2:      	or	t4, t4, t5
     2e6:      	slli	t6, t6, 0x10
     2e8:      	slli	t5, s0, 0x18
     2ec:      	lw	s1, 0x24(a1)
     2ee:      	or	s0, t5, t6
     2f2:      	or	s0, s0, t4
     2f6:      	mul	s0, s0, a4
     2fa:      	add	t4, s0, s1
     2fe:      	sb	t4, 0x0(a5)
     302:      	srli	s0, t4, 0x10
     306:      	sb	s0, 0x2(a5)
     30a:      	srli	s1, t4, 0x18
     30e:      	sb	s1, 0x3(a5)
     312:      	srli	s1, t4, 0x8
     316:      	sb	s1, 0x1(a5)
     31a:      	lw	a5, 0xc(a1)
     31c:      	lw	s1, 0x4(a1)
     31e:      	add	a5, a5, t3
     320:      	add	a5, a5, s1
     322:      	bltu	a5, s1, 0x43c <aot_func_internal#1+0x226>
     326:      	bltu	t1, a5, 0x43c <aot_func_internal#1+0x226>
     32a:      	add	a5, a5, a6
     32c:      	lbu	t5, 0x1(a5)
     330:      	lbu	t4, 0x0(a5)
     334:      	lbu	s0, 0x2(a5)
     338:      	lbu	s1, 0x3(a5)
     33c:      	slli	t5, t5, 0x8
     33e:      	or	t4, t5, t4
     342:      	slli	t5, s0, 0x10
     346:      	slli	s1, s1, 0x18
     348:      	lw	s0, 0x24(a1)
     34a:      	or	s1, s1, t5
     34e:      	or	s1, s1, t4
     352:      	mul	s1, s1, a4
     356:      	add	t4, s1, s0
     35a:      	sb	t4, 0x0(a5)
     35e:      	srli	s0, t4, 0x10
     362:      	sb	s0, 0x2(a5)
     366:      	srli	s1, t4, 0x18
     36a:      	sb	s1, 0x3(a5)
     36e:      	srli	s1, t4, 0x8
     372:      	sb	s1, 0x1(a5)
     376:      	lw	a5, 0x18(a1)
     378:      	lw	s1, 0x4(a1)
     37a:      	add	a5, a5, t3
     37c:      	add	a5, a5, s1
     37e:      	bltu	a5, s1, 0x43c <aot_func_internal#1+0x226>
     382:      	bltu	t1, a5, 0x43c <aot_func_internal#1+0x226>
     386:      	add	a5, a5, a6
     388:      	lbu	t5, 0x1(a5)
     38c:      	lbu	t4, 0x0(a5)
     390:      	lbu	s0, 0x2(a5)
     394:      	lbu	s1, 0x3(a5)
     398:      	slli	t5, t5, 0x8
     39a:      	or	t4, t5, t4
     39e:      	slli	t5, s0, 0x10
     3a2:      	slli	s1, s1, 0x18
     3a4:      	lw	s0, 0x24(a1)
     3a6:      	or	s1, s1, t5
     3aa:      	or	s1, s1, t4
     3ae:      	mul	s1, s1, a4
     3b2:      	add	t4, s1, s0
     3b6:      	sb	t4, 0x0(a5)
     3ba:      	srli	s0, t4, 0x10
     3be:      	sb	s0, 0x2(a5)
     3c2:      	srli	s1, t4, 0x18
     3c6:      	sb	s1, 0x3(a5)
     3ca:      	srli	s1, t4, 0x8
     3ce:      	sb	s1, 0x1(a5)
     3d2:      	lw	a5, 0x14(a1)
     3d4:      	lw	s1, 0x4(a1)
     3d6:      	add	a5, a5, t3
     3d8:      	add	a5, a5, s1
     3da:      	bltu	a5, s1, 0x43c <aot_func_internal#1+0x226>
     3de:      	bltu	t1, a5, 0x43c <aot_func_internal#1+0x226>
     3e2:      	add	a5, a5, a6
     3e4:      	lbu	t5, 0x1(a5)
     3e8:      	lbu	t4, 0x0(a5)
     3ec:      	lbu	s0, 0x2(a5)
     3f0:      	lbu	s1, 0x3(a5)
     3f4:      	slli	t5, t5, 0x8
     3f6:      	or	t4, t5, t4
     3fa:      	slli	t5, s0, 0x10
     3fe:      	slli	s1, s1, 0x18
     400:      	lw	s0, 0x24(a1)
     402:      	or	s1, s1, t5
     406:      	or	s1, s1, t4
     40a:      	mul	s1, s1, a4
     40e:      	add	t4, s1, s0
     412:      	sb	t4, 0x0(a5)
     416:      	srli	s0, t4, 0x10
     41a:      	sb	s0, 0x2(a5)
     41e:      	srli	s1, t4, 0x18
     422:      	sb	s1, 0x3(a5)
     426:      	srli	s1, t4, 0x8
     42a:      	sb	s1, 0x1(a5)
     42e:      	lw	a5, 0xc(a1)
     430:      	lw	s1, 0x1c(a1)
     432:      	add	t2, t2, a5
     434:      	add	t3, t3, s1
     436:      	bne	t0, t2, 0x2be <aot_func_internal#1+0xa8>
     43a:      	j	0x236 <aot_func_internal#1+0x20>
     43c:      	lw	a5, 0x0(a1)
     43e:      	li	a1, 0x2
     440:      	lw	s0, 0xc(sp)
     442:      	lw	s1, 0x8(sp)
     444:      	addi	sp, sp, 0x10
     446:      	jr	a5

00000448 <aot_func#2>:
     448:      	addi	sp, sp, -0x10
     44a:      	sw	ra, 0xc(sp)
     44c:      	mv	a3, a0
     44e:      	lw	a0, 0x8(a0)
     450:      	lw	a4, 0x1d0(a0)
     454:      	lw	a4, 0x8(a4)
     456:      	addi	a6, sp, 0x8
     45a:      	bltu	a6, a4, 0x476 <aot_func#2+0x2e>
     45e:      	lw	a5, 0x10(a3)
     460:      	sub	a4, a6, a4
     464:      	bltu	a4, a5, 0x476 <aot_func#2+0x2e>
     468:      	mv	a0, a3
     46a:      	lw	ra, 0xc(sp)
     46c:      	addi	sp, sp, 0x10
     46e:      	auipc	t1, 0x0
     472:      	jr	0x18(t1) <aot_func_internal#2>
     476:      	lw	a1, 0x20(a3)
     478:      	lw	a2, 0x0(a1)
     47a:      	li	a1, 0xb
     47c:      	jalr	a2
     47e:      	li	a0, 0x0
     480:      	lw	ra, 0xc(sp)
     482:      	addi	sp, sp, 0x10
     484:      	ret

00000486 <aot_func_internal#2>:
     486:      	addi	sp, sp, -0x30
     488:      	sw	ra, 0x2c(sp)
     48a:      	sw	s0, 0x28(sp)
     48c:      	sw	s1, 0x24(sp)
     48e:      	sw	s2, 0x20(sp)
     490:      	sw	s3, 0x1c(sp)
     492:      	sw	s4, 0x18(sp)
     494:      	sw	s5, 0x14(sp)
     496:      	sw	s6, 0x10(sp)
     498:      	sw	s7, 0xc(sp)
     49a:      	sw	s8, 0x8(sp)
     49c:      	sw	s9, 0x4(sp)
     49e:      	mv	s3, a0
     4a0:      	lw	s5, 0x20(a0)
     4a4:      	lw	a0, 0x4(s5)
     4a8:      	bge	a0, a2, 0x51a <aot_func_internal#2+0x94>
     4ac:      	mv	s2, a2
     4ae:      	mv	s4, a1
     4b0:      	li	s6, 0x0
     4b2:      	li	s0, 0x0
     4b4:      	lw	s1, 0xc(s3)
     4b8:      	lw	a0, 0x24(s5)
     4bc:      	srli	s7, a1, 0x18
     4c0:      	srli	s8, a1, 0x10
     4c4:      	srli	s9, a1, 0x8
     4c8:      	and	a0, a0, s0
     4ca:      	lw	a4, 0x28(s5)
     4ce:      	sb	s7, 0x3(s1)
     4d2:      	sb	s8, 0x2(s1)
     4d6:      	sb	s9, 0x1(s1)
     4da:      	sb	s4, 0x0(s1)
     4de:      	sb	a0, 0x4(s1)
     4e2:      	srli	a1, a0, 0x18
     4e6:      	sb	a1, 0x7(s1)
     4ea:      	srli	a1, a0, 0x10
     4ee:      	sb	a1, 0x6(s1)
     4f2:      	srli	a0, a0, 0x8
     4f4:      	sb	a0, 0x5(s1)
     4f8:      	li	a2, 0x2
     4fa:      	mv	a0, s3
     4fc:      	li	a1, 0x0
     4fe:      	mv	a3, s1
     500:      	jalr	a4
     502:      	andi	a0, a0, 0xff
     506:      	beqz	a0, 0x51a <aot_func_internal#2+0x94>
     508:      	lw	a0, 0x24(s5)
     50c:      	lw	a1, 0x0(s1)
     50e:      	add	s0, s0, a0
     510:      	or	s6, a1, s6
     514:      	bne	s0, s2, 0x4c8 <aot_func_internal#2+0x42>
     518:      	j	0x51c <aot_func_internal#2+0x96>
     51a:      	li	s6, 0x0
     51c:      	mv	a0, s6
     51e:      	lw	ra, 0x2c(sp)
     520:      	lw	s0, 0x28(sp)
     522:      	lw	s1, 0x24(sp)
     524:      	lw	s2, 0x20(sp)
     526:      	lw	s3, 0x1c(sp)
     528:      	lw	s4, 0x18(sp)
     52a:      	lw	s5, 0x14(sp)
     52c:      	lw	s6, 0x10(sp)
     52e:      	lw	s7, 0xc(sp)
     530:      	lw	s8, 0x8(sp)
     532:      	lw	s9, 0x4(sp)
     534:      	addi	sp, sp, 0x30
     536:      	ret

00000538 <aot_func#3>:
     538:      	addi	sp, sp, -0x10
     53a:      	sw	ra, 0xc(sp)
     53c:      	mv	t2, a0
     53e:      	lw	a0, 0x8(a0)
     540:      	lw	a5, 0x1d0(a0)
     544:      	lw	t0, 0xc(a5)
     548:      	lw	a7, 0x20(t2)
     54c:      	addi	t1, sp, 0x8
     550:      	bltu	t1, t0, 0x578 <aot_func#3+0x40>
     554:      	mv	a6, a4
     556:      	mv	a4, a3
     558:      	mv	a3, a2
     55a:      	mv	a2, a1
     55c:      	lw	a1, 0x10(t2)
     560:      	sub	a5, t1, t0
     564:      	bltu	a5, a1, 0x578 <aot_func#3+0x40>
     568:      	mv	a1, a7
     56a:      	mv	a5, a6
     56c:      	lw	ra, 0xc(sp)
     56e:      	addi	sp, sp, 0x10
     570:      	auipc	t1, 0x0
     574:      	jr	0x1a(t1) <aot_func_internal#3>
     578:      	lw	a2, 0x0(a7)
     57c:      	li	a1, 0xb
     57e:      	jalr	a2
     580:      	li	a0, 0x0
     582:      	li	a1, 0x0
     584:      	lw	ra, 0xc(sp)
     586:      	addi	sp, sp, 0x10
     588:      	ret

0000058a <aot_func_internal#3>:
     58a:      	addi	sp, sp, -0x20
     58c:      	sw	ra, 0x1c(sp)
     58e:      	sw	s0, 0x18(sp)
     590:      	sw	s1, 0x14(sp)
     592:      	sw	s2, 0x10(sp)
     594:      	sw	s3, 0xc(sp)
     596:      	mv	s0, a3
     598:      	mv	s1, a2
     59a:      	lui	a2, 0x80000
     59e:      	xor	a2, a2, a3
     5a0:      	or	a3, s1, a2
     5a4:      	ori	a2, a4, 0x1
     5a8:      	bnez	a3, 0x5c0 <aot_func_internal#3+0x36>
     5aa:      	and	a3, a2, a5
     5ae:      	li	a4, -0x1
     5b0:      	bne	a3, a4, 0x5c0 <aot_func_internal#3+0x36>
     5b4:      	lw	a2, 0x0(a1)
     5b6:      	li	a1, 0x3
     5b8:      	jalr	a2
     5ba:      	li	a0, 0x0
     5bc:      	li	a1, 0x0
     5be:      	j	0x5e8 <aot_func_internal#3+0x5e>
     5c0:      	lw	a4, 0x2c(a1)
     5c2:      	mv	a0, s1
     5c4:      	mv	s2, a1
     5c6:      	mv	a1, s0
     5c8:      	mv	a3, a5
     5ca:      	jalr	a4
     5cc:      	lw	a4, 0x30(s2)
     5d0:      	mv	s2, a0
     5d2:      	mv	s3, a1
     5d4:      	li	a2, 0x7
     5d6:      	mv	a0, s1
     5d8:      	mv	a1, s0
     5da:      	li	a3, 0x0
     5dc:      	jalr	a4
     5de:      	add	a1, a1, s3
     5e0:      	add	a0, a0, s2
     5e2:      	sltu	a2, a0, s2
     5e6:      	add	a1, a1, a2
     5e8:      	lw	ra, 0x1c(sp)
     5ea:      	lw	s0, 0x18(sp)
     5ec:      	lw	s1, 0x14(sp)
     5ee:      	lw	s2, 0x10(sp)
     5f0:      	lw	s3, 0xc(sp)
     5f2:      	addi	sp, sp, 0x20
     5f4:      	ret

000005f6 <aot_func#4>:
     5f6:      	addi	sp, sp, -0x10
     5f8:      	sw	ra, 0xc(sp)
     5fa:      	mv	a4, a0
     5fc:      	lw	a0, 0x8(a0)
     5fe:      	lw	a3, 0x1d0(a0)
     602:      	lw	a5, 0x10(a3)
     604:      	lw	a3, 0x20(a4)
     606:      	addi	a6, sp, 0x8
     60a:      	bltu	a6, a5, 0x626 <aot_func#4+0x30>
     60e:      	lw	a4, 0x10(a4)
     610:      	sub	a5, a6, a5
     614:      	bltu	a5, a4, 0x626 <aot_func#4+0x30>
     618:      	mv	a0, a3
     61a:      	lw	ra, 0xc(sp)
     61c:      	addi	sp, sp, 0x10
     61e:      	auipc	t1, 0x0
     622:      	jr	0x16(t1) <aot_func_internal#4>
     626:      	lw	a2, 0x0(a3)
     628:      	li	a1, 0xb
     62a:      	jalr	a2
     62c:      	li	a0, 0x0
     62e:      	lw	ra, 0xc(sp)
     630:      	addi	sp, sp, 0x10
     632:      	ret

00000634 <aot_func_internal#4>:
     634:      	addi	sp, sp, -0x20
     636:      	sw	ra, 0x1c(sp)
     638:      	sw	s0, 0x18(sp)
     63a:      	sw	s1, 0x14(sp)
     63c:      	sw	s2, 0x10(sp)
     63e:      	sw	s3, 0xc(sp)
     640:      	mv	s0, a0
     642:      	lw	a3, 0x34(a0)
     644:      	mv	s1, a2
     646:      	mv	s2, a1
     648:      	mv	a0, a1
     64a:      	mv	a1, a2
     64c:      	jalr	a3
     64e:      	lw	a2, 0x38(s0)
     650:      	mv	s3, a0
     652:      	lui	a1, 0x3f800
     656:      	mv	a0, s1
     658:      	jalr	a2
     65a:      	lw	a2, 0x3c(s0)
     65c:      	mv	a1, a0
     65e:      	mv	a0, s2
     660:      	jalr	a2
     662:      	lw	a5, 0x38(s0)
     664:      	mv	a1, a0
     666:      	mv	a0, s3
     668:      	lw	ra, 0x1c(sp)
     66a:      	lw	s0, 0x18(sp)
     66c:      	lw	s1, 0x14(sp)
     66e:      	lw	s2, 0x10(sp)
     670:      	lw	s3, 0xc(sp)
     672:      	addi	sp, sp, 0x20
     674:      	jr	a5

00000676 <aot_func#5>:
     676:      	addi	sp, sp, -0x10
     678:      	sw	ra, 0xc(sp)
     67a:      	mv	a2, a0
     67c:      	lw	a0, 0x8(a0)
     67e:      	lw	a3, 0x1d0(a0)
     682:      	lw	a3, 0x14(a3)
     684:      	addi	a4, sp, 0x8
     686:      	bltu	a4, a3, 0x6a0 <aot_func#5+0x2a>
     68a:      	lw	a5, 0x10(a2)
     68c:      	sub	a4, a4, a3
     68e:      	bltu	a4, a5, 0x6a0 <aot_func#5+0x2a>
     692:      	mv	a0, a2
     694:      	lw	ra, 0xc(sp)
     696:      	addi	sp, sp, 0x10
     698:      	auipc	t1, 0x0
     69c:      	jr	0x18(t1) <aot_func_internal#5>
     6a0:      	lw	a1, 0x20(a2)
     6a2:      	lw	a2, 0x0(a1)
     6a4:      	li	a1, 0xb
     6a6:      	jalr	a2
     6a8:      	li	a0, 0x0
     6aa:      	lw	ra, 0xc(sp)
     6ac:      	addi	sp, sp, 0x10
     6ae:      	ret

000006b0 <aot_func_internal#5>:
     6b0:      	addi	sp, sp, -0x20
     6b2:      	sw	ra, 0x1c(sp)
     6b4:      	sw	s0, 0x18(sp)
     6b6:      	sw	s1, 0x14(sp)
     6b8:      	sw	s2, 0x10(sp)
     6ba:      	sw	s3, 0xc(sp)
     6bc:      	sw	s4, 0x8(sp)
     6be:      	sw	s5, 0x4(sp)
     6c0:      	mv	s4, a0
     6c2:      	lw	s5, 0x20(a0)
     6c6:      	lw	a2, 0x20(s5)
     6ca:      	mv	a0, a1
     6cc:      	blt	a1, a2, 0x70a <aot_func_internal#5+0x5a>
     6d0:      	lw	s2, 0x8(s4)
     6d4:      	lw	s3, 0x28(s2)
     6d8:      	li	s0, 0x0
     6da:      	lw	a1, 0x24(s5)
     6de:      	lw	a2, 0x18(s3)
     6e2:      	mv	s1, a0
     6e4:      	sub	a1, a0, a1
     6e8:      	mv	a0, s4
     6ea:      	jalr	a2
     6ec:      	lbu	a1, 0x68(s2)
     6f0:      	bnez	a1, 0x708 <aot_func_internal#5+0x58>
     6f2:      	lw	a1, 0x8(s5)
     6f6:      	lw	a2, 0x20(s5)
     6fa:      	add	s0, s0, a0
     6fc:      	sub	a0, s1, a2
     700:      	bltu	a1, s1, 0x6da <aot_func_internal#5+0x2a>
     704:      	add	a0, a0, s0
     706:      	j	0x70a <aot_func_internal#5+0x5a>
     708:      	li	a0, 0x0
     70a:      	lw	ra, 0x1c(sp)
     70c:      	lw	s0, 0x18(sp)
     70e:      	lw	s1, 0x14(sp)
     710:      	lw	s2, 0x10(sp)
     712:      	lw	s3, 0xc(sp)
     714:      	lw	s4, 0x8(sp)
     716:      	lw	s5, 0x4(sp)
     718:      	addi	sp, sp, 0x20
     71a:      	ret

0000071c <aot_func#6>:
     71c:      	addi	sp, sp, -0x10
     71e:      	sw	ra, 0xc(sp)
     720:      	mv	a3, a0
     722:      	lw	a0, 0x8(a0)
     724:      	lw	a2, 0x1d0(a0)
     728:      	lw	a4, 0x18(a2)
     72a:      	lw	a2, 0x20(a3)
     72c:      	addi	a5, sp, 0x8
     72e:      	bltu	a5, a4, 0x748 <aot_func#6+0x2c>
     732:      	lw	a3, 0x10(a3)
     734:      	sub	a5, a5, a4
     736:      	bltu	a5, a3, 0x748 <aot_func#6+0x2c>
     73a:      	mv	a0, a2
     73c:      	lw	ra, 0xc(sp)
     73e:      	addi	sp, sp, 0x10
     740:      	auipc	t1, 0x0
     744:      	jr	0x16(t1) <aot_func_internal#6>
     748:      	lw	a2, 0x0(a2)
     74a:      	li	a1, 0xb
     74c:      	jalr	a2
     74e:      	li	a0, 0x0
     750:      	lw	ra, 0xc(sp)
     752:      	addi	sp, sp, 0x10
     754:      	ret

00000756 <aot_func_internal#6>:
     756:      	lw	a2, 0x4(a0)
     758:      	bge	a2, a1, 0x770 <aot_func_internal#6+0x1a>
     75c:      	lw	a2, 0x24(a0)
     75e:      	li	a3, 0x0
     760:      	li	a0, 0x0
     762:      	mul	a4, a3, a3
     766:      	add	a3, a3, a2
     768:      	add	a0, a0, a4
     76a:      	bne	a1, a3, 0x762 <aot_func_internal#6+0xc>
     76e:      	ret
     770:      	li	a0, 0x0
     772:      	ret
