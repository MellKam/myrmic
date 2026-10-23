
v_xip_unal_nobc.o:	file format elf32-littleriscv

Disassembly of section .text:

00000000 <aot_func#0>:
       0:      	addi	sp, sp, -0x10
       2:      	sw	ra, 0xc(sp)
       4:      	sw	s0, 0x8(sp)
       6:      	sw	s1, 0x4(sp)
       8:      	sw	s2, 0x0(sp)
       a:      	lw	t3, 0x20(a0)
       e:      	lw	t4, 0x0(t3)
      12:      	bge	t4, a2, 0x56 <aot_func#0+0x56>
      16:      	lw	a0, 0x8(a0)
      18:      	lw	a6, 0x178(a0)
      1c:      	lw	a7, 0x8(t3)
      20:      	lw	t0, 0x4(t3)
      24:      	bgeu	a2, a7, 0x5a <aot_func#0+0x5a>
      28:      	li	t1, 0x0
      2a:      	li	a3, 0x0
      2c:      	and	a2, t0, a2
      30:      	beqz	a2, 0xcc <aot_func#0+0xcc>
      32:      	lw	a4, 0x20(t3)
      36:      	sll	a4, t1, a4
      3a:      	add	a1, a1, t4
      3c:      	add	a1, a1, a4
      3e:      	bltu	a1, t4, 0xc2 <aot_func#0+0xc2>
      42:      	add	a4, a6, a1
      46:      	lw	a4, 0x0(a4)
      48:      	lw	a5, 0x24(t3)
      4c:      	add	a3, a3, a4
      4e:      	sub	a2, a2, a5
      50:      	add	a1, a1, a7
      52:      	bnez	a2, 0x3e <aot_func#0+0x3e>
      54:      	j	0xcc <aot_func#0+0xcc>
      56:      	mv	a3, t4
      58:      	j	0xcc <aot_func#0+0xcc>
      5a:      	lw	a3, 0xc(t3)
      5e:      	lw	t2, 0x10(t3)
      62:      	and	t1, a3, a2
      66:      	li	a3, 0x0
      68:      	mv	t5, t1
      6a:      	mv	a5, a1
      6c:      	add	a4, a5, t2
      70:      	add	a4, a4, t4
      72:      	bltu	a4, t4, 0xc2 <aot_func#0+0xc2>
      76:      	lw	s1, 0x18(t3)
      7a:      	add	t6, a5, s1
      7e:      	add	t6, t6, t4
      80:      	bltu	t6, t4, 0xc2 <aot_func#0+0xc2>
      84:      	add	s0, a5, a7
      88:      	add	s0, s0, t4
      8a:      	bltu	s0, t4, 0xc2 <aot_func#0+0xc2>
      8e:      	add	s1, t4, a5
      92:      	bltu	s1, t4, 0xc2 <aot_func#0+0xc2>
      96:      	add	a4, a4, a6
      98:      	lw	s2, 0x0(a4)
      9c:      	add	s0, s0, a6
      9e:      	add	s1, s1, a6
      a0:      	lw	s1, 0x0(s1)
      a2:      	lw	s0, 0x0(s0)
      a4:      	add	t6, t6, a6
      a6:      	lw	a4, 0x0(t6)
      aa:      	add	a3, a3, s1
      ac:      	add	a3, a3, s0
      ae:      	lw	s1, 0x1c(t3)
      b2:      	add	a3, a3, s2
      b4:      	add	a3, a3, a4
      b6:      	sub	t5, t5, a7
      ba:      	add	a5, a5, s1
      bc:      	bnez	t5, 0x6c <aot_func#0+0x6c>
      c0:      	j	0x2c <aot_func#0+0x2c>
      c2:      	lw	a2, 0x14(t3)
      c6:      	li	a1, 0x2
      c8:      	jalr	a2
      ca:      	li	a3, 0x0
      cc:      	mv	a0, a3
      ce:      	lw	ra, 0xc(sp)
      d0:      	lw	s0, 0x8(sp)
      d2:      	lw	s1, 0x4(sp)
      d4:      	lw	s2, 0x0(sp)
      d6:      	addi	sp, sp, 0x10
      d8:      	ret

