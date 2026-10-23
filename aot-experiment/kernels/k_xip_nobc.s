
k_xip_nobc.o:	file format elf32-littleriscv

Disassembly of section .text:

00000000 <aot_func#0>:
       0:      	addi	sp, sp, -0x20
       2:      	sw	ra, 0x1c(sp)
       4:      	sw	s0, 0x18(sp)
       6:      	sw	s1, 0x14(sp)
       8:      	sw	s2, 0x10(sp)
       a:      	sw	s3, 0xc(sp)
       c:      	sw	s4, 0x8(sp)
       e:      	sw	s5, 0x4(sp)
      10:      	lw	t3, 0x20(a0)
      14:      	lw	t5, 0x0(t3)
      18:      	bge	t5, a2, 0x78 <aot_func#0+0x78>
      1c:      	lw	a0, 0x8(a0)
      1e:      	lw	a6, 0x178(a0)
      22:      	lw	a7, 0x8(t3)
      26:      	lw	t0, 0x4(t3)
      2a:      	bgeu	a2, a7, 0x7c <aot_func#0+0x7c>
      2e:      	li	t1, 0x0
      30:      	li	a3, 0x0
      32:      	and	a2, t0, a2
      36:      	beqz	a2, 0x164 <aot_func#0+0x164>
      3a:      	lw	a4, 0x20(t3)
      3e:      	sll	a4, t1, a4
      42:      	add	a1, a1, t5
      44:      	add	a1, a1, a4
      46:      	bltu	a1, t5, 0x15a <aot_func#0+0x15a>
      4a:      	add	a4, a6, a1
      4e:      	lbu	a5, 0x1(a4)
      52:      	lbu	s1, 0x0(a4)
      56:      	lbu	s0, 0x2(a4)
      5a:      	lbu	a4, 0x3(a4)
      5e:      	slli	a5, a5, 0x8
      60:      	or	a5, a5, s1
      62:      	slli	s0, s0, 0x10
      64:      	slli	a4, a4, 0x18
      66:      	lw	s1, 0x24(t3)
      6a:      	or	a4, a4, s0
      6c:      	or	a4, a4, a5
      6e:      	add	a3, a3, a4
      70:      	sub	a2, a2, s1
      72:      	add	a1, a1, a7
      74:      	bnez	a2, 0x46 <aot_func#0+0x46>
      76:      	j	0x164 <aot_func#0+0x164>
      78:      	mv	a3, t5
      7a:      	j	0x164 <aot_func#0+0x164>
      7c:      	lw	a3, 0xc(t3)
      80:      	lw	t2, 0x10(t3)
      84:      	and	t1, a3, a2
      88:      	li	a3, 0x0
      8a:      	mv	t4, t1
      8c:      	mv	a4, a1
      8e:      	add	s1, a4, t2
      92:      	add	s1, s1, t5
      94:      	bltu	s1, t5, 0x15a <aot_func#0+0x15a>
      98:      	lw	a5, 0x18(t3)
      9c:      	add	a5, a5, a4
      9e:      	add	s0, t5, a5
      a2:      	bltu	s0, t5, 0x15a <aot_func#0+0x15a>
      a6:      	add	a5, a4, a7
      aa:      	add	a5, a5, t5
      ac:      	bltu	a5, t5, 0x15a <aot_func#0+0x15a>
      b0:      	add	t6, t5, a4
      b4:      	bltu	t6, t5, 0x15a <aot_func#0+0x15a>
      b8:      	add	s1, s1, a6
      ba:      	lbu	s2, 0x1(s1)
      be:      	lbu	s3, 0x0(s1)
      c2:      	lbu	s4, 0x2(s1)
      c6:      	lbu	s1, 0x3(s1)
      ca:      	slli	s2, s2, 0x8
      cc:      	or	s2, s2, s3
      d0:      	slli	s4, s4, 0x10
      d2:      	slli	s1, s1, 0x18
      d4:      	or	s1, s1, s4
      d8:      	or	s2, s1, s2
      dc:      	add	s0, s0, a6
      de:      	lbu	s4, 0x1(s0)
      e2:      	lbu	s3, 0x0(s0)
      e6:      	lbu	s5, 0x2(s0)
      ea:      	lbu	s0, 0x3(s0)
      ee:      	slli	s4, s4, 0x8
      f0:      	or	s1, s4, s3
      f4:      	slli	s5, s5, 0x10
      f6:      	slli	s0, s0, 0x18
      f8:      	or	s0, s0, s5
      fc:      	or	s3, s0, s1
     100:      	add	a5, a5, a6
     102:      	lbu	s1, 0x1(a5)
     106:      	lbu	s4, 0x0(a5)
     10a:      	lbu	s0, 0x2(a5)
     10e:      	lbu	a5, 0x3(a5)
     112:      	slli	s1, s1, 0x8
     114:      	or	s1, s1, s4
     118:      	slli	s0, s0, 0x10
     11a:      	slli	a5, a5, 0x18
     11c:      	or	a5, a5, s0
     11e:      	or	s4, a5, s1
     122:      	add	t6, t6, a6
     124:      	lbu	s5, 0x1(t6)
     128:      	lbu	s1, 0x0(t6)
     12c:      	lbu	a5, 0x2(t6)
     130:      	lbu	s0, 0x3(t6)
     134:      	slli	s5, s5, 0x8
     136:      	or	s1, s5, s1
     13a:      	slli	a5, a5, 0x10
     13c:      	slli	s0, s0, 0x18
     13e:      	or	a5, a5, s0
     140:      	or	a5, a5, s1
     142:      	add	a3, a3, a5
     144:      	add	a3, a3, s4
     146:      	lw	a5, 0x1c(t3)
     14a:      	add	a3, a3, s2
     14c:      	add	a3, a3, s3
     14e:      	sub	t4, t4, a7
     152:      	add	a4, a4, a5
     154:      	bnez	t4, 0x8e <aot_func#0+0x8e>
     158:      	j	0x32 <aot_func#0+0x32>
     15a:      	lw	a2, 0x14(t3)
     15e:      	li	a1, 0x2
     160:      	jalr	a2
     162:      	li	a3, 0x0
     164:      	mv	a0, a3
     166:      	lw	ra, 0x1c(sp)
     168:      	lw	s0, 0x18(sp)
     16a:      	lw	s1, 0x14(sp)
     16c:      	lw	s2, 0x10(sp)
     16e:      	lw	s3, 0xc(sp)
     170:      	lw	s4, 0x8(sp)
     172:      	lw	s5, 0x4(sp)
     174:      	addi	sp, sp, 0x20
     176:      	ret

