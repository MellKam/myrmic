/* Experiment: replace the ROM memmove (assigned in esp-rom-sys rom/additional.ld) with
   firmware_memmove (src/main.rs). rom_memmove keeps the original for comparison (C6 address). */
rom_memmove = 0x400004b0;
memmove = firmware_memmove;
