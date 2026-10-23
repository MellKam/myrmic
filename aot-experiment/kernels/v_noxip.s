
v_noxip.o:	file format elf32-littleriscv

Disassembly of section .text:

00000000 <aot_func#0>:
       0:      	addi	sp, sp, -0x10
       2:      	sw	ra, 0xc(sp)
       4:      	mv	a3, a0
       6:      	lui	a0, 0x0
       a:      	lw	a4, 0x0(a0)
       e:      	lw	a0, 0x8(a3)
      10:      	addi	a5, sp, 0x8
      12:      	bltu	a5, a4, 0x2a <aot_func#0+0x2a>
      16:      	lw	a3, 0x10(a3)
      18:      	sub	a5, a5, a4
      1a:      	bltu	a5, a3, 0x2a <aot_func#0+0x2a>
      1e:      	lw	ra, 0xc(sp)
      20:      	addi	sp, sp, 0x10
      22:      	auipc	t1, 0x0
      26:      	jr	0x1a(t1) <aot_func_internal#0>
      2a:      	li	a1, 0xb
      2c:      	auipc	ra, 0x0
      30:      	jalr	ra <aot_func#0+0x2c>
      34:      	li	a0, 0x0
      36:      	lw	ra, 0xc(sp)
      38:      	addi	sp, sp, 0x10
      3a:      	ret