00000178 <aot_func#1>:
     178:      	addi	sp, sp, -0x10
     17a:      	sw	s0, 0xc(sp)
     17c:      	lw	t3, 0x20(a0)
     180:      	lw	a5, 0x0(t3)
     184:      	bge	a5, a2, 0x210 <aot_func#1+0x98>
     188:      	lw	a0, 0x8(a0)
     18a:      	lw	t0, 0x178(a0)
     18e:      	lw	a5, 0x8(t3)
     192:      	lw	a6, 0x4(t3)
     196:      	bgeu	a2, a5, 0x216 <aot_func#1+0x9e>
     19a:      	li	a7, 0x0
     19c:      	and	a2, a6, a2
     1a0:      	beqz	a2, 0x210 <aot_func#1+0x98>
     1a2:      	lw	a4, 0x20(t3)
     1a6:      	sll	a4, a7, a4
     1aa:      	add	a1, a1, a4
     1ac:      	lw	a4, 0x0(t3)
     1b0:      	add	a5, a4, a1
     1b4:      	bltu	a5, a4, 0x39e <aot_func#1+0x226>
     1b8:      	add	a5, a5, t0
     1ba:      	lbu	a6, 0x1(a5)
     1be:      	lbu	a7, 0x0(a5)
     1c2:      	lbu	a4, 0x2(a5)
     1c6:      	lbu	s0, 0x3(a5)
     1ca:      	slli	a6, a6, 0x8
     1cc:      	or	a6, a6, a7
     1d0:      	slli	a7, a4, 0x10
     1d4:      	slli	s0, s0, 0x18
     1d6:      	lw	a4, 0x24(t3)
     1da:      	or	s0, s0, a7
     1de:      	or	s0, s0, a6
     1e2:      	mul	s0, s0, a3
     1e6:      	add	s0, s0, a4
     1e8:      	sb	s0, 0x0(a5)
     1ec:      	srli	a4, s0, 0x10
     1f0:      	sb	a4, 0x2(a5)
     1f4:      	srli	a4, s0, 0x18
     1f8:      	sb	a4, 0x3(a5)
     1fc:      	srli	s0, s0, 0x8
     1fe:      	sb	s0, 0x1(a5)
     202:      	lw	a4, 0x24(t3)
     206:      	lw	a5, 0x8(t3)
     20a:      	sub	a2, a2, a4
     20c:      	add	a1, a1, a5
     20e:      	bnez	a2, 0x1ac <aot_func#1+0x34>
     210:      	lw	s0, 0xc(sp)
     212:      	addi	sp, sp, 0x10
     214:      	ret
     216:      	lw	a5, 0xc(t3)
     21a:      	li	t1, 0x0
     21c:      	and	a7, a5, a2
     220:      	mv	t2, a1
     222:      	lw	a4, 0x0(t3)
     226:      	add	a5, a4, t2
     22a:      	bltu	a5, a4, 0x39e <aot_func#1+0x226>
     22e:      	add	a5, a5, t0
     230:      	lbu	t5, 0x1(a5)
     234:      	lbu	t4, 0x0(a5)
     238:      	lbu	t6, 0x2(a5)
     23c:      	lbu	a4, 0x3(a5)
     240:      	slli	t5, t5, 0x8
     242:      	or	t4, t5, t4
     246:      	slli	t6, t6, 0x10
     248:      	slli	t5, a4, 0x18
     24c:      	lw	s0, 0x24(t3)
     250:      	or	a4, t5, t6
     254:      	or	a4, a4, t4
     258:      	mul	a4, a4, a3
     25c:      	add	s0, s0, a4
     25e:      	sb	s0, 0x0(a5)
     262:      	srli	a4, s0, 0x10
     266:      	sb	a4, 0x2(a5)
     26a:      	srli	a4, s0, 0x18
     26e:      	sb	a4, 0x3(a5)
     272:      	srli	s0, s0, 0x8
     274:      	sb	s0, 0x1(a5)
     278:      	lw	a4, 0x8(t3)
     27c:      	lw	s0, 0x0(t3)
     280:      	add	a4, a4, t2
     282:      	add	a5, s0, a4
     286:      	bltu	a5, s0, 0x39e <aot_func#1+0x226>
     28a:      	add	a5, a5, t0
     28c:      	lbu	t4, 0x1(a5)
     290:      	lbu	t5, 0x0(a5)
     294:      	lbu	a4, 0x2(a5)
     298:      	lbu	s0, 0x3(a5)
     29c:      	slli	t4, t4, 0x8
     29e:      	or	t4, t4, t5
     2a2:      	slli	t5, a4, 0x10
     2a6:      	slli	s0, s0, 0x18
     2a8:      	lw	a4, 0x24(t3)
     2ac:      	or	s0, s0, t5
     2b0:      	or	s0, s0, t4
     2b4:      	mul	s0, s0, a3
     2b8:      	add	s0, s0, a4
     2ba:      	sb	s0, 0x0(a5)
     2be:      	srli	a4, s0, 0x10
     2c2:      	sb	a4, 0x2(a5)
     2c6:      	srli	a4, s0, 0x18
     2ca:      	sb	a4, 0x3(a5)
     2ce:      	srli	s0, s0, 0x8
     2d0:      	sb	s0, 0x1(a5)
     2d4:      	lw	a4, 0x18(t3)
     2d8:      	lw	s0, 0x0(t3)
     2dc:      	add	a4, a4, t2
     2de:      	add	a5, s0, a4
     2e2:      	bltu	a5, s0, 0x39e <aot_func#1+0x226>
     2e6:      	add	a5, a5, t0
     2e8:      	lbu	t4, 0x1(a5)
     2ec:      	lbu	t5, 0x0(a5)
     2f0:      	lbu	a4, 0x2(a5)
     2f4:      	lbu	s0, 0x3(a5)
     2f8:      	slli	t4, t4, 0x8
     2fa:      	or	t4, t4, t5
     2fe:      	slli	t5, a4, 0x10
     302:      	slli	s0, s0, 0x18
     304:      	lw	a4, 0x24(t3)
     308:      	or	s0, s0, t5
     30c:      	or	s0, s0, t4
     310:      	mul	s0, s0, a3
     314:      	add	s0, s0, a4
     316:      	sb	s0, 0x0(a5)
     31a:      	srli	a4, s0, 0x10
     31e:      	sb	a4, 0x2(a5)
     322:      	srli	a4, s0, 0x18
     326:      	sb	a4, 0x3(a5)
     32a:      	srli	s0, s0, 0x8
     32c:      	sb	s0, 0x1(a5)
     330:      	lw	a4, 0x10(t3)
     334:      	lw	s0, 0x0(t3)
     338:      	add	a4, a4, t2
     33a:      	add	a5, s0, a4
     33e:      	bltu	a5, s0, 0x39e <aot_func#1+0x226>
     342:      	add	a5, a5, t0
     344:      	lbu	t4, 0x1(a5)
     348:      	lbu	t5, 0x0(a5)
     34c:      	lbu	a4, 0x2(a5)
     350:      	lbu	s0, 0x3(a5)
     354:      	slli	t4, t4, 0x8
     356:      	or	t4, t4, t5
     35a:      	slli	t5, a4, 0x10
     35e:      	slli	s0, s0, 0x18
     360:      	lw	a4, 0x24(t3)
     364:      	or	s0, s0, t5
     368:      	or	s0, s0, t4
     36c:      	mul	s0, s0, a3
     370:      	add	s0, s0, a4
     372:      	sb	s0, 0x0(a5)
     376:      	srli	a4, s0, 0x10
     37a:      	sb	a4, 0x2(a5)
     37e:      	srli	a4, s0, 0x18
     382:      	sb	a4, 0x3(a5)
     386:      	srli	s0, s0, 0x8
     388:      	sb	s0, 0x1(a5)
     38c:      	lw	a4, 0x8(t3)
     390:      	lw	a5, 0x1c(t3)
     394:      	add	t1, t1, a4
     396:      	add	t2, t2, a5
     398:      	bne	a7, t1, 0x222 <aot_func#1+0xaa>
     39c:      	j	0x19c <aot_func#1+0x24>
     39e:      	lw	a5, 0x14(t3)
     3a2:      	li	a1, 0x2
     3a4:      	lw	s0, 0xc(sp)
     3a6:      	addi	sp, sp, 0x10
     3a8:      	jr	a5

