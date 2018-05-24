----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:35:00 03/25/2014 
-- Design Name: 
-- Module Name:    Mux2_1 - Behavioral 
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

entity Mux2_1 is
    Port ( control : in  STD_LOGIC;
           din1 : in  STD_LOGIC_VECTOR (4 downto 0);
           din2 : in  STD_LOGIC_VECTOR (4 downto 0);
           dout : out  STD_LOGIC_VECTOR (4 downto 0));
end Mux2_1;

architecture Behavioral of Mux2_1 is

begin

with control select 

	dout<=din1 when '0', --instructions[20:16]
			din2 when '1',
			din2 when others; --instructions[15-11]

end Behavioral;

