.equ memtop, 0x00040000

.section .text
.global _start

_start:

        # setup a stack pointer
1:      la sp, memtop

        # call Ada code entry point
        call main

# Stubbing some things to make the generic Ada runtime happy
.globl putchar
putchar:
    nop

.globl __gnat_exit
__gnat_exit:
    nop