0000003c <aot_func_internal#0>:
      3c:      	blez	a2, 0x90 <aot_func_internal#0+0x54>
      40:      	addi	sp, sp, -0x10
      42:      	sw	ra, 0xc(sp)
      44:      	sw	s0, 0x8(sp)
      46:      	sw	s1, 0x4(sp)
      48:      	lw	a7, 0x178(a0)
      4c:      	lw	t0, 0x1b8(a0)
      50:      	li	a3, 0x4
      52:      	bgeu	a2, a3, 0x94 <aot_func_internal#0+0x58>
      56:      	li	a6, 0x0
      58:      	li	t6, 0x0
      5a:      	andi	a2, a2, 0x3
      5c:      	beqz	a2, 0x16a <aot_func_internal#0+0x12e>
      60:      	add	a1, a1, a6
      62:      	bltu	t0, a1, 0x15e <aot_func_internal#0+0x122>
      66:      	add	a3, a7, a1
      6a:      	lbu	a4, 0x1(a3)
      6e:      	lbu	a5, 0x0(a3)
      72:      	lbu	s1, 0x2(a3)
      76:      	lbu	a3, 0x3(a3)
      7a:      	slli	a4, a4, 0x8
      7c:      	or	a4, a4, a5
      7e:      	slli	s1, s1, 0x10
      80:      	slli	a3, a3, 0x18
      82:      	or	a3, a3, s1
      84:      	or	a3, a3, a4
      86:      	add	t6, t6, a3
      88:      	addi	a2, a2, -0x1
      8a:      	addi	a1, a1, 0x4
      8c:      	bnez	a2, 0x62 <aot_func_internal#0+0x26>
      8e:      	j	0x16a <aot_func_internal#0+0x12e>
      90:      	li	a0, 0x0
      92:      	ret
      94:      	lui	a3, 0x80000
      98:      	addi	a3, a3, -0x4
      9a:      	and	a6, a2, a3
      9e:      	li	t6, 0x0
      a0:      	mv	t1, a6
      a2:      	mv	a4, a1
      a4:      	addi	a5, a4, 0xc
      a8:      	bltu	t0, a5, 0x15e <aot_func_internal#0+0x122>
      ac:      	addi	a5, a4, 0x8
      b0:      	bltu	t0, a5, 0x15e <aot_func_internal#0+0x122>
      b4:      	addi	a5, a4, 0x4
      b8:      	bltu	t0, a5, 0x15e <aot_func_internal#0+0x122>
      bc:      	bltu	t0, a4, 0x15e <aot_func_internal#0+0x122>
      c0:      	add	a5, a7, a4
      c4:      	lbu	t2, 0xd(a5)
      c8:      	lbu	t3, 0xc(a5)
      cc:      	lbu	t4, 0xe(a5)
      d0:      	lbu	t5, 0xf(a5)
      d4:      	slli	t2, t2, 0x8
      d6:      	or	t2, t2, t3
      da:      	slli	t4, t4, 0x10
      dc:      	slli	t5, t5, 0x18
      de:      	or	a3, t5, t4
      e2:      	or	t2, a3, t2
      e6:      	lbu	t4, 0x9(a5)
      ea:      	lbu	t3, 0x8(a5)
      ee:      	lbu	t5, 0xa(a5)
      f2:      	lbu	a3, 0xb(a5)
      f6:      	slli	t4, t4, 0x8
      f8:      	or	t3, t4, t3
      fc:      	slli	t5, t5, 0x10
      fe:      	slli	a3, a3, 0x18
     100:      	or	a3, a3, t5
     104:      	or	t3, a3, t3
     108:      	lbu	t5, 0x5(a5)
     10c:      	lbu	t4, 0x4(a5)
     110:      	lbu	s1, 0x6(a5)
     114:      	lbu	s0, 0x7(a5)
     118:      	slli	t5, t5, 0x8
     11a:      	or	a3, t5, t4
     11e:      	slli	s1, s1, 0x10
     120:      	slli	s0, s0, 0x18
     122:      	or	s0, s0, s1
     124:      	or	t4, s0, a3
     128:      	lbu	s1, 0x1(a5)
     12c:      	lbu	s0, 0x0(a5)
     130:      	lbu	a3, 0x2(a5)
     134:      	lbu	a5, 0x3(a5)
     138:      	slli	s1, s1, 0x8
     13a:      	or	s0, s0, s1
     13c:      	slli	a3, a3, 0x10
     13e:      	slli	a5, a5, 0x18
     140:      	or	a3, a3, a5
     142:      	or	a3, a3, s0
     144:      	add	a3, a3, t6
     146:      	add	t3, t3, t4
     148:      	add	a3, a3, t3
     14a:      	add	t6, t2, a3
     14e:      	addi	t1, t1, -0x4
     150:      	addi	a4, a4, 0x10
     152:      	bnez	t1, 0xa4 <aot_func_internal#0+0x68>
     156:      	slli	a6, a6, 0x2
     158:      	andi	a2, a2, 0x3
     15a:      	bnez	a2, 0x60 <aot_func_internal#0+0x24>
     15c:      	j	0x16a <aot_func_internal#0+0x12e>
     15e:      	li	a1, 0x2
     160:      	auipc	ra, 0x0
     164:      	jalr	ra <aot_func_internal#0+0x124>
     168:      	li	t6, 0x0
     16a:      	lw	ra, 0xc(sp)
     16c:      	lw	s0, 0x8(sp)
     16e:      	lw	s1, 0x4(sp)
     170:      	addi	sp, sp, 0x10
     172:      	mv	a0, t6
     174:      	ret

00000176 <aot_func#1>:
     176:      	addi	sp, sp, -0x10
     178:      	sw	ra, 0xc(sp)
     17a:      	mv	a4, a0
     17c:      	lui	a0, 0x0
     180:      	lw	a5, 0x0(a0)
     184:      	lw	a0, 0x8(a4)
     186:      	addi	a6, sp, 0x8
     18a:      	bltu	a6, a5, 0x1a4 <aot_func#1+0x2e>
     18e:      	lw	a4, 0x10(a4)
     190:      	sub	a5, a6, a5
     194:      	bltu	a5, a4, 0x1a4 <aot_func#1+0x2e>
     198:      	lw	ra, 0xc(sp)
     19a:      	addi	sp, sp, 0x10
     19c:      	auipc	t1, 0x0
     1a0:      	jr	0x18(t1) <aot_func_internal#1>
     1a4:      	li	a1, 0xb
     1a6:      	auipc	ra, 0x0
     1aa:      	jalr	ra <aot_func#1+0x30>
     1ae:      	lw	ra, 0xc(sp)
     1b0:      	addi	sp, sp, 0x10
     1b2:      	ret