000000da <aot_func#1>:
      da:      	lw	t6, 0x20(a0)
      de:      	lw	a5, 0x0(t6)
      e2:      	bge	a5, a2, 0x136 <aot_func#1+0x5c>
      e6:      	lw	a0, 0x8(a0)
      e8:      	lw	t0, 0x178(a0)
      ec:      	lw	a5, 0x8(t6)
      f0:      	lw	a6, 0x4(t6)
      f4:      	bgeu	a2, a5, 0x138 <aot_func#1+0x5e>
      f8:      	li	a7, 0x0
      fa:      	and	a2, a6, a2
      fe:      	beqz	a2, 0x136 <aot_func#1+0x5c>
     100:      	lw	a5, 0x20(t6)
     104:      	sll	a5, a7, a5
     108:      	add	a1, a1, a5
     10a:      	lw	a4, 0x0(t6)
     10e:      	add	a5, a4, a1
     112:      	bltu	a5, a4, 0x1ea <aot_func#1+0x110>
     116:      	add	a5, a5, t0
     118:      	lw	a6, 0x0(a5)
     11c:      	lw	a7, 0x24(t6)
     120:      	mul	a4, a6, a3
     124:      	add	a4, a4, a7
     126:      	sw	a4, 0x0(a5)
     128:      	lw	a4, 0x24(t6)
     12c:      	lw	a5, 0x8(t6)
     130:      	sub	a2, a2, a4
     132:      	add	a1, a1, a5
     134:      	bnez	a2, 0x10a <aot_func#1+0x30>
     136:      	ret
     138:      	lw	a5, 0xc(t6)
     13c:      	li	t1, 0x0
     13e:      	and	a7, a5, a2
     142:      	mv	t2, a1
     144:      	lw	t3, 0x0(t6)
     148:      	add	a5, t3, t2
     14c:      	bltu	a5, t3, 0x1ea <aot_func#1+0x110>
     150:      	add	t5, t0, a5
     154:      	lw	t3, 0x0(t5)
     158:      	lw	t4, 0x24(t6)
     15c:      	mul	a5, t3, a3
     160:      	add	a5, a5, t4
     162:      	sw	a5, 0x0(t5)
     166:      	lw	a5, 0x8(t6)
     16a:      	lw	t3, 0x0(t6)
     16e:      	add	a5, a5, t2
     170:      	add	a5, a5, t3
     172:      	bltu	a5, t3, 0x1ea <aot_func#1+0x110>
     176:      	add	t5, t0, a5
     17a:      	lw	t3, 0x0(t5)
     17e:      	lw	t4, 0x24(t6)
     182:      	mul	a5, t3, a3
     186:      	add	a5, a5, t4
     188:      	sw	a5, 0x0(t5)
     18c:      	lw	a5, 0x18(t6)
     190:      	lw	t3, 0x0(t6)
     194:      	add	a5, a5, t2
     196:      	add	a5, a5, t3
     198:      	bltu	a5, t3, 0x1ea <aot_func#1+0x110>
     19c:      	add	t5, t0, a5
     1a0:      	lw	t3, 0x0(t5)
     1a4:      	lw	t4, 0x24(t6)
     1a8:      	mul	a5, t3, a3
     1ac:      	add	a5, a5, t4
     1ae:      	sw	a5, 0x0(t5)
     1b2:      	lw	a5, 0x10(t6)
     1b6:      	lw	t3, 0x0(t6)
     1ba:      	add	a5, a5, t2
     1bc:      	add	a5, a5, t3
     1be:      	bltu	a5, t3, 0x1ea <aot_func#1+0x110>
     1c2:      	add	t5, t0, a5
     1c6:      	lw	t3, 0x0(t5)
     1ca:      	lw	t4, 0x24(t6)
     1ce:      	mul	a5, t3, a3
     1d2:      	add	a5, a5, t4
     1d4:      	sw	a5, 0x0(t5)
     1d8:      	lw	a5, 0x8(t6)
     1dc:      	lw	t3, 0x1c(t6)
     1e0:      	add	t1, t1, a5
     1e2:      	add	t2, t2, t3
     1e4:      	bne	a7, t1, 0x144 <aot_func#1+0x6a>
     1e8:      	j	0xfa <aot_func#1+0x20>
     1ea:      	lw	a5, 0x14(t6)
     1ee:      	li	a1, 0x2
     1f0:      	jr	a5