000003aa <aot_func#2>:
     3aa:      	addi	sp, sp, -0x30
     3ac:      	sw	ra, 0x2c(sp)
     3ae:      	sw	s0, 0x28(sp)
     3b0:      	sw	s1, 0x24(sp)
     3b2:      	sw	s2, 0x20(sp)
     3b4:      	sw	s3, 0x1c(sp)
     3b6:      	sw	s4, 0x18(sp)
     3b8:      	sw	s5, 0x14(sp)
     3ba:      	sw	s6, 0x10(sp)
     3bc:      	sw	s7, 0xc(sp)
     3be:      	sw	s8, 0x8(sp)
     3c0:      	sw	s9, 0x4(sp)
     3c2:      	mv	s2, a0
     3c4:      	lw	s5, 0x20(a0)
     3c8:      	lw	a0, 0x0(s5)
     3cc:      	bge	a0, a2, 0x438 <aot_func#2+0x8e>
     3d0:      	mv	s3, a2
     3d2:      	mv	s4, a1
     3d4:      	li	s6, 0x0
     3d6:      	li	s1, 0x0
     3d8:      	lw	s0, 0xc(s2)
     3dc:      	lw	a0, 0x24(s5)
     3e0:      	srli	s7, a1, 0x18
     3e4:      	srli	s8, a1, 0x10
     3e8:      	srli	s9, a1, 0x8
     3ec:      	and	a0, a0, s1
     3ee:      	lw	a4, 0x28(s5)
     3f2:      	sb	s7, 0x3(s0)
     3f6:      	sb	s8, 0x2(s0)
     3fa:      	sb	s9, 0x1(s0)
     3fe:      	sb	s4, 0x0(s0)
     402:      	sb	a0, 0x4(s0)
     406:      	srli	a1, a0, 0x18
     40a:      	sb	a1, 0x7(s0)
     40e:      	srli	a1, a0, 0x10
     412:      	sb	a1, 0x6(s0)
     416:      	srli	a0, a0, 0x8
     418:      	sb	a0, 0x5(s0)
     41c:      	li	a2, 0x2
     41e:      	mv	a0, s2
     420:      	li	a1, 0x0
     422:      	mv	a3, s0
     424:      	jalr	a4
     426:      	lw	a0, 0x24(s5)
     42a:      	lw	a1, 0x0(s0)
     42c:      	add	s1, s1, a0
     42e:      	or	s6, a1, s6
     432:      	bne	s1, s3, 0x3ec <aot_func#2+0x42>
     436:      	j	0x43a <aot_func#2+0x90>
     438:      	li	s6, 0x0
     43a:      	mv	a0, s6
     43c:      	lw	ra, 0x2c(sp)
     43e:      	lw	s0, 0x28(sp)
     440:      	lw	s1, 0x24(sp)
     442:      	lw	s2, 0x20(sp)
     444:      	lw	s3, 0x1c(sp)
     446:      	lw	s4, 0x18(sp)
     448:      	lw	s5, 0x14(sp)
     44a:      	lw	s6, 0x10(sp)
     44c:      	lw	s7, 0xc(sp)
     44e:      	lw	s8, 0x8(sp)
     450:      	lw	s9, 0x4(sp)
     452:      	addi	sp, sp, 0x30
     454:      	ret

