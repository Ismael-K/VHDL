----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:37:26 04/08/2014 
-- Design Name: 
-- Module Name:    ADD_SOME - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADD_SOME is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
				Jal: in std_logic;
           B : out  STD_LOGIC_VECTOR (31 downto 0));
end ADD_SOME;

architecture Behavioral of ADD_SOME is

begin
with Jal select
B<= A when '1',
	A when others;

end Behavioral;