000001b4 <aot_func_internal#1>:
     1b4:      	addi	sp, sp, -0x20
     1b6:      	sw	s0, 0x1c(sp)
     1b8:      	sw	s1, 0x18(sp)
     1ba:      	sw	s2, 0x14(sp)
     1bc:      	sw	s3, 0x10(sp)
     1be:      	sw	s4, 0xc(sp)
     1c0:      	sw	s5, 0x8(sp)
     1c2:      	blez	a2, 0x37e <aot_func_internal#1+0x1ca>
     1c6:      	lw	t2, 0x178(a0)
     1ca:      	lw	t3, 0x1b8(a0)
     1ce:      	li	a4, 0x4
     1d0:      	bltu	a2, a4, 0x328 <aot_func_internal#1+0x174>
     1d4:      	lui	a4, 0x80000
     1d8:      	addi	a4, a4, -0x4
     1da:      	and	a6, a2, a4
     1de:      	addi	a7, t2, 0x4
     1e2:      	addi	t0, t2, 0xc
     1e6:      	addi	t1, t2, 0x8
     1ea:      	mv	t4, a6
     1ec:      	mv	t5, a1
     1ee:      	bltu	t3, t5, 0x38e <aot_func_internal#1+0x1da>
     1f2:      	add	s5, t0, t5
     1f6:      	lbu	a4, -0xb(s5)
     1fa:      	lbu	t6, -0xc(s5)
     1fe:      	lbu	s0, -0xa(s5)
     202:      	lbu	s1, -0x9(s5)
     206:      	slli	a4, a4, 0x8
     208:      	or	a4, a4, t6
     20c:      	slli	s0, s0, 0x10
     20e:      	slli	s1, s1, 0x18
     210:      	or	s0, s0, s1
     212:      	or	a4, a4, s0
     214:      	mul	a4, a4, a3
     218:      	addi	s1, a4, 0x1
     21c:      	sb	s1, -0xc(s5)
     220:      	srli	a4, s1, 0x10
     224:      	sb	a4, -0xa(s5)
     228:      	srli	a4, s1, 0x18
     22c:      	sb	a4, -0x9(s5)
     230:      	srli	s1, s1, 0x8
     232:      	addi	s4, t5, 0x4
     236:      	sb	s1, -0xb(s5)
     23a:      	bltu	t3, s4, 0x38e <aot_func_internal#1+0x1da>
     23e:      	add	s1, a7, t5
     242:      	lbu	s2, 0x1(s1)
     246:      	lbu	t6, 0x0(s1)
     24a:      	lbu	s3, 0x2(s1)
     24e:      	lbu	s0, 0x3(s1)
     252:      	slli	s2, s2, 0x8
     254:      	or	t6, s2, t6
     258:      	slli	s3, s3, 0x10
     25a:      	slli	s0, s0, 0x18
     25c:      	or	s0, s0, s3
     260:      	or	s0, s0, t6
     264:      	mul	s0, s0, a3
     268:      	addi	a5, s0, 0x1
     26c:      	sb	a5, 0x0(s1)
     270:      	srli	s0, a5, 0x10
     274:      	sb	s0, 0x2(s1)
     278:      	srli	a4, a5, 0x18
     27c:      	sb	a4, 0x3(s1)
     280:      	srli	a5, a5, 0x8
     282:      	addi	a4, s4, 0x4
     286:      	sb	a5, 0x1(s1)
     28a:      	bltu	t3, a4, 0x38e <aot_func_internal#1+0x1da>
     28e:      	add	t5, t5, t1
     290:      	lbu	t6, 0x1(t5)
     294:      	lbu	s1, 0x0(t5)
     298:      	lbu	s0, 0x2(t5)
     29c:      	lbu	a5, 0x3(t5)
     2a0:      	slli	t6, t6, 0x8
     2a2:      	or	s1, t6, s1
     2a6:      	slli	s0, s0, 0x10
     2a8:      	slli	a5, a5, 0x18
     2aa:      	or	a5, a5, s0
     2ac:      	or	a5, a5, s1
     2ae:      	mul	a5, a5, a3
     2b2:      	addi	s1, a5, 0x1
     2b6:      	sb	s1, 0x0(t5)
     2ba:      	srli	a5, s1, 0x10
     2be:      	sb	a5, 0x2(t5)
     2c2:      	srli	a5, s1, 0x18
     2c6:      	sb	a5, 0x3(t5)
     2ca:      	srli	s1, s1, 0x8
     2cc:      	addi	a4, a4, 0x4
     2ce:      	sb	s1, 0x1(t5)
     2d2:      	bltu	t3, a4, 0x38e <aot_func_internal#1+0x1da>
     2d6:      	lbu	t5, 0x1(s5)
     2da:      	lbu	s1, 0x0(s5)
     2de:      	lbu	s0, 0x2(s5)
     2e2:      	lbu	a5, 0x3(s5)
     2e6:      	slli	t5, t5, 0x8
     2e8:      	or	s1, t5, s1
     2ec:      	slli	s0, s0, 0x10
     2ee:      	slli	a5, a5, 0x18
     2f0:      	or	a5, a5, s0
     2f2:      	or	a5, a5, s1
     2f4:      	mul	a5, a5, a3
     2f8:      	addi	s1, a5, 0x1
     2fc:      	sb	s1, 0x0(s5)
     300:      	srli	a5, s1, 0x10
     304:      	sb	a5, 0x2(s5)
     308:      	srli	a5, s1, 0x18
     30c:      	sb	a5, 0x3(s5)
     310:      	srli	s1, s1, 0x8
     312:      	sb	s1, 0x1(s5)
     316:      	addi	t4, t4, -0x4
     318:      	addi	t5, a4, 0x4
     31c:      	bnez	t4, 0x1ee <aot_func_internal#1+0x3a>
     320:      	slli	a6, a6, 0x2
     322:      	andi	a2, a2, 0x3
     324:      	bnez	a2, 0x32e <aot_func_internal#1+0x17a>
     326:      	j	0x37e <aot_func_internal#1+0x1ca>
     328:      	li	a6, 0x0
     32a:      	andi	a2, a2, 0x3
     32c:      	beqz	a2, 0x37e <aot_func_internal#1+0x1ca>
     32e:      	add	a1, a1, a6
     330:      	bltu	t3, a1, 0x38e <aot_func_internal#1+0x1da>
     334:      	add	a4, t2, a1
     338:      	lbu	a6, 0x1(a4)
     33c:      	lbu	s1, 0x0(a4)
     340:      	lbu	s0, 0x2(a4)
     344:      	lbu	a5, 0x3(a4)
     348:      	slli	a6, a6, 0x8
     34a:      	or	s1, a6, s1
     34e:      	slli	s0, s0, 0x10
     350:      	slli	a5, a5, 0x18
     352:      	or	a5, a5, s0
     354:      	or	a5, a5, s1
     356:      	mul	a5, a5, a3
     35a:      	addi	s1, a5, 0x1
     35e:      	sb	s1, 0x0(a4)
     362:      	srli	a5, s1, 0x10
     366:      	sb	a5, 0x2(a4)
     36a:      	srli	a5, s1, 0x18
     36e:      	sb	a5, 0x3(a4)
     372:      	srli	s1, s1, 0x8
     374:      	sb	s1, 0x1(a4)
     378:      	addi	a2, a2, -0x1
     37a:      	addi	a1, a1, 0x4
     37c:      	bnez	a2, 0x330 <aot_func_internal#1+0x17c>
     37e:      	lw	s0, 0x1c(sp)
     380:      	lw	s1, 0x18(sp)
     382:      	lw	s2, 0x14(sp)
     384:      	lw	s3, 0x10(sp)
     386:      	lw	s4, 0xc(sp)
     388:      	lw	s5, 0x8(sp)
     38a:      	addi	sp, sp, 0x20
     38c:      	ret
     38e:      	li	a1, 0x2
     390:      	lw	s0, 0x1c(sp)
     392:      	lw	s1, 0x18(sp)
     394:      	lw	s2, 0x14(sp)
     396:      	lw	s3, 0x10(sp)
     398:      	lw	s4, 0xc(sp)
     39a:      	lw	s5, 0x8(sp)
     39c:      	addi	sp, sp, 0x20
     39e:      	auipc	t1, 0x0
     3a2:      	jr	t1 <aot_func_internal#1+0x1ea>