00000456 <aot_func#3>:
     456:      	addi	sp, sp, -0x20
     458:      	sw	ra, 0x1c(sp)
     45a:      	sw	s0, 0x18(sp)
     45c:      	sw	s1, 0x14(sp)
     45e:      	sw	s2, 0x10(sp)
     460:      	sw	s3, 0xc(sp)
     462:      	mv	s0, a2
     464:      	mv	s1, a1
     466:      	lw	s2, 0x20(a0)
     46a:      	lui	a1, 0x80000
     46e:      	xor	a1, a1, a2
     470:      	or	a1, a1, s1
     472:      	ori	a2, a3, 0x1
     476:      	bnez	a1, 0x492 <aot_func#3+0x3c>
     478:      	and	a1, a2, a4
     47c:      	li	a3, -0x1
     47e:      	bne	a1, a3, 0x492 <aot_func#3+0x3c>
     482:      	lw	a0, 0x8(a0)
     484:      	lw	a2, 0x14(s2)
     488:      	li	a1, 0x3
     48a:      	jalr	a2
     48c:      	li	a0, 0x0
     48e:      	li	a1, 0x0
     490:      	j	0x4ba <aot_func#3+0x64>
     492:      	lw	a5, 0x2c(s2)
     496:      	mv	a0, s1
     498:      	mv	a1, s0
     49a:      	mv	a3, a4
     49c:      	jalr	a5
     49e:      	lw	a4, 0x30(s2)
     4a2:      	mv	s2, a0
     4a4:      	mv	s3, a1
     4a6:      	li	a2, 0x7
     4a8:      	mv	a0, s1
     4aa:      	mv	a1, s0
     4ac:      	li	a3, 0x0
     4ae:      	jalr	a4
     4b0:      	add	a1, a1, s3
     4b2:      	add	a0, a0, s2
     4b4:      	sltu	a2, a0, s2
     4b8:      	add	a1, a1, a2
     4ba:      	lw	ra, 0x1c(sp)
     4bc:      	lw	s0, 0x18(sp)
     4be:      	lw	s1, 0x14(sp)
     4c0:      	lw	s2, 0x10(sp)
     4c2:      	lw	s3, 0xc(sp)
     4c4:      	addi	sp, sp, 0x20
     4c6:      	ret

