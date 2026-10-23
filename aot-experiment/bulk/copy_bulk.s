
copy_bulk.o:	file format elf32-littleriscv

Disassembly of section .text:

00000000 <aot_func#0>:
       0:      	addi	sp, sp, -0x10
       2:      	sw	ra, 0xc(sp)
       4:      	mv	a5, a0
       6:      	lw	a0, 0x8(a0)
       8:      	lw	a4, 0x1d0(a0)
       c:      	lw	a4, 0x0(a4)
       e:      	lw	a7, 0x20(a5)
      12:      	addi	t0, sp, 0x8
      16:      	bltu	t0, a4, 0x3a <aot_func#0+0x3a>
      1a:      	mv	a6, a3
      1c:      	mv	a3, a2
      1e:      	mv	a2, a1
      20:      	lw	a1, 0x10(a5)
      22:      	sub	a4, t0, a4
      26:      	bltu	a4, a1, 0x3a <aot_func#0+0x3a>
      2a:      	mv	a1, a7
      2c:      	mv	a4, a6
      2e:      	lw	ra, 0xc(sp)
      30:      	addi	sp, sp, 0x10
      32:      	auipc	t1, 0x0
      36:      	jr	0x16(t1) <aot_func_internal#0>
      3a:      	lw	a2, 0x0(a7)
      3e:      	li	a1, 0xb
      40:      	jalr	a2
      42:      	lw	ra, 0xc(sp)
      44:      	addi	sp, sp, 0x10
      46:      	ret

00000048 <aot_func_internal#0>:
      48:      	add	a7, a3, a4
      4c:      	sltu	a6, a7, a3
      50:      	snez	a5, a7
      54:      	and	a5, a6, a5
      58:      	bnez	a5, 0x9c <aot_func_internal#0+0x54>
      5a:      	lw	a6, 0x170(a0)
      5e:      	lw	a5, 0x174(a0)
      62:      	sltu	t0, a6, a7
      66:      	seqz	a7, a5
      6a:      	and	a5, a7, t0
      6e:      	bnez	a5, 0x9c <aot_func_internal#0+0x54>
      70:      	add	t1, a2, a4
      74:      	sltu	t0, t1, a2
      78:      	snez	a5, t1
      7c:      	and	a5, t0, a5
      80:      	bnez	a5, 0x9c <aot_func_internal#0+0x54>
      82:      	sltu	a5, a6, t1
      86:      	and	a5, a7, a5
      8a:      	bnez	a5, 0x9c <aot_func_internal#0+0x54>
      8c:      	lw	a0, 0x178(a0)
      90:      	lw	a5, 0x4(a1)
      92:      	add	a1, a0, a3
      96:      	add	a0, a0, a2
      98:      	mv	a2, a4
      9a:      	jr	a5
      9c:      	lw	a5, 0x0(a1)
      9e:      	li	a1, 0x2
      a0:      	jr	a5

000000a2 <aot_func#1>:
      a2:      	addi	sp, sp, -0x10
      a4:      	sw	ra, 0xc(sp)
      a6:      	mv	a5, a0
      a8:      	lw	a0, 0x8(a0)
      aa:      	lw	a4, 0x1d0(a0)
      ae:      	lw	a4, 0x4(a4)
      b0:      	lw	a7, 0x20(a5)
      b4:      	addi	t0, sp, 0x8
      b8:      	bltu	t0, a4, 0xdc <aot_func#1+0x3a>
      bc:      	mv	a6, a3
      be:      	mv	a3, a2
      c0:      	mv	a2, a1
      c2:      	lw	a1, 0x10(a5)
      c4:      	sub	a4, t0, a4
      c8:      	bltu	a4, a1, 0xdc <aot_func#1+0x3a>
      cc:      	mv	a1, a7
      ce:      	mv	a4, a6
      d0:      	lw	ra, 0xc(sp)
      d2:      	addi	sp, sp, 0x10
      d4:      	auipc	t1, 0x0
      d8:      	jr	0x16(t1) <aot_func_internal#1>
      dc:      	lw	a2, 0x0(a7)
      e0:      	li	a1, 0xb
      e2:      	jalr	a2
      e4:      	lw	ra, 0xc(sp)
      e6:      	addi	sp, sp, 0x10
      e8:      	ret

