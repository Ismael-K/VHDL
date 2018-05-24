----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:21:00 03/26/2014 
-- Design Name: 
-- Module Name:    Mux21_32b - Behavioral 
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

entity Mux21_32 is
    Port ( control : in  STD_LOGIC;
           din1 : in  STD_LOGIC_VECTOR (31 downto 0);
           din2 : in  STD_LOGIC_VECTOR (31 downto 0);
           dout : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux21_32;

architecture Behavioral of Mux21_32 is

begin

with control select 

	dout<=din1 when '0', --read data
			din2 when '1',
			din2 when others; --

end Behavioral;