000003a6 <aot_func#2>:
     3a6:      	addi	sp, sp, -0x10
     3a8:      	sw	ra, 0xc(sp)
     3aa:      	lui	a3, 0x0
     3ae:      	lw	a3, 0x0(a3)
     3b2:      	addi	a4, sp, 0x8
     3b4:      	bltu	a4, a3, 0x3cc <aot_func#2+0x26>
     3b8:      	lw	a5, 0x10(a0)
     3ba:      	sub	a4, a4, a3
     3bc:      	bltu	a4, a5, 0x3cc <aot_func#2+0x26>
     3c0:      	lw	ra, 0xc(sp)
     3c2:      	addi	sp, sp, 0x10
     3c4:      	auipc	t1, 0x0
     3c8:      	jr	0x1c(t1) <aot_func_internal#2>
     3cc:      	lw	a0, 0x8(a0)
     3ce:      	li	a1, 0xb
     3d0:      	auipc	ra, 0x0
     3d4:      	jalr	ra <aot_func#2+0x2a>
     3d8:      	li	a0, 0x0
     3da:      	lw	ra, 0xc(sp)
     3dc:      	addi	sp, sp, 0x10
     3de:      	ret

000003e0 <aot_func_internal#2>:
     3e0:      	addi	sp, sp, -0x30
     3e2:      	sw	ra, 0x2c(sp)
     3e4:      	sw	s0, 0x28(sp)
     3e6:      	sw	s1, 0x24(sp)
     3e8:      	sw	s2, 0x20(sp)
     3ea:      	sw	s3, 0x1c(sp)
     3ec:      	sw	s4, 0x18(sp)
     3ee:      	sw	s5, 0x14(sp)
     3f0:      	sw	s6, 0x10(sp)
     3f2:      	sw	s7, 0xc(sp)
     3f4:      	sw	s8, 0x8(sp)
     3f6:      	blez	a2, 0x45a <aot_func_internal#2+0x7a>
     3fa:      	mv	s2, a2
     3fc:      	mv	s4, a1
     3fe:      	mv	s3, a0
     400:      	li	s5, 0x0
     402:      	li	s0, 0x0
     404:      	lw	s1, 0xc(a0)
     406:      	srli	s6, a1, 0x18
     40a:      	srli	s7, a1, 0x10
     40e:      	srli	s8, a1, 0x8
     412:      	andi	a0, s0, 0x1
     416:      	sb	s4, 0x0(s1)
     41a:      	sb	s6, 0x3(s1)
     41e:      	sb	s7, 0x2(s1)
     422:      	sb	s8, 0x1(s1)
     426:      	sb	zero, 0x7(s1)
     42a:      	sb	zero, 0x6(s1)
     42e:      	sb	zero, 0x5(s1)
     432:      	sb	a0, 0x4(s1)
     436:      	li	a2, 0x2
     438:      	mv	a0, s3
     43a:      	li	a1, 0x0
     43c:      	mv	a3, s1
     43e:      	auipc	ra, 0x0
     442:      	jalr	ra <aot_func_internal#2+0x5e>
     446:      	andi	a0, a0, 0xff
     44a:      	beqz	a0, 0x45a <aot_func_internal#2+0x7a>
     44c:      	lw	a0, 0x0(s1)
     44e:      	addi	s0, s0, 0x1
     450:      	or	s5, a0, s5
     454:      	bne	s2, s0, 0x412 <aot_func_internal#2+0x32>
     458:      	j	0x45c <aot_func_internal#2+0x7c>
     45a:      	li	s5, 0x0
     45c:      	mv	a0, s5
     45e:      	lw	ra, 0x2c(sp)
     460:      	lw	s0, 0x28(sp)
     462:      	lw	s1, 0x24(sp)
     464:      	lw	s2, 0x20(sp)
     466:      	lw	s3, 0x1c(sp)
     468:      	lw	s4, 0x18(sp)
     46a:      	lw	s5, 0x14(sp)
     46c:      	lw	s6, 0x10(sp)
     46e:      	lw	s7, 0xc(sp)
     470:      	lw	s8, 0x8(sp)
     472:      	addi	sp, sp, 0x30
     474:      	ret

