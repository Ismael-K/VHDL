----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:48:02 03/26/2014 
-- Design Name: 
-- Module Name:    sign_extn - Behavioral 
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
Use ieee.numeric_std.all;

entity sign_extn is
    Port ( din : in  STD_LOGIC_VECTOR (15 downto 0);
           dout : out  STD_LOGIC_VECTOR (31 downto 0));
end sign_extn;

architecture Behavioral of sign_extn is

begin
with din(15) select
dout<= x"FFFF"&din when '1',
		x"0000"&din when '0',
		x"0000_0000" when others;
	--dout<=std_logic_vector(resize(signed(din), dout'length)); --add 16 upper bits

end Behavioral;

