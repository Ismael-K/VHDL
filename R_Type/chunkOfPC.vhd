----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:48:06 02/26/2014 
-- Design Name: 
-- Module Name:    chunkOfPC - Behavioral 
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

entity chunkOfPC is
    Port ( Pin : in  STD_LOGIC_VECTOR (4 downto 0);
           Pout :out STD_LOGIC_VECTOR (4 downto 0));
end chunkOfPC;

architecture Behavioral of chunkOfPC is

begin
Pout<=Pin;

end Behavioral;

