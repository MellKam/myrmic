
k_native.o:	file format elf32-littleriscv

Disassembly of section .text:

00000000 <sum>:
       0:      	li	a2, 0x0
       2:      	blez	a1, 0x2 <sum+0x2>
       6:      	slli	a1, a1, 0x2
       8:      	add	a1, a1, a0

0000000a <.LBB0_2>:
       a:      	lw	a3, 0x0(a0)
       c:      	addi	a0, a0, 0x4
       e:      	add	a2, a2, a3
      10:      	bne	a0, a1, 0x10 <.LBB0_2+0x6>

00000014 <.LBB0_3>:
      14:      	mv	a0, a2
      16:      	ret

00000018 <scale>:
      18:      	blez	a1, 0x18 <scale>
      1c:      	slli	a1, a1, 0x2
      1e:      	add	a1, a1, a0

00000020 <.LBB1_2>:
      20:      	lw	a3, 0x0(a0)
      22:      	mul	a3, a3, a2
      26:      	addi	a3, a3, 0x1
      28:      	sw	a3, 0x0(a0)
      2a:      	addi	a0, a0, 0x4
      2c:      	bne	a0, a1, 0x2c <.LBB1_2+0xc>

00000030 <.LBB1_3>:
      30:      	ret

00000032 <toggle>:
      32:      	addi	sp, sp, -0x20
      34:      	sw	ra, 0x1c(sp)
      36:      	sw	s0, 0x18(sp)
      38:      	sw	s1, 0x14(sp)
      3a:      	sw	s2, 0x10(sp)
      3c:      	sw	s3, 0xc(sp)
      3e:      	blez	a1, 0x3e <toggle+0xc>
      42:      	mv	s3, a1
      44:      	mv	s2, a0
      46:      	li	s0, 0x0
      48:      	li	s1, 0x0

0000004a <.LBB2_2>:
      4a:      	andi	a1, s0, 0x1
      4e:      	mv	a0, s2
      50:      	auipc	ra, 0x0
      54:      	jalr	ra <.LBB2_2+0x6>
      58:      	addi	s0, s0, 0x1
      5a:      	or	s1, s1, a0
      5c:      	bne	s3, s0, 0x5c <.LBB2_2+0x12>
      60:      	j	0x60 <.LBB2_2+0x16>

00000062 <.LBB2_3>:
      62:      	li	s1, 0x0

00000064 <.LBB2_4>:
      64:      	mv	a0, s1
      66:      	lw	ra, 0x1c(sp)
      68:      	lw	s0, 0x18(sp)
      6a:      	lw	s1, 0x14(sp)
      6c:      	lw	s2, 0x10(sp)
      6e:      	lw	s3, 0xc(sp)
      70:      	addi	sp, sp, 0x20
      72:      	ret

00000074 <mix>:
      74:      	addi	sp, sp, -0x20
      76:      	sw	ra, 0x1c(sp)
      78:      	sw	s0, 0x18(sp)
      7a:      	sw	s1, 0x14(sp)
      7c:      	sw	s2, 0x10(sp)
      7e:      	sw	s3, 0xc(sp)
      80:      	mv	s2, a1
      82:      	mv	s1, a0
      84:      	ori	a2, a2, 0x1
      88:      	auipc	ra, 0x0
      8c:      	jalr	ra <mix+0x14>
      90:      	mv	s0, a0
      92:      	mv	s3, a1
      94:      	li	a2, 0x7
      96:      	mv	a0, s1
      98:      	mv	a1, s2
      9a:      	li	a3, 0x0
      9c:      	auipc	ra, 0x0
      a0:      	jalr	ra <mix+0x28>
      a4:      	add	a1, a1, s3
      a6:      	add	a0, a0, s0
      a8:      	sltu	a2, a0, s0
      ac:      	add	a1, a1, a2
      ae:      	lw	ra, 0x1c(sp)
      b0:      	lw	s0, 0x18(sp)
      b2:      	lw	s1, 0x14(sp)
      b4:      	lw	s2, 0x10(sp)
      b6:      	lw	s3, 0xc(sp)
      b8:      	addi	sp, sp, 0x20
      ba:      	ret

