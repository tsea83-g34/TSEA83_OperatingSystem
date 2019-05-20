library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.PIPECPU_STD.ALL;

package program_file is
  
  constant program : program_memory_array := (
--$PROGRAM
X"8fff0001", -- subi r15 r15 1
X"f7dd0005", -- movlo r13 r13 5
X"8bfffffe", -- addi r15 r15 -2
X"d2fd0000", -- store r15 r13 0 [2]
X"33000029", -- rjmp main
X"8fff0002", -- subi r15 r15 2
X"33000000", -- rjmp __halt [__halt]
X"cfdf0000", -- move r13 r15 [sleep_ms]
X"830d0004", -- load r0 r13 4 [4]
X"8fff0004", -- subi r15 r15 4
X"831e0000", -- load r1 r14 0 [4]
X"a7001000", -- mul r0 r0 r1
X"8fff0004", -- subi r15 r15 4
X"8b2e0000", -- addi r2 r14 0
X"d3d0fffc", -- store r13 r0 -4 [4]
X"d3d2fff8", -- store r13 r2 -8 [4]
X"830dfff8", -- load r0 r13 -8 [4] [L0]
X"831dfffc", -- load r1 r13 -4 [4]
X"df001000", -- cmp r0 r1
X"23000003", -- brlt L2
X"8b0e0000", -- addi r0 r14 0
X"33000002", -- rjmp L3
X"8b0e0001", -- addi r0 r14 1 [L2]
X"e3000000", -- cmpi r0 0 [L3]
X"1b000005", -- breq L1
X"832dfff8", -- load r2 r13 -8 [4]
X"8b220001", -- addi r2 r2 1
X"d3d2fff8", -- store r13 r2 -8 [4]
X"3300fff4", -- rjmp L0
X"8bff0008", -- addi r15 r15 8 [L1]
X"cfce0000", -- move r12 r14
X"82df0000", -- load r13 r15 0 [2]
X"8bff0002", -- addi r15 r15 2
X"8fdd0022", -- subi r13 r13 34
X"ef0d0000", -- rjmprg r13
X"cfdf0000", -- move r13 r15 [vga_write]
X"820d0004", -- load r0 r13 4 [2]
X"821d0006", -- load r1 r13 6 [2]
X"eb100000", -- vgaw r1 r0 0
X"d2d10006", -- store r13 r1 6 [2]
X"cfce0000", -- move r12 r14
X"82df0000", -- load r13 r15 0 [2]
X"8bff0002", -- addi r15 r15 2
X"8fdd002c", -- subi r13 r13 44
X"ef0d0000", -- rjmprg r13
X"cfdf0000", -- move r13 r15 [main]
X"8fff0002", -- subi r15 r15 2
X"8b0e0000", -- addi r0 r14 0
X"d2d0fffe", -- store r13 r0 -2 [2]
X"820dfffe", -- load r0 r13 -2 [2] [L4]
X"e300000a", -- cmpi r0 10
X"23000003", -- brlt L6
X"8b0e0000", -- addi r0 r14 0
X"33000002", -- rjmp L7
X"8b0e0001", -- addi r0 r14 1 [L6]
X"e3000000", -- cmpi r0 0 [L7]
X"1b000020", -- breq L5
X"8bfffffe", -- addi r15 r15 -2
X"d2fd0000", -- store r15 r13 0 [2]
X"821dfffe", -- load r1 r13 -2 [2]
X"8b110030", -- addi r1 r1 48
X"8bfffffe", -- addi r15 r15 -2
X"d2f10000", -- store r15 r1 0 [2]
X"822dfffe", -- load r2 r13 -2 [2]
X"8bfffffe", -- addi r15 r15 -2
X"d2f20000", -- store r15 r2 0 [2]
X"8fff0002", -- subi r15 r15 2
X"f7dd0047", -- movlo r13 r13 71
X"8bfffffe", -- addi r15 r15 -2
X"d2fd0000", -- store r15 r13 0 [2]
X"3300ffdd", -- rjmp vga_write
X"8bff0006", -- addi r15 r15 6
X"82df0000", -- load r13 r15 0 [2]
X"8bff0002", -- addi r15 r15 2
X"8bfffffe", -- addi r15 r15 -2
X"d2fd0000", -- store r15 r13 0 [2]
X"8b0e03e8", -- addi r0 r14 1000
X"8bfffffc", -- addi r15 r15 -4
X"d3f00000", -- store r15 r0 0 [4]
X"8fff0002", -- subi r15 r15 2
X"f7dd0054", -- movlo r13 r13 84
X"8bfffffe", -- addi r15 r15 -2
X"d2fd0000", -- store r15 r13 0 [2]
X"3300ffb4", -- rjmp sleep_ms
X"8bff0006", -- addi r15 r15 6
X"82df0000", -- load r13 r15 0 [2]
X"8bff0002", -- addi r15 r15 2
X"3300ffda", -- rjmp L4
X"8bff0002", -- addi r15 r15 2 [L5]
X"cfce0000", -- move r12 r14
X"82df0000", -- load r13 r15 0 [2]
X"8bff0002", -- addi r15 r15 2
X"8fdd005d", -- subi r13 r13 93
X"ef0d0000", -- rjmprg r13
--$PROGRAM_END
others => X"00000000"
);

end program_file;