000004c8 <aot_func#4>:
     4c8:      	addi	sp, sp, -0x20
     4ca:      	sw	ra, 0x1c(sp)
     4cc:      	sw	s0, 0x18(sp)
     4ce:      	sw	s1, 0x14(sp)
     4d0:      	sw	s2, 0x10(sp)
     4d2:      	sw	s3, 0xc(sp)
     4d4:      	lw	s1, 0x20(a0)
     4d6:      	lw	a3, 0x34(s1)
     4d8:      	mv	s0, a2
     4da:      	mv	s3, a1
     4dc:      	mv	a0, a1
     4de:      	mv	a1, a2
     4e0:      	jalr	a3
     4e2:      	lw	a2, 0x38(s1)
     4e4:      	mv	s2, a0
     4e6:      	lui	a1, 0x3f800
     4ea:      	mv	a0, s0
     4ec:      	jalr	a2
     4ee:      	lw	a2, 0x3c(s1)
     4f0:      	mv	a1, a0
     4f2:      	mv	a0, s3
     4f4:      	jalr	a2
     4f6:      	lw	a5, 0x38(s1)
     4f8:      	mv	a1, a0
     4fa:      	mv	a0, s2
     4fc:      	lw	ra, 0x1c(sp)
     4fe:      	lw	s0, 0x18(sp)
     500:      	lw	s1, 0x14(sp)
     502:      	lw	s2, 0x10(sp)
     504:      	lw	s3, 0xc(sp)
     506:      	addi	sp, sp, 0x20
     508:      	jr	a5

