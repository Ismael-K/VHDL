----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:22:10 02/26/2014 
-- Design Name: 
-- Module Name:    toplevel - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity toplevel is
    Port ( clock   : in  STD_LOGIC;--slower clock
	        clock1  : in  STD_LOGIC;--faster clock
           reset   : in  STD_LOGIC;
			  MSB     : in  STD_LOGIC;
	        overflow: out STD_LOGIC;
			  zero    : out STD_LOGIC;
		     carryout: out STD_LOGIC;
		     pcout   : out STD_LOGIC_VECTOR(4 downto 0);--Program Counter (PC)
	        enout   : out STD_LOGIC_VECTOR( 3 downto 0);--Enable for 7-segments
           dout    : out STD_LOGIC_VECTOR (7 downto 0));--7-Segment output along with decimal point
end toplevel;

architecture Behavioral of toplevel is
COMPONENT Schem
	PORT(
		reset : IN std_logic;
		clock : IN std_logic;          
		zero : OUT std_logic;
		overflow : OUT std_logic;
		carryout : OUT std_logic;
		pcout : OUT std_logic_vector(4 downto 0);
		dout : OUT std_logic_vector(31 downto 0)
		);
END COMPONENT;
	signal dout1  : STD_LOGIC_VECTOR(31 downto 0);
	signal qtemp1 : STD_LOGIC_VECTOR(31 downto 0):= (others =>'0');
	signal qtemp  : STD_LOGIC_VECTOR(10 downto 0):= (others =>'0');
	signal count  : STD_LOGIC_VECTOR(1  downto 0);
	signal mout   : STD_LOGIC_VECTOR(3  downto 0);
	signal moutlsb: STD_LOGIC_VECTOR(3  downto 0);
	signal moutmsb: STD_LOGIC_VECTOR(3  downto 0);
	signal temp   : STD_LOGIC_VECTOR(7  downto 0);
	signal pcout1 : STD_LOGIC_VECTOR(4  downto 0);
	
begin
	
	MIPS: Schem PORT MAP(
		reset =>reset ,
		clock =>clock ,
		zero => zero,
		overflow => overflow,
		carryout => carryout,
		pcout =>pcout1 ,
		dout =>dout1 
	);
	
	pcout<=pcout1;
----COUNTER FOR DISPLAY CIRCUIT-------------
cnt:process(clock1,reset)
		begin
		 	if reset='1' then
				qtemp<=(others=>'0');
			elsif(clock1'event and clock1='1') then
			 	qtemp <= qtemp + 1;
		   end if;
		end process;
	count <= qtemp(10 downto 9);--uncomment this line during simulation
	--count <= qtemp( 10 downto 9);--comment this line during simulation

----2 TO 4 DECODER FOR 7-SEG ENABLE--------
with count select
enout<= "0111" when "00",
		  "1011" when "01",
		  "1101" when "10",
		  "1110" when "11",
		  "1111" when others;
---LSB 4x1 MULTIPLEXER---------------------
with count select
moutlsb<= dout1(15 downto 12) when "00",
		    dout1(11 downto  8) when "01",
		    dout1(7  downto  4) when "10",
		    dout1(3  downto  0) when "11",
		    "0000" when others;
---MSB 4x1 MULTIPLEXER---------------------
with count select
moutmsb<= dout1(31 downto 28) when "00",
		    dout1(27 downto 24) when "01",
		    dout1(23 downto 20) when "10",
		    dout1(19 downto 16) when "11",
		    "0000" when others;
---2X1 MULTIPLEXER INPUT TO 7-SEGMENT CONVENTOR	
mout<=moutmsb when msb='1' else moutlsb;
		 
----Hexto7seg------------------------
with mout select
temp<= x"01" when "0000",--0
		 x"4F" when "0001",--1
		 x"12" when "0010",--2
		 x"06" when "0011",--3
		 x"4C" when "0100",--4
		 x"24" when "0101",--5
		 x"20" when "0110",--6
		 x"0F" when "0111",--7
		 x"00" when "1000",--8
		 x"0C" when "1001",--9
		 x"08" when "1010",--A
		 x"60" when "1011",--B
		 x"31" when "1100",--C
		 x"42" when "1101",--D
		 x"30" when "1110",--E
		 x"38" when "1111",--F
		 x"FF" when others;  
dout<=  (NOT msb) & temp( 6 downto 0);	
end Behavioral;

