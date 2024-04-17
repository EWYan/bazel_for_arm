.section .text.reset

.global _start

_start:
    b main 

/* Other interrupt handlers (stubbed for simplicity) */
.weak NMI_Handler
.weak NMI_Handler
    b .

.weak HardFault_Handler
.weak HardFault_Handler
    b . 