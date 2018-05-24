----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:26:11 02/18/2014 
-- Design Name: 
-- Module Name:    Control - Behavioral 
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

entity Control is
    Port ( reset: in std_logic;
		opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           RegWrite : out  STD_LOGIC;
			  RegDst: out STD_LOGIC;
			  ALUSrc:out Std_logic;
			  MemtoReg: out std_logic;
			  Branch: out std_logic;
			  MemWrite:out std_logic;
			  MemRead: out std_logic;
			  ALUop: out std_logic_vector(1 downto 0);
			  Branchn: out std_logic;
			  Jump: out std_logic;
			  Jal: out std_logic
			  );
end Control;

architecture Behavioral of Control is
signal Rwrite,MRead,MWrite:std_logic;

begin
with opcode select
RWrite<= '1' when "000000",
				'1' when "100011", --lw
				'1' when "001000",--addi
				'1' when "001100",--andi
			'1' when "001101",--ori
			'1' when "000011", --jal
				'0' when others;
RegWrite <= Rwrite and not(reset);
				
with opcode select
RegDst<= '1' when "000000",	--Rtype 0
			'0' when "001000",--addi -need to write to rt
			'0' when "001100",--andi
			'0' when "001101",--ori
			'0' when others;
			
with opcode select
ALUSrc<= '1' when "100011", --lw
			'1' when "101011", --sw 
			'1' when "001000",--addi
			'1' when "001100",--andi
			'1' when "001101",--ori
			'0' when others;
			
with opcode select
MemtoReg<= '1' when "100011", --lw
			'0' when others;
			
with opcode select
Branch<= '1' when "000100",	--beq
			'0' when others;
			
with opcode select
	Branchn <= '1' when "000101",--bne
				'0' when others;

with opcode select
MWrite<= '1' when "101011", --sw 
				'0' when others;

MemWrite<= MWrite and not(reset);
with opcode select
MRead<= '1' when "100011", --lw
				'0' when others;
				
MemRead<= MRead and not(reset);
with opcode select
ALUop<= "10" when "000000", --R-type
			"10" when "001100",--andi	-> need this to perform and operation.see ALUcontrol
			"10" when "001101",--ori
			"01" when "000100", --beq
				"00" when others;
with opcode select
Jump<= '1' when "000010", ---j
			'0' when "000011", --jal
			'0' when others;
with opcode select
Jal<='1' when "000011", --jal
			'0' when others;
			

end Behavioral;