00000476 <aot_func#3>:
     476:      	addi	sp, sp, -0x10
     478:      	sw	ra, 0xc(sp)
     47a:      	mv	a6, a0
     47c:      	lui	a0, 0x0
     480:      	lw	a5, 0x0(a0)
     484:      	lw	a0, 0x8(a6)
     488:      	addi	a7, sp, 0x8
     48c:      	bltu	a7, a5, 0x4a8 <aot_func#3+0x32>
     490:      	lw	a6, 0x10(a6)
     494:      	sub	a5, a7, a5
     498:      	bltu	a5, a6, 0x4a8 <aot_func#3+0x32>
     49c:      	lw	ra, 0xc(sp)
     49e:      	addi	sp, sp, 0x10
     4a0:      	auipc	t1, 0x0
     4a4:      	jr	0x1c(t1) <aot_func_internal#3>
     4a8:      	li	a1, 0xb
     4aa:      	auipc	ra, 0x0
     4ae:      	jalr	ra <aot_func#3+0x34>
     4b2:      	li	a0, 0x0
     4b4:      	li	a1, 0x0
     4b6:      	lw	ra, 0xc(sp)
     4b8:      	addi	sp, sp, 0x10
     4ba:      	ret

000004bc <aot_func_internal#3>:
     4bc:      	addi	sp, sp, -0x20
     4be:      	sw	ra, 0x1c(sp)
     4c0:      	sw	s0, 0x18(sp)
     4c2:      	sw	s1, 0x14(sp)
     4c4:      	sw	s2, 0x10(sp)
     4c6:      	sw	s3, 0xc(sp)
     4c8:      	mv	s0, a2
     4ca:      	mv	s1, a1
     4cc:      	lui	a1, 0x80000
     4d0:      	xor	a1, a1, a2
     4d2:      	or	a1, a1, s1
     4d4:      	ori	a2, a3, 0x1
     4d8:      	bnez	a1, 0x4f4 <aot_func_internal#3+0x38>
     4da:      	and	a1, a2, a4
     4de:      	li	a3, -0x1
     4e0:      	bne	a1, a3, 0x4f4 <aot_func_internal#3+0x38>
     4e4:      	li	a1, 0x3
     4e6:      	auipc	ra, 0x0
     4ea:      	jalr	ra <aot_func_internal#3+0x2a>
     4ee:      	li	a0, 0x0
     4f0:      	li	a1, 0x0
     4f2:      	j	0x520 <aot_func_internal#3+0x64>
     4f4:      	mv	a0, s1
     4f6:      	mv	a1, s0
     4f8:      	mv	a3, a4
     4fa:      	auipc	ra, 0x0
     4fe:      	jalr	ra <aot_func_internal#3+0x3e>
     502:      	mv	s2, a0
     504:      	mv	s3, a1
     506:      	li	a2, 0x7
     508:      	mv	a0, s1
     50a:      	mv	a1, s0
     50c:      	li	a3, 0x0
     50e:      	auipc	ra, 0x0
     512:      	jalr	ra <aot_func_internal#3+0x52>
     516:      	add	a1, a1, s3
     518:      	add	a0, a0, s2
     51a:      	sltu	a2, a0, s2
     51e:      	add	a1, a1, a2
     520:      	lw	ra, 0x1c(sp)
     522:      	lw	s0, 0x18(sp)
     524:      	lw	s1, 0x14(sp)
     526:      	lw	s2, 0x10(sp)
     528:      	lw	s3, 0xc(sp)
     52a:      	addi	sp, sp, 0x20
     52c:      	ret

