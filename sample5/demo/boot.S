        .extern _STACK_PTR
        .extern main

        .global _start
        .section .text.boot

_start: 
        ldr sp, =_STACK_PTR
        bl main
        b .