000000bc <fmix>:
      bc:      	addi	sp, sp, -0x10
      be:      	sw	ra, 0xc(sp)
      c0:      	sw	s0, 0x8(sp)
      c2:      	sw	s1, 0x4(sp)
      c4:      	sw	s2, 0x0(sp)
      c6:      	mv	s0, a1
      c8:      	mv	s1, a0
      ca:      	lui	a1, 0x3f800
      ce:      	mv	a0, s0
      d0:      	auipc	ra, 0x0
      d4:      	jalr	ra <fmix+0x14>
      d8:      	mv	a1, a0
      da:      	mv	a0, s1
      dc:      	auipc	ra, 0x0
      e0:      	jalr	ra <fmix+0x20>
      e4:      	mv	s2, a0
      e6:      	mv	a0, s1
      e8:      	mv	a1, s0
      ea:      	auipc	ra, 0x0
      ee:      	jalr	ra <fmix+0x2e>
      f2:      	mv	a1, s2
      f4:      	auipc	ra, 0x0
      f8:      	jalr	ra <fmix+0x38>
      fc:      	lw	ra, 0xc(sp)
      fe:      	lw	s0, 0x8(sp)
     100:      	lw	s1, 0x4(sp)
     102:      	lw	s2, 0x0(sp)
     104:      	addi	sp, sp, 0x10
     106:      	ret

00000108 <fib>:
     108:      	addi	sp, sp, -0x10
     10a:      	sw	ra, 0xc(sp)
     10c:      	sw	s0, 0x8(sp)
     10e:      	sw	s1, 0x4(sp)
     110:      	sw	s2, 0x0(sp)
     112:      	li	s0, 0x0
     114:      	li	a1, 0x2
     116:      	blt	a0, a1, 0x116 <fib+0xe>
     11a:      	li	s2, 0x3

0000011c <.LBB5_2>:
     11c:      	mv	s1, a0
     11e:      	addi	a0, a0, -0x1
     120:      	auipc	ra, 0x0
     124:      	jalr	ra <.LBB5_2+0x4>
     128:      	mv	a1, a0
     12a:      	addi	a0, s1, -0x2
     12e:      	add	s0, s0, a1
     130:      	bltu	s2, s1, 0x130 <.LBB5_2+0x14>

00000134 <.LBB5_3>:
     134:      	add	a0, a0, s0
     136:      	lw	ra, 0xc(sp)
     138:      	lw	s0, 0x8(sp)
     13a:      	lw	s1, 0x4(sp)
     13c:      	lw	s2, 0x0(sp)
     13e:      	addi	sp, sp, 0x10
     140:      	ret

00000142 <sumsq>:
     142:      	addi	sp, sp, -0x10
     144:      	sw	ra, 0xc(sp)
     146:      	sw	s0, 0x8(sp)
     148:      	sw	s1, 0x4(sp)
     14a:      	sw	s2, 0x0(sp)
     14c:      	blez	a0, 0x14c <sumsq+0xa>
     150:      	mv	s2, a0
     152:      	li	s0, 0x0
     154:      	li	s1, 0x0

00000156 <.LBB6_2>:
     156:      	mv	a0, s0
     158:      	auipc	ra, 0x0
     15c:      	jalr	ra <.LBB6_2+0x2>
     160:      	addi	s0, s0, 0x1
     162:      	add	s1, s1, a0
     164:      	bne	s2, s0, 0x164 <.LBB6_2+0xe>
     168:      	j	0x168 <.LBB6_2+0x12>

0000016a <.LBB6_3>:
     16a:      	li	s1, 0x0

0000016c <.LBB6_4>:
     16c:      	mv	a0, s1
     16e:      	lw	ra, 0xc(sp)
     170:      	lw	s0, 0x8(sp)
     172:      	lw	s1, 0x4(sp)
     174:      	lw	s2, 0x0(sp)
     176:      	addi	sp, sp, 0x10
     178:      	ret

0000017a <sq>:
     17a:      	mul	a0, a0, a0
     17e:      	ret
