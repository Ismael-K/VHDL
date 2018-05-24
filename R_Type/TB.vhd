-- Vhdl test bench created from schematic C:\Users\Pro\Documents\Xilinx\R_Type\Schem.sch - Tue Feb 18 13:56:16 2014
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Schem_Schem_sch IS
END Schem_Schem_sch_tb;
ARCHITECTURE behavioral OF Schem_Schem_sch IS 

   COMPONENT Schem
   PORT( Dout	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Reset	:	IN	STD_LOGIC; 
          clock	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL Dout	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Reset	:	STD_LOGIC;
   SIGNAL clock	:	STD_LOGIC;



   -- Clock period definitions
   constant clock_period : time := 40 ns;
	
	
BEGIN

   UUT: Schem PORT MAP(
		Dout => Dout, 
		Reset => Reset, 
		clock => clock
   );
	
	
	 -- Clock process definitions
   clock_process :process
   begin
  clock <= '0';
  wait for clock_period/2;
  clock <= '1';
  wait for clock_period/2;
   end process;
	

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	Reset<='1';
  wait for clock_period/2;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