000000ea <aot_func_internal#1>:
      ea:      	addi	sp, sp, -0x10
      ec:      	sw	s0, 0xc(sp)
      ee:      	sw	s1, 0x8(sp)
      f0:      	sw	s2, 0x4(sp)
      f2:      	beqz	a4, 0x168 <aot_func_internal#1+0x7e>
      f4:      	lw	a6, 0x178(a0)
      f8:      	lw	t3, 0x1b8(a0)
      fc:      	lw	a5, 0xc(a1)
      fe:      	lw	a7, 0x8(a1)
     102:      	bgeu	a4, a5, 0x172 <aot_func_internal#1+0x88>
     106:      	li	t0, 0x0
     108:      	and	a7, a7, a4
     10c:      	beqz	a7, 0x168 <aot_func_internal#1+0x7e>
     110:      	lw	a4, 0x24(a1)
     112:      	sll	s1, t0, a4
     116:      	add	a3, a3, s1
     118:      	add	s1, s1, a2
     11a:      	lw	a2, 0x14(a1)
     11c:      	add	a5, a2, a3
     120:      	bltu	a5, a2, 0x29c <aot_func_internal#1+0x1b2>
     124:      	bltu	t3, a5, 0x29c <aot_func_internal#1+0x1b2>
     128:      	add	a4, a2, s1
     12c:      	bltu	a4, a2, 0x29c <aot_func_internal#1+0x1b2>
     130:      	bltu	t3, a4, 0x29c <aot_func_internal#1+0x1b2>
     134:      	add	a5, a5, a6
     136:      	lbu	t0, 0x1(a5)
     13a:      	lbu	s0, 0x2(a5)
     13e:      	lbu	a2, 0x3(a5)
     142:      	lbu	a5, 0x0(a5)
     146:      	add	a4, a4, a6
     148:      	sb	s0, 0x2(a4)
     14c:      	sb	a2, 0x3(a4)
     150:      	sb	a5, 0x0(a4)
     154:      	sb	t0, 0x1(a4)
     158:      	lw	a2, 0xc(a1)
     15a:      	lw	a4, 0x28(a1)
     15c:      	add	a3, a3, a2
     15e:      	sub	a7, a7, a4
     162:      	add	s1, s1, a2
     164:      	bnez	a7, 0x11a <aot_func_internal#1+0x30>
     168:      	lw	s0, 0xc(sp)
     16a:      	lw	s1, 0x8(sp)
     16c:      	lw	s2, 0x4(sp)
     16e:      	addi	sp, sp, 0x10
     170:      	ret
     172:      	lw	a5, 0x10(a1)
     174:      	lw	t1, 0x14(a1)
     178:      	li	t2, 0x0
     17a:      	and	t0, a5, a4
     17e:      	lw	s0, 0x14(a1)
     180:      	add	t5, t1, a3
     184:      	add	a5, s0, t5
     188:      	bltu	a5, s0, 0x29c <aot_func_internal#1+0x1b2>
     18c:      	bltu	t3, a5, 0x29c <aot_func_internal#1+0x1b2>
     190:      	add	t4, t1, a2
     194:      	add	t6, s0, t4
     198:      	bltu	t6, s0, 0x29c <aot_func_internal#1+0x1b2>
     19c:      	bltu	t3, t6, 0x29c <aot_func_internal#1+0x1b2>
     1a0:      	add	a5, a5, a6
     1a2:      	lbu	s2, 0x1(a5)
     1a6:      	lbu	s1, 0x2(a5)
     1aa:      	lbu	s0, 0x3(a5)
     1ae:      	lbu	a5, 0x0(a5)
     1b2:      	add	t6, t6, a6
     1b4:      	sb	s1, 0x2(t6)
     1b8:      	sb	s0, 0x3(t6)
     1bc:      	sb	a5, 0x0(t6)
     1c0:      	sb	s2, 0x1(t6)
     1c4:      	lw	s0, 0xc(a1)
     1c6:      	lw	s1, 0x14(a1)
     1c8:      	add	a5, t5, s0
     1cc:      	add	a5, a5, s1
     1ce:      	bltu	a5, s1, 0x29c <aot_func_internal#1+0x1b2>
     1d2:      	bltu	t3, a5, 0x29c <aot_func_internal#1+0x1b2>
     1d6:      	add	t6, t4, s0
     1da:      	add	t6, t6, s1
     1dc:      	bltu	t6, s1, 0x29c <aot_func_internal#1+0x1b2>
     1e0:      	bltu	t3, t6, 0x29c <aot_func_internal#1+0x1b2>
     1e4:      	add	a5, a5, a6
     1e6:      	lbu	s2, 0x1(a5)
     1ea:      	lbu	s1, 0x2(a5)
     1ee:      	lbu	s0, 0x3(a5)
     1f2:      	lbu	a5, 0x0(a5)
     1f6:      	add	t6, t6, a6
     1f8:      	sb	s1, 0x2(t6)
     1fc:      	sb	s0, 0x3(t6)
     200:      	sb	a5, 0x0(t6)
     204:      	sb	s2, 0x1(t6)
     208:      	lw	s1, 0x18(a1)
     20a:      	lw	s0, 0x14(a1)
     20c:      	add	a5, t5, s1
     210:      	add	a5, a5, s0
     212:      	bltu	a5, s0, 0x29c <aot_func_internal#1+0x1b2>
     216:      	bltu	t3, a5, 0x29c <aot_func_internal#1+0x1b2>
     21a:      	add	t6, t4, s1
     21e:      	add	t6, t6, s0
     220:      	bltu	t6, s0, 0x29c <aot_func_internal#1+0x1b2>
     224:      	bltu	t3, t6, 0x29c <aot_func_internal#1+0x1b2>
     228:      	add	a5, a5, a6
     22a:      	lbu	s2, 0x1(a5)
     22e:      	lbu	s1, 0x2(a5)
     232:      	lbu	s0, 0x3(a5)
     236:      	lbu	a5, 0x0(a5)
     23a:      	add	t6, t6, a6
     23c:      	sb	s1, 0x2(t6)
     240:      	sb	s0, 0x3(t6)
     244:      	sb	a5, 0x0(t6)
     248:      	sb	s2, 0x1(t6)
     24c:      	lw	s1, 0x1c(a1)
     24e:      	lw	a5, 0x14(a1)
     250:      	add	t5, t5, s1
     252:      	add	s0, a5, t5
     256:      	bltu	s0, a5, 0x29c <aot_func_internal#1+0x1b2>
     25a:      	bltu	t3, s0, 0x29c <aot_func_internal#1+0x1b2>
     25e:      	add	t4, t4, s1
     260:      	add	t4, t4, a5
     262:      	bltu	t4, a5, 0x29c <aot_func_internal#1+0x1b2>
     266:      	bltu	t3, t4, 0x29c <aot_func_internal#1+0x1b2>
     26a:      	add	s0, s0, a6
     26c:      	lbu	t5, 0x1(s0)
     270:      	lbu	s1, 0x2(s0)
     274:      	lbu	a5, 0x3(s0)
     278:      	lbu	s0, 0x0(s0)
     27c:      	add	t4, t4, a6
     27e:      	sb	s1, 0x2(t4)
     282:      	sb	a5, 0x3(t4)
     286:      	sb	s0, 0x0(t4)
     28a:      	sb	t5, 0x1(t4)
     28e:      	lw	a5, 0xc(a1)
     290:      	lw	s1, 0x20(a1)
     292:      	add	t2, t2, a5
     294:      	add	t1, t1, s1
     296:      	bne	t0, t2, 0x17e <aot_func_internal#1+0x94>
     29a:      	j	0x108 <aot_func_internal#1+0x1e>
     29c:      	lw	a5, 0x0(a1)
     29e:      	li	a1, 0x2
     2a0:      	lw	s0, 0xc(sp)
     2a2:      	lw	s1, 0x8(sp)
     2a4:      	lw	s2, 0x4(sp)
     2a6:      	addi	sp, sp, 0x10
     2a8:      	jr	a5
