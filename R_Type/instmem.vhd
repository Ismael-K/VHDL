----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:25:05 02/18/2014 
-- Design Name: 
-- Module Name:    instmem - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity instmem is
    Port ( read_inst : in  STD_LOGIC_VECTOR (31 downto 0);
           inst_out : out  STD_LOGIC_VECTOR (31 downto 0));
end instmem;

architecture Behavioral of instmem is 
signal a1,a2,a3,a4:std_logic_vector(7 downto 0);
type instmem is array (0 to (64*4-1) ) of std_logic_vector (7 downto 0);
signal RAM: instmem:=(
							x"00",x"00",x"60",x"20",-- 0x00: add  $t4, $zero, $zero  --Main
							x"20",x"10",x"00",x"01",-- 0x04: addi $s0, $zero, 1 
							x"20",x"11",x"00",x"05",-- 0x08: addi $s1, $zero, 5 
							x"8d",x"88",x"00",x"00",-- 0x0C: lw   $t0, 0($t4) 
							x"21",x"8c",x"00",x"04",-- 0x10: addi $t4, $t4,   4 
							x"20",x"0d",x"00",x"20",-- 0x14: addi $t5, $zero, 32 
							x"01",x"a0",x"00",x"08",-- 0x18: jr   $t5 					->jump to 32= 0x20, 
							x"20",x"0e",x"00",x"01",-- 0x1C: addi $t6, $zero, 1 
							x"8d",x"89",x"00",x"00",-- 0x20: lw   $t1, 0($t4)        --sum         Now $t4=4, increment one line in datamem=> 3
							x"01",x"28",x"40",x"20",-- 0x24: add  $t0, $t1,   $t0 
							x"08",x"00",x"00",x"0C",-- 0x28: j    inct 
							x"21",x"ce",x"00",x"01",-- 0x2C: addi $t6, $t6,   1 
							x"21",x"8c",x"00",x"04",-- 0x30: addi $t4, $t4,   4      --inct
							x"12",x"11",x"00",x"03",-- 0x34: beq  $s0, $s1,   store
							x"22",x"10",x"00",x"01",-- 0x38: addi $s0, $s0,   1 
							x"0c",x"00",x"00",x"08",-- 0x3C: jal  sum
							x"21",x"ce",x"00",x"01",-- 0x40: addi $t6, $t6,   1 
							x"ad",x"88",x"00",x"00",-- 0x44: sw   $t0, 0($t4)        --store
							x"00",x"00",x"00",x"00",-- 0x48: (empty location)
							x"00",x"00",x"00",x"00",-- 0x4C: (empty location)
							x"00",x"00",x"00",x"00",-- 0x50: (empty location)
							x"00",x"00",x"00",x"00",-- 0x54: (empty location)
							x"00",x"00",x"00",x"00",-- 0x58: (empty location)
							x"00",x"00",x"00",x"00",-- 0x5C: (empty location)
							x"00",x"00",x"00",x"00",-- 0x60: (empty location)
							x"00",x"00",x"00",x"00",-- 0x64: (empty location)
							x"00",x"00",x"00",x"00",-- 0x68: (empty location)
							x"00",x"00",x"00",x"00",-- 0x6C: (empty location)
							x"00",x"00",x"00",x"00",-- 0x70: (empty location)
							x"00",x"00",x"00",x"00",-- 0x74: (empty location)
							x"00",x"00",x"00",x"00",-- 0x78: (empty location)
							x"00",x"00",x"00",x"00",-- 0x7C: (empty location)
							x"00",x"00",x"00",x"00",-- 0x80: (empty location)
							x"00",x"00",x"00",x"00",-- 0x84: (empty location)
							x"00",x"00",x"00",x"00",-- 0x88: (empty location)
							x"00",x"00",x"00",x"00",-- 0x8C: (empty location)
							x"00",x"00",x"00",x"00",-- 0x90: (empty location)
							x"00",x"00",x"00",x"00",-- 0x94: (empty location)
							x"00",x"00",x"00",x"00",-- 0x98: (empty location)
							x"00",x"00",x"00",x"00",-- 0x9C: (empty location)
							x"00",x"00",x"00",x"00",-- 0xA0: (empty location)
							x"00",x"00",x"00",x"00",-- 0xA4: (empty location)
							x"00",x"00",x"00",x"00",-- 0xA8: (empty location)
							x"00",x"00",x"00",x"00",-- 0xAC: (empty location)
							x"00",x"00",x"00",x"00",-- 0xB0: (empty location)
							x"00",x"00",x"00",x"00",-- 0xB4: (empty location)
							x"00",x"00",x"00",x"00",-- 0xB8: (empty location)
							x"00",x"00",x"00",x"00",-- 0xBC: (empty location)
							x"00",x"00",x"00",x"00",-- 0xC0: (empty location)
							x"00",x"00",x"00",x"00",-- 0xC4: (empty location)
							x"00",x"00",x"00",x"00",-- 0xC8: (empty location)
							x"00",x"00",x"00",x"00",-- 0xCC: (empty location)
							x"00",x"00",x"00",x"00",-- 0xD0: (empty location)
							x"00",x"00",x"00",x"00",-- 0xD4: (empty location)
							x"00",x"00",x"00",x"00",-- 0xD8: (empty location)
							x"00",x"00",x"00",x"00",-- 0xDC: (empty location)
							x"00",x"00",x"00",x"00",-- 0xE0: (empty location)
							x"00",x"00",x"00",x"00",-- 0xE4: (empty location)
							x"00",x"00",x"00",x"00",-- 0xE8: (empty location)
							x"00",x"00",x"00",x"00",-- 0xEC: (empty location)
							x"00",x"00",x"00",x"00",-- 0xF0: (empty location)
							x"00",x"00",x"00",x"00",-- 0xF4: (empty location)
							x"00",x"00",x"00",x"00",-- 0xF8: (empty location)
							x"00",x"00",x"00",x"00" -- 0xFF: (empty location)--255
							);	
begin	
	a1<=read_inst(7 downto 0);
	a2<=read_inst(7 downto 0)+1;
	a3<=read_inst(7 downto 0)+2;
	a4<=read_inst(7 downto 0)+3;
inst_out(7 downto 0)  <= RAM(conv_integer(unsigned(a4)));
inst_out(15 downto 8) <= RAM(conv_integer(unsigned(a3)));
inst_out(23 downto 16)<= RAM(conv_integer(unsigned(a2)));
inst_out(31 downto 24)<= RAM(conv_integer(unsigned(a1)));
end Behavioral;
