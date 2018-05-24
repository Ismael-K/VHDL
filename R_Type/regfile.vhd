----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:27:12 02/18/2014 
-- Design Name: 
-- Module Name:    regfile - Behavioral 
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

entity regfile is
 Port (clock     : in  STD_LOGIC;
       RegWrite  : in  STD_Logic;
       read_reg1 : in  STD_LOGIC_VECTOR(4  downto 0);
       read_reg2 : in  STD_LOGIC_VECTOR(4  downto 0);
       write_reg : in  STD_LOGIC_VECTOR(4  downto 0);
       write_data: in  STD_LOGIC_VECTOR(31 downto 0);
       read_data1: out STD_LOGIC_VECTOR(31 downto 0);
       read_data2: out STD_LOGIC_VECTOR(31 downto 0)
     );
 end regfile;

architecture Behavioral of regfile is
type initial is array (0 to 31) of std_logic_vector(31 downto 0);
                        --0	     -1          2             3           4            5          6           7
signal RAM:initial :=(x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",
                      x"00000009",x"0000000A",x"0000000B",x"0000000C",x"0000000D",x"0000000E",x"0000000F",x"00000010",
                      x"00000011",x"00000012",x"00000013",x"00000014",x"00000015",x"00000016",x"00000017",x"00000018",
                      x"00000019",x"0000001A",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000");	
begin
process(clock)
	begin
		if(clock'event and clock='1') then
			if(RegWrite='1') then
			RAM(conv_integer(unsigned(write_reg)))<= write_data;
			end if;
		end if;
end process;

read_data1<=x"00000000" when read_reg1="00000" else RAM(conv_integer(unsigned(read_reg1)));
read_data2<=x"00000000" when read_reg2="00000" else RAM(conv_integer(unsigned(read_reg2)));
end Behavioral;
--------------------
--MIPS Registers
-------------------------
--0-$ZERO
--1-$at
--2  to  3  $v0 to $v1
--4  to  7  $a0 to a3
--8  to 15  $t0 to $t7
--16 to 23  $s0 to $s7
--24 to 25  $t8, $t9
--26 to 27  $k0, $k1
--28 $gp
--29 $sp
--30 $fp
--31 $ra
------------------------------