0000052e <aot_func#4>:
     52e:      	addi	sp, sp, -0x10
     530:      	sw	ra, 0xc(sp)
     532:      	lui	a3, 0x0
     536:      	lw	a3, 0x0(a3)
     53a:      	addi	a4, sp, 0x8
     53c:      	bltu	a4, a3, 0x558 <aot_func#4+0x2a>
     540:      	lw	a5, 0x10(a0)
     542:      	sub	a4, a4, a3
     544:      	bltu	a4, a5, 0x558 <aot_func#4+0x2a>
     548:      	mv	a0, a1
     54a:      	mv	a1, a2
     54c:      	lw	ra, 0xc(sp)
     54e:      	addi	sp, sp, 0x10
     550:      	auipc	t1, 0x0
     554:      	jr	0x1c(t1) <aot_func_internal#4>
     558:      	lw	a0, 0x8(a0)
     55a:      	li	a1, 0xb
     55c:      	auipc	ra, 0x0
     560:      	jalr	ra <aot_func#4+0x2e>
     564:      	li	a0, 0x0
     566:      	lw	ra, 0xc(sp)
     568:      	addi	sp, sp, 0x10
     56a:      	ret

0000056c <aot_func_internal#4>:
     56c:      	addi	sp, sp, -0x10
     56e:      	sw	ra, 0xc(sp)
     570:      	sw	s0, 0x8(sp)
     572:      	sw	s1, 0x4(sp)
     574:      	sw	s2, 0x0(sp)
     576:      	mv	s0, a1
     578:      	mv	s1, a0
     57a:      	auipc	ra, 0x0
     57e:      	jalr	ra <aot_func_internal#4+0xe>
     582:      	mv	s2, a0
     584:      	lui	a1, 0x3f800
     588:      	mv	a0, s0
     58a:      	auipc	ra, 0x0
     58e:      	jalr	ra <aot_func_internal#4+0x1e>
     592:      	mv	a1, a0
     594:      	mv	a0, s1
     596:      	auipc	ra, 0x0
     59a:      	jalr	ra <aot_func_internal#4+0x2a>
     59e:      	mv	a1, a0
     5a0:      	mv	a0, s2
     5a2:      	auipc	ra, 0x0
     5a6:      	jalr	ra <aot_func_internal#4+0x36>
     5aa:      	lw	ra, 0xc(sp)
     5ac:      	lw	s0, 0x8(sp)
     5ae:      	lw	s1, 0x4(sp)
     5b0:      	lw	s2, 0x0(sp)
     5b2:      	addi	sp, sp, 0x10
     5b4:      	ret

