----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:12:38 03/25/2014 
-- Design Name: 
-- Module Name:    datamem - Behavioral 
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
use ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

entity datamem is
    Port ( clock      : in std_logic;
	        address    : in  STD_LOGIC_VECTOR (31 downto 0);
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           MemWrite   : in  STD_LOGIC;
           MemRead    : in  STD_LOGIC;
           Read_data  : out  STD_LOGIC_VECTOR (31 downto 0));
end datamem;

architecture Behavioral of datamem is
type datamem1 is array (0 to 31) of std_logic_vector (31 downto 0);
--signal a1,a2,a3,a4:std_logic_vector(5 downto 0);
signal data_out:std_logic_vector(31 downto 0);
signal RAM: datamem1:=(
							  x"00000000",--00
							  x"00000003",--01
							  x"00000008",--02
							  x"00000009",--03
							  x"00000001",--04
							  x"00000006",--05
							  x"00000000",--06
							  x"00000000",--07
							  x"00000000",--08
							  x"00000000",--09
							  x"00000000",--10
							  x"00000000",--11
							  x"00000000",--12
							  x"00000000",--13
							  x"00000000",--14
							  x"00000000",--15
							  x"00000000",--16
							  x"00000000",--17
							  x"00000000",--18
							  x"00000000",--19
							  x"00000000",--20
							  x"00000000",--21
							  x"00000000",--22
							  x"00000000",--23
							  x"00000000",--24
							  x"00000000",--25
							  x"00000000",--26
							  x"00000000",--27
							  x"00000000",--28
							  x"00000000",--29
							  x"00000000",--30
							  x"00000000"--31
							);	
							

begin
writing:	process(memwrite,clock)	
		begin	
		if(clock'event and clock='1')then
			if(MemWrite='1') then
			   RAM(conv_integer(address(6 downto 2)))<= write_data;
			end if;
		end if;
	end process;
read_data<=RAM(conv_integer(address(6 downto 2))) when memread='1' else x"00000000"; 
end  Behavioral;