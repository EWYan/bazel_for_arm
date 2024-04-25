MEMORY {
  sram (rwx) : ORIGIN = 0x00400000, LENGTH = 4 * 1024 * 1024
}

SECTIONS {
  .text : {
    *(.text.boot)
    *(.text)
  } > sram

  .text.interrupt : ALIGN(4) {} 

  .data : {
    *(.data)
  } > sram

  .rodata : {
    *(.rodata)
  } > sram

  .bss : {
    *(.bss)
  } > sram

  . = ALIGN(8);
  . = . + 4096;
  _STACK_PTR = .;
}
