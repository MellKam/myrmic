
copy_native.o:	file format elf32-littleriscv

Disassembly of section .text:

00000000 <copy>:
       0:      	auipc	t1, 0x0
       4:      	jr	t1 <copy>

00000008 <copy_words>:
       8:      	beqz	a2, 0x8 <copy_words>

0000000a <.LBB1_1>:
       a:      	lw	a3, 0x0(a1)
       c:      	sw	a3, 0x0(a0)
       e:      	addi	a2, a2, -0x1
      10:      	addi	a0, a0, 0x4
      12:      	addi	a1, a1, 0x4
      14:      	bnez	a2, 0x14 <.LBB1_1+0xa>

00000016 <.LBB1_2>:
      16:      	ret
