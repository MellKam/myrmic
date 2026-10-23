
copy_mvp.o:	file format elf32-littleriscv

Disassembly of section .text:

00000000 <aot_func#0>:
       0:      	addi	sp, sp, -0x10
       2:      	sw	ra, 0xc(sp)
       4:      	mv	a4, a0
       6:      	lw	a0, 0x8(a0)
       8:      	lw	a5, 0x1d0(a0)
       c:      	lw	a5, 0x0(a5)
       e:      	addi	a6, sp, 0x8
      12:      	bltu	a6, a5, 0x30 <aot_func#0+0x30>
      16:      	lw	a7, 0x10(a4)
      1a:      	sub	a5, a6, a5
      1e:      	bltu	a5, a7, 0x30 <aot_func#0+0x30>
      22:      	mv	a0, a4
      24:      	lw	ra, 0xc(sp)
      26:      	addi	sp, sp, 0x10
      28:      	auipc	t1, 0x0
      2c:      	jr	0x16(t1) <aot_func_internal#0>
      30:      	lw	a1, 0x20(a4)
      32:      	lw	a2, 0x0(a1)
      34:      	li	a1, 0xb
      36:      	jalr	a2
      38:      	lw	ra, 0xc(sp)
      3a:      	addi	sp, sp, 0x10
      3c:      	ret

0000003e <aot_func_internal#0>:
      3e:      	addi	sp, sp, -0x30
      40:      	sw	ra, 0x2c(sp)
      42:      	sw	s0, 0x28(sp)
      44:      	sw	s1, 0x24(sp)
      46:      	sw	s2, 0x20(sp)
      48:      	sw	s3, 0x1c(sp)
      4a:      	sw	s4, 0x18(sp)
      4c:      	sw	s5, 0x14(sp)
      4e:      	sw	s6, 0x10(sp)
      50:      	sw	s7, 0xc(sp)
      52:      	mv	s0, a0
      54:      	lw	s1, 0x8(a0)
      56:      	lw	s7, 0x20(a0)
      5a:      	lw	s3, 0xc(a0)
      5e:      	lw	s6, 0x28(s1)
      62:      	lw	a7, 0x4(s7)
      66:      	mv	s2, a3
      68:      	mv	s4, a2
      6a:      	mv	a2, a1
      6c:      	li	a4, 0x1
      6e:      	mv	a0, s1
      70:      	li	a1, 0x0
      72:      	li	a3, 0x0
      74:      	li	a5, 0x0
      76:      	mv	a6, s3
      78:      	jalr	a7
      7a:      	andi	a0, a0, 0xff
      7e:      	beqz	a0, 0xc2 <aot_func_internal#0+0x84>
      80:      	lw	s5, 0x0(s3)
      84:      	lw	a7, 0x4(s7)
      88:      	mv	a0, s1
      8a:      	li	a1, 0x0
      8c:      	mv	a2, s4
      8e:      	li	a3, 0x0
      90:      	mv	a4, s2
      92:      	li	a5, 0x0
      94:      	mv	a6, s3
      96:      	jalr	a7
      98:      	andi	a0, a0, 0xff
      9c:      	beqz	a0, 0xc2 <aot_func_internal#0+0x84>
      9e:      	lw	a2, 0x0(s3)
      a2:      	lw	a5, 0x0(s6)
      a6:      	mv	a0, s0
      a8:      	mv	a1, s5
      aa:      	mv	a3, s2
      ac:      	lw	ra, 0x2c(sp)
      ae:      	lw	s0, 0x28(sp)
      b0:      	lw	s1, 0x24(sp)
      b2:      	lw	s2, 0x20(sp)
      b4:      	lw	s3, 0x1c(sp)
      b6:      	lw	s4, 0x18(sp)
      b8:      	lw	s5, 0x14(sp)
      ba:      	lw	s6, 0x10(sp)
      bc:      	lw	s7, 0xc(sp)
      be:      	addi	sp, sp, 0x30
      c0:      	jr	a5
      c2:      	lw	ra, 0x2c(sp)
      c4:      	lw	s0, 0x28(sp)
      c6:      	lw	s1, 0x24(sp)
      c8:      	lw	s2, 0x20(sp)
      ca:      	lw	s3, 0x1c(sp)
      cc:      	lw	s4, 0x18(sp)
      ce:      	lw	s5, 0x14(sp)
      d0:      	lw	s6, 0x10(sp)
      d2:      	lw	s7, 0xc(sp)
      d4:      	addi	sp, sp, 0x30
      d6:      	ret

