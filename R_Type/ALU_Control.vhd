----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:28:37 02/18/2014 
-- Design Name: 
-- Module Name:    ALU_Control - Behavioral 
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

entity ALU_Control is
    Port ( ALU_op: in std_logic_vector(1 downto 0);
			Funct_field : in  STD_LOGIC_VECTOR (5 downto 0);
			Jump_Reg: out std_logic;
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_Control;

architecture Behavioral of ALU_Control is

begin
process(ALU_op, Funct_field)
begin
case ALU_op is 

 WHEN  "00"  => 
	Operation<= "0010"; --add- for sw, alu does addition
	
	WHEN "01" =>
	Operation<="0110"; --sub
	
	WHEN "10" =>
	if (Funct_field = "100000") then --add 
	Operation<="0010";
	Jump_Reg<='0';
	elsif Funct_field = "100001" then --add unsigned
	Operation<="0010";
	Jump_Reg<='0';
	elsif Funct_field = "100010" then --sub
	Operation<="0110";
	Jump_Reg<='0';
	elsif Funct_field = "100011" then --sub unsigned
	Operation<="0110";
	Jump_Reg<='0';
	elsif (Funct_field = "100100")or(Funct_field = "000000") then --and ->for instr andi $t1,t1,0
	Operation<="0000";
	Jump_Reg<='0';	
	elsif (Funct_field = "100101")or(Funct_field = "000111") then --or "000111" for instr ori $t2,t2,7
	Operation<="0001";
	Jump_Reg<='0';
	elsif Funct_field = "100110" then --xor
	Operation<="0011";
	Jump_Reg<='0';
	elsif Funct_field = "100111" then --nor
	Operation<="1100";
	Jump_Reg<='0';
	elsif Funct_field = "001000" then --genrate jr signal with the funct code
	Jump_Reg<='1';
	Operation<="1111";
		else
		Operation<="1111";
		Jump_Reg<='0';
             
  
	
		end if;
WHEN others=>
Operation<="0000";
end case;
end process;
end Behavioral;

