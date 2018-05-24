----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:25:07 04/08/2014 
-- Design Name: 
-- Module Name:    shift_left_26 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_left_26 is
    Port ( din : in  STD_LOGIC_VECTOR (25 downto 0);
				
				PC_Four: in std_logic_vector(3 downto 0);
           dout : out  STD_LOGIC_VECTOR (31 downto 0));
end shift_left_26;

architecture Behavioral of shift_left_26 is
signal temp: std_logic_vector(27 downto 0);
begin
temp<=din&"00";	--28bit  shift left 2
dout<= PC_Four&temp;

end Behavioral;