000000d8 <aot_func#1>:
      d8:      	addi	sp, sp, -0x10
      da:      	sw	ra, 0xc(sp)
      dc:      	mv	a5, a0
      de:      	lw	a0, 0x8(a0)
      e0:      	lw	a4, 0x1d0(a0)
      e4:      	lw	a4, 0x4(a4)
      e6:      	lw	a7, 0x20(a5)
      ea:      	addi	t0, sp, 0x8
      ee:      	bltu	t0, a4, 0x112 <aot_func#1+0x3a>
      f2:      	mv	a6, a3
      f4:      	mv	a3, a2
      f6:      	mv	a2, a1
      f8:      	lw	a1, 0x10(a5)
      fa:      	sub	a4, t0, a4
      fe:      	bltu	a4, a1, 0x112 <aot_func#1+0x3a>
     102:      	mv	a1, a7
     104:      	mv	a4, a6
     106:      	lw	ra, 0xc(sp)
     108:      	addi	sp, sp, 0x10
     10a:      	auipc	t1, 0x0
     10e:      	jr	0x16(t1) <aot_func_internal#1>
     112:      	lw	a2, 0x0(a7)
     116:      	li	a1, 0xb
     118:      	jalr	a2
     11a:      	lw	ra, 0xc(sp)
     11c:      	addi	sp, sp, 0x10
     11e:      	ret