000001f2 <aot_func#2>:
     1f2:      	addi	sp, sp, -0x20
     1f4:      	sw	ra, 0x1c(sp)
     1f6:      	sw	s0, 0x18(sp)
     1f8:      	sw	s1, 0x14(sp)
     1fa:      	sw	s2, 0x10(sp)
     1fc:      	sw	s3, 0xc(sp)
     1fe:      	sw	s4, 0x8(sp)
     200:      	sw	s5, 0x4(sp)
     202:      	sw	s6, 0x0(sp)
     204:      	mv	s3, a0
     206:      	lw	s5, 0x20(a0)
     20a:      	lw	a0, 0x0(s5)
     20e:      	bge	a0, a2, 0x24c <aot_func#2+0x5a>
     212:      	mv	s4, a2
     214:      	mv	s2, a1
     216:      	lw	s6, 0xc(s3)
     21a:      	li	s1, 0x0
     21c:      	li	s0, 0x0
     21e:      	lw	a0, 0x24(s5)
     222:      	lw	a4, 0x28(s5)
     226:      	and	a0, a0, s0
     228:      	sw	s2, 0x0(s6)
     22c:      	sw	a0, 0x4(s6)
     230:      	li	a2, 0x2
     232:      	mv	a0, s3
     234:      	li	a1, 0x0
     236:      	mv	a3, s6
     238:      	jalr	a4
     23a:      	lw	a0, 0x24(s5)
     23e:      	lw	a1, 0x0(s6)
     242:      	add	s0, s0, a0
     244:      	or	s1, s1, a1
     246:      	bne	s0, s4, 0x21e <aot_func#2+0x2c>
     24a:      	j	0x24e <aot_func#2+0x5c>
     24c:      	li	s1, 0x0
     24e:      	mv	a0, s1
     250:      	lw	ra, 0x1c(sp)
     252:      	lw	s0, 0x18(sp)
     254:      	lw	s1, 0x14(sp)
     256:      	lw	s2, 0x10(sp)
     258:      	lw	s3, 0xc(sp)
     25a:      	lw	s4, 0x8(sp)
     25c:      	lw	s5, 0x4(sp)
     25e:      	lw	s6, 0x0(sp)
     260:      	addi	sp, sp, 0x20
     262:      	ret

00000264 <aot_func#3>:
     264:      	addi	sp, sp, -0x20
     266:      	sw	ra, 0x1c(sp)
     268:      	sw	s0, 0x18(sp)
     26a:      	sw	s1, 0x14(sp)
     26c:      	sw	s2, 0x10(sp)
     26e:      	sw	s3, 0xc(sp)
     270:      	mv	s0, a2
     272:      	mv	s1, a1
     274:      	lw	s2, 0x20(a0)
     278:      	lui	a1, 0x80000
     27c:      	xor	a1, a1, a2
     27e:      	or	a1, a1, s1
     280:      	ori	a2, a3, 0x1
     284:      	bnez	a1, 0x2a0 <aot_func#3+0x3c>
     286:      	and	a1, a2, a4
     28a:      	li	a3, -0x1
     28c:      	bne	a1, a3, 0x2a0 <aot_func#3+0x3c>
     290:      	lw	a0, 0x8(a0)
     292:      	lw	a2, 0x14(s2)
     296:      	li	a1, 0x3
     298:      	jalr	a2
     29a:      	li	a0, 0x0
     29c:      	li	a1, 0x0
     29e:      	j	0x2c8 <aot_func#3+0x64>
     2a0:      	lw	a5, 0x2c(s2)
     2a4:      	mv	a0, s1
     2a6:      	mv	a1, s0
     2a8:      	mv	a3, a4
     2aa:      	jalr	a5
     2ac:      	lw	a4, 0x30(s2)
     2b0:      	mv	s2, a0
     2b2:      	mv	s3, a1
     2b4:      	li	a2, 0x7
     2b6:      	mv	a0, s1
     2b8:      	mv	a1, s0
     2ba:      	li	a3, 0x0
     2bc:      	jalr	a4
     2be:      	add	a1, a1, s3
     2c0:      	add	a0, a0, s2
     2c2:      	sltu	a2, a0, s2
     2c6:      	add	a1, a1, a2
     2c8:      	lw	ra, 0x1c(sp)
     2ca:      	lw	s0, 0x18(sp)
     2cc:      	lw	s1, 0x14(sp)
     2ce:      	lw	s2, 0x10(sp)
     2d0:      	lw	s3, 0xc(sp)
     2d2:      	addi	sp, sp, 0x20
     2d4:      	ret