000005b6 <aot_func#5>:
     5b6:      	addi	sp, sp, -0x10
     5b8:      	sw	ra, 0xc(sp)
     5ba:      	lui	a2, 0x0
     5be:      	lw	a2, 0x0(a2)
     5c2:      	addi	a3, sp, 0x8
     5c4:      	bltu	a3, a2, 0x5dc <aot_func#5+0x26>
     5c8:      	lw	a4, 0x10(a0)
     5ca:      	sub	a3, a3, a2
     5cc:      	bltu	a3, a4, 0x5dc <aot_func#5+0x26>
     5d0:      	lw	ra, 0xc(sp)
     5d2:      	addi	sp, sp, 0x10
     5d4:      	auipc	t1, 0x0
     5d8:      	jr	0x1c(t1) <aot_func_internal#5>
     5dc:      	lw	a0, 0x8(a0)
     5de:      	li	a1, 0xb
     5e0:      	auipc	ra, 0x0
     5e4:      	jalr	ra <aot_func#5+0x2a>
     5e8:      	li	a0, 0x0
     5ea:      	lw	ra, 0xc(sp)
     5ec:      	addi	sp, sp, 0x10
     5ee:      	ret

000005f0 <aot_func_internal#5>:
     5f0:      	li	a2, 0x2
     5f2:      	blt	a1, a2, 0x640 <aot_func_internal#5+0x50>
     5f6:      	addi	sp, sp, -0x20
     5f8:      	sw	ra, 0x1c(sp)
     5fa:      	sw	s0, 0x18(sp)
     5fc:      	sw	s1, 0x14(sp)
     5fe:      	sw	s2, 0x10(sp)
     600:      	sw	s3, 0xc(sp)
     602:      	sw	s4, 0x8(sp)
     604:      	mv	s4, a0
     606:      	lw	s2, 0x8(a0)
     60a:      	li	s1, 0x0
     60c:      	li	s3, 0x3
     60e:      	mv	s0, a1
     610:      	addi	a1, a1, -0x1
     612:      	mv	a0, s4
     614:      	auipc	ra, 0x0
     618:      	jalr	ra <aot_func_internal#5+0x24>
     61c:      	lbu	a1, 0x68(s2)
     620:      	bnez	a1, 0x630 <aot_func_internal#5+0x40>
     622:      	add	s1, s1, a0
     624:      	addi	a1, s0, -0x2
     628:      	bltu	s3, s0, 0x60e <aot_func_internal#5+0x1e>
     62c:      	add	a1, a1, s1
     62e:      	j	0x632 <aot_func_internal#5+0x42>
     630:      	li	a1, 0x0
     632:      	lw	ra, 0x1c(sp)
     634:      	lw	s0, 0x18(sp)
     636:      	lw	s1, 0x14(sp)
     638:      	lw	s2, 0x10(sp)
     63a:      	lw	s3, 0xc(sp)
     63c:      	lw	s4, 0x8(sp)
     63e:      	addi	sp, sp, 0x20
     640:      	mv	a0, a1
     642:      	ret

