----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:22:29 02/18/2014 
-- Design Name: 
-- Module Name:    PCADD - Behavioral 
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
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.all;
--use IEEE.NUMERIC_STD.ALL;


entity PCADD is

port( PCADD_in : in std_logic_vector(31 downto 0);
		PCADD_out: out std_logic_vector(31 downto 0));
end PCADD;

architecture Behavioral of PCADD is

begin
PCADD_out<= PCADD_in + 4;


end Behavioral;