000002d6 <aot_func#4>:
     2d6:      	addi	sp, sp, -0x20
     2d8:      	sw	ra, 0x1c(sp)
     2da:      	sw	s0, 0x18(sp)
     2dc:      	sw	s1, 0x14(sp)
     2de:      	sw	s2, 0x10(sp)
     2e0:      	sw	s3, 0xc(sp)
     2e2:      	lw	s1, 0x20(a0)
     2e4:      	lw	a3, 0x34(s1)
     2e6:      	mv	s0, a2
     2e8:      	mv	s3, a1
     2ea:      	mv	a0, a1
     2ec:      	mv	a1, a2
     2ee:      	jalr	a3
     2f0:      	lw	a2, 0x38(s1)
     2f2:      	mv	s2, a0
     2f4:      	lui	a1, 0x3f800
     2f8:      	mv	a0, s0
     2fa:      	jalr	a2
     2fc:      	lw	a2, 0x3c(s1)
     2fe:      	mv	a1, a0
     300:      	mv	a0, s3
     302:      	jalr	a2
     304:      	lw	a5, 0x38(s1)
     306:      	mv	a1, a0
     308:      	mv	a0, s2
     30a:      	lw	ra, 0x1c(sp)
     30c:      	lw	s0, 0x18(sp)
     30e:      	lw	s1, 0x14(sp)
     310:      	lw	s2, 0x10(sp)
     312:      	lw	s3, 0xc(sp)
     314:      	addi	sp, sp, 0x20
     316:      	jr	a5

00000318 <aot_func#5>:
     318:      	addi	sp, sp, -0x20
     31a:      	sw	ra, 0x1c(sp)
     31c:      	sw	s0, 0x18(sp)
     31e:      	sw	s1, 0x14(sp)
     320:      	sw	s2, 0x10(sp)
     322:      	sw	s3, 0xc(sp)
     324:      	sw	s4, 0x8(sp)
     326:      	mv	s3, a0
     328:      	lw	s4, 0x20(a0)
     32c:      	lw	a2, 0x20(s4)
     330:      	mv	a0, a1
     332:      	blt	a1, a2, 0x366 <aot_func#5+0x4e>
     336:      	lw	a1, 0x8(s3)
     33a:      	lw	s2, 0x28(a1)
     33e:      	li	s0, 0x0
     340:      	lw	a1, 0x24(s4)
     344:      	lw	a2, 0x18(s2)
     348:      	mv	s1, a0
     34a:      	sub	a1, a0, a1
     34e:      	mv	a0, s3
     350:      	jalr	a2
     352:      	lw	a1, 0x4(s4)
     356:      	lw	a2, 0x20(s4)
     35a:      	add	s0, s0, a0
     35c:      	sub	a0, s1, a2
     360:      	bltu	a1, s1, 0x340 <aot_func#5+0x28>
     364:      	add	a0, a0, s0
     366:      	lw	ra, 0x1c(sp)
     368:      	lw	s0, 0x18(sp)
     36a:      	lw	s1, 0x14(sp)
     36c:      	lw	s2, 0x10(sp)
     36e:      	lw	s3, 0xc(sp)
     370:      	lw	s4, 0x8(sp)
     372:      	addi	sp, sp, 0x20
     374:      	ret

00000376 <aot_func#6>:
     376:      	lw	a0, 0x20(a0)
     378:      	lw	a2, 0x0(a0)
     37a:      	bge	a2, a1, 0x392 <aot_func#6+0x1c>
     37e:      	lw	a2, 0x24(a0)
     380:      	li	a3, 0x0
     382:      	li	a0, 0x0
     384:      	mul	a4, a3, a3
     388:      	add	a3, a3, a2
     38a:      	add	a0, a0, a4
     38c:      	bne	a1, a3, 0x384 <aot_func#6+0xe>
     390:      	ret
     392:      	li	a0, 0x0
     394:      	ret