00000120 <aot_func_internal#1>:
     120:      	addi	sp, sp, -0x10
     122:      	sw	s0, 0xc(sp)
     124:      	sw	s1, 0x8(sp)
     126:      	sw	s2, 0x4(sp)
     128:      	beqz	a4, 0x19e <aot_func_internal#1+0x7e>
     12a:      	lw	a6, 0x178(a0)
     12e:      	lw	t3, 0x1b8(a0)
     132:      	lw	a5, 0xc(a1)
     134:      	lw	a7, 0x8(a1)
     138:      	bgeu	a4, a5, 0x1a8 <aot_func_internal#1+0x88>
     13c:      	li	t0, 0x0
     13e:      	and	a7, a7, a4
     142:      	beqz	a7, 0x19e <aot_func_internal#1+0x7e>
     146:      	lw	a4, 0x24(a1)
     148:      	sll	s1, t0, a4
     14c:      	add	a3, a3, s1
     14e:      	add	s1, s1, a2
     150:      	lw	a2, 0x14(a1)
     152:      	add	a5, a2, a3
     156:      	bltu	a5, a2, 0x2d2 <aot_func_internal#1+0x1b2>
     15a:      	bltu	t3, a5, 0x2d2 <aot_func_internal#1+0x1b2>
     15e:      	add	a4, a2, s1
     162:      	bltu	a4, a2, 0x2d2 <aot_func_internal#1+0x1b2>
     166:      	bltu	t3, a4, 0x2d2 <aot_func_internal#1+0x1b2>
     16a:      	add	a5, a5, a6
     16c:      	lbu	t0, 0x1(a5)
     170:      	lbu	s0, 0x2(a5)
     174:      	lbu	a2, 0x3(a5)
     178:      	lbu	a5, 0x0(a5)
     17c:      	add	a4, a4, a6
     17e:      	sb	s0, 0x2(a4)
     182:      	sb	a2, 0x3(a4)
     186:      	sb	a5, 0x0(a4)
     18a:      	sb	t0, 0x1(a4)
     18e:      	lw	a2, 0xc(a1)
     190:      	lw	a4, 0x28(a1)
     192:      	add	a3, a3, a2
     194:      	sub	a7, a7, a4
     198:      	add	s1, s1, a2
     19a:      	bnez	a7, 0x150 <aot_func_internal#1+0x30>
     19e:      	lw	s0, 0xc(sp)
     1a0:      	lw	s1, 0x8(sp)
     1a2:      	lw	s2, 0x4(sp)
     1a4:      	addi	sp, sp, 0x10
     1a6:      	ret
     1a8:      	lw	a5, 0x10(a1)
     1aa:      	lw	t1, 0x14(a1)
     1ae:      	li	t2, 0x0
     1b0:      	and	t0, a5, a4
     1b4:      	lw	s0, 0x14(a1)
     1b6:      	add	t5, t1, a3
     1ba:      	add	a5, s0, t5
     1be:      	bltu	a5, s0, 0x2d2 <aot_func_internal#1+0x1b2>
     1c2:      	bltu	t3, a5, 0x2d2 <aot_func_internal#1+0x1b2>
     1c6:      	add	t4, t1, a2
     1ca:      	add	t6, s0, t4
     1ce:      	bltu	t6, s0, 0x2d2 <aot_func_internal#1+0x1b2>
     1d2:      	bltu	t3, t6, 0x2d2 <aot_func_internal#1+0x1b2>
     1d6:      	add	a5, a5, a6
     1d8:      	lbu	s2, 0x1(a5)
     1dc:      	lbu	s1, 0x2(a5)
     1e0:      	lbu	s0, 0x3(a5)
     1e4:      	lbu	a5, 0x0(a5)
     1e8:      	add	t6, t6, a6
     1ea:      	sb	s1, 0x2(t6)
     1ee:      	sb	s0, 0x3(t6)
     1f2:      	sb	a5, 0x0(t6)
     1f6:      	sb	s2, 0x1(t6)
     1fa:      	lw	s0, 0xc(a1)
     1fc:      	lw	s1, 0x14(a1)
     1fe:      	add	a5, t5, s0
     202:      	add	a5, a5, s1
     204:      	bltu	a5, s1, 0x2d2 <aot_func_internal#1+0x1b2>
     208:      	bltu	t3, a5, 0x2d2 <aot_func_internal#1+0x1b2>
     20c:      	add	t6, t4, s0
     210:      	add	t6, t6, s1
     212:      	bltu	t6, s1, 0x2d2 <aot_func_internal#1+0x1b2>
     216:      	bltu	t3, t6, 0x2d2 <aot_func_internal#1+0x1b2>
     21a:      	add	a5, a5, a6
     21c:      	lbu	s2, 0x1(a5)
     220:      	lbu	s1, 0x2(a5)
     224:      	lbu	s0, 0x3(a5)
     228:      	lbu	a5, 0x0(a5)
     22c:      	add	t6, t6, a6
     22e:      	sb	s1, 0x2(t6)
     232:      	sb	s0, 0x3(t6)
     236:      	sb	a5, 0x0(t6)
     23a:      	sb	s2, 0x1(t6)
     23e:      	lw	s1, 0x18(a1)
     240:      	lw	s0, 0x14(a1)
     242:      	add	a5, t5, s1
     246:      	add	a5, a5, s0
     248:      	bltu	a5, s0, 0x2d2 <aot_func_internal#1+0x1b2>
     24c:      	bltu	t3, a5, 0x2d2 <aot_func_internal#1+0x1b2>
     250:      	add	t6, t4, s1
     254:      	add	t6, t6, s0
     256:      	bltu	t6, s0, 0x2d2 <aot_func_internal#1+0x1b2>
     25a:      	bltu	t3, t6, 0x2d2 <aot_func_internal#1+0x1b2>
     25e:      	add	a5, a5, a6
     260:      	lbu	s2, 0x1(a5)
     264:      	lbu	s1, 0x2(a5)
     268:      	lbu	s0, 0x3(a5)
     26c:      	lbu	a5, 0x0(a5)
     270:      	add	t6, t6, a6
     272:      	sb	s1, 0x2(t6)
     276:      	sb	s0, 0x3(t6)
     27a:      	sb	a5, 0x0(t6)
     27e:      	sb	s2, 0x1(t6)
     282:      	lw	s1, 0x1c(a1)
     284:      	lw	a5, 0x14(a1)
     286:      	add	t5, t5, s1
     288:      	add	s0, a5, t5
     28c:      	bltu	s0, a5, 0x2d2 <aot_func_internal#1+0x1b2>
     290:      	bltu	t3, s0, 0x2d2 <aot_func_internal#1+0x1b2>
     294:      	add	t4, t4, s1
     296:      	add	t4, t4, a5
     298:      	bltu	t4, a5, 0x2d2 <aot_func_internal#1+0x1b2>
     29c:      	bltu	t3, t4, 0x2d2 <aot_func_internal#1+0x1b2>
     2a0:      	add	s0, s0, a6
     2a2:      	lbu	t5, 0x1(s0)
     2a6:      	lbu	s1, 0x2(s0)
     2aa:      	lbu	a5, 0x3(s0)
     2ae:      	lbu	s0, 0x0(s0)
     2b2:      	add	t4, t4, a6
     2b4:      	sb	s1, 0x2(t4)
     2b8:      	sb	a5, 0x3(t4)
     2bc:      	sb	s0, 0x0(t4)
     2c0:      	sb	t5, 0x1(t4)
     2c4:      	lw	a5, 0xc(a1)
     2c6:      	lw	s1, 0x20(a1)
     2c8:      	add	t2, t2, a5
     2ca:      	add	t1, t1, s1
     2cc:      	bne	t0, t2, 0x1b4 <aot_func_internal#1+0x94>
     2d0:      	j	0x13e <aot_func_internal#1+0x1e>
     2d2:      	lw	a5, 0x0(a1)
     2d4:      	li	a1, 0x2
     2d6:      	lw	s0, 0xc(sp)
     2d8:      	lw	s1, 0x8(sp)
     2da:      	lw	s2, 0x4(sp)
     2dc:      	addi	sp, sp, 0x10
     2de:      	jr	a5