00000644 <aot_func#6>:
     644:      	addi	sp, sp, -0x10
     646:      	sw	ra, 0xc(sp)
     648:      	lui	a2, 0x0
     64c:      	lw	a2, 0x0(a2)
     650:      	addi	a3, sp, 0x8
     652:      	bltu	a3, a2, 0x66c <aot_func#6+0x28>
     656:      	lw	a4, 0x10(a0)
     658:      	sub	a3, a3, a2
     65a:      	bltu	a3, a4, 0x66c <aot_func#6+0x28>
     65e:      	mv	a0, a1
     660:      	lw	ra, 0xc(sp)
     662:      	addi	sp, sp, 0x10
     664:      	auipc	t1, 0x0
     668:      	jr	0x1c(t1) <aot_func_internal#6>
     66c:      	lw	a0, 0x8(a0)
     66e:      	li	a1, 0xb
     670:      	auipc	ra, 0x0
     674:      	jalr	ra <aot_func#6+0x2c>
     678:      	li	a0, 0x0
     67a:      	lw	ra, 0xc(sp)
     67c:      	addi	sp, sp, 0x10
     67e:      	ret

00000680 <aot_func_internal#6>:
     680:      	blez	a0, 0x6cc <aot_func_internal#6+0x4c>
     684:      	addi	a1, a0, -0x1
     688:      	addi	a2, a0, -0x2
     68c:      	mul	a3, a1, a2
     690:      	mulhu	a1, a1, a2
     694:      	addi	a2, a0, -0x3
     698:      	mul	a4, a1, a2
     69c:      	mulhu	a5, a3, a2
     6a0:      	add	a4, a4, a5
     6a2:      	mul	a2, a3, a2
     6a6:      	slli	a4, a4, 0x1f
     6a8:      	srli	a2, a2, 0x1
     6aa:      	or	a2, a2, a4
     6ac:      	lui	a4, 0x55555
     6b0:      	addi	a4, a4, 0x556
     6b4:      	mul	a2, a2, a4
     6b8:      	slli	a1, a1, 0x1f
     6ba:      	srli	a4, a3, 0x1
     6be:      	or	a1, a1, a4
     6c0:      	andi	a3, a3, -0x2
     6c2:      	add	a1, a1, a3
     6c4:      	add	a0, a0, a1
     6c6:      	add	a0, a0, a2
     6c8:      	addi	a0, a0, -0x1
     6ca:      	ret
     6cc:      	li	a0, 0x0
     6ce:      	ret
