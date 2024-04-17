
ENTRY(_start)

MEMORY {
    FLASH (rx) : ORIGIN = 0x10000000, LENGTH = 128K /* Adjust addresses and size to your board */
    RAM (rwx) : ORIGIN = 0x20000000, LENGTH = 32K  /* Adjust based on available RAM */
}

SECTIONS {
    .text : {
        KEEP(*(.text.reset)) 
        *(.text)
        *(.rodata)
    } > FLASH

    .data : { *(.data) } > RAM
    .bss : { *(.bss)  *(COMMON) } > RAM

    /* Stack section, adjust size as needed */
    _stack_top = ORIGIN(RAM) + LENGTH(RAM); 
}