0000050a <aot_func#5>:
     50a:      	addi	sp, sp, -0x20
     50c:      	sw	ra, 0x1c(sp)
     50e:      	sw	s0, 0x18(sp)
     510:      	sw	s1, 0x14(sp)
     512:      	sw	s2, 0x10(sp)
     514:      	sw	s3, 0xc(sp)
     516:      	sw	s4, 0x8(sp)
     518:      	mv	s3, a0
     51a:      	lw	s4, 0x20(a0)
     51e:      	lw	a2, 0x20(s4)
     522:      	mv	a0, a1
     524:      	blt	a1, a2, 0x558 <aot_func#5+0x4e>
     528:      	lw	a1, 0x8(s3)
     52c:      	lw	s2, 0x28(a1)
     530:      	li	s0, 0x0
     532:      	lw	a1, 0x24(s4)
     536:      	lw	a2, 0x18(s2)
     53a:      	mv	s1, a0
     53c:      	sub	a1, a0, a1
     540:      	mv	a0, s3
     542:      	jalr	a2
     544:      	lw	a1, 0x4(s4)
     548:      	lw	a2, 0x20(s4)
     54c:      	add	s0, s0, a0
     54e:      	sub	a0, s1, a2
     552:      	bltu	a1, s1, 0x532 <aot_func#5+0x28>
     556:      	add	a0, a0, s0
     558:      	lw	ra, 0x1c(sp)
     55a:      	lw	s0, 0x18(sp)
     55c:      	lw	s1, 0x14(sp)
     55e:      	lw	s2, 0x10(sp)
     560:      	lw	s3, 0xc(sp)
     562:      	lw	s4, 0x8(sp)
     564:      	addi	sp, sp, 0x20
     566:      	ret

00000568 <aot_func#6>:
     568:      	lw	a0, 0x20(a0)
     56a:      	lw	a2, 0x0(a0)
     56c:      	bge	a2, a1, 0x584 <aot_func#6+0x1c>
     570:      	lw	a2, 0x24(a0)
     572:      	li	a3, 0x0
     574:      	li	a0, 0x0
     576:      	mul	a4, a3, a3
     57a:      	add	a3, a3, a2
     57c:      	add	a0, a0, a4
     57e:      	bne	a1, a3, 0x576 <aot_func#6+0xe>
     582:      	ret
     584:      	li	a0, 0x0
     586:      	ret
