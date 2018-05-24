-- Vhdl test bench created from schematic C:\Users\Pro\Documents\Xilinx\R_Type\Schem.sch - Thu Mar 27 15:43:09 2014
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
ENTITY Schem_Schem_sch_t IS
END Schem_Schem_sch_t;
ARCHITECTURE behavioral OF Schem_Schem_sch_t IS 

   COMPONENT Schem
   PORT( Dout	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Reset	:	IN	STD_LOGIC; 
          clock	:	IN	STD_LOGIC; 
          Overflow	:	OUT	STD_LOGIC; 
          Zero	:	OUT	STD_LOGIC; 
          Carryout	:	OUT	STD_LOGIC; 
          pcout	:	OUT	STD_LOGIC_VECTOR (4 DOWNTO 0));
   END COMPONENT;

   SIGNAL Dout	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Reset	:	STD_LOGIC;
   SIGNAL clock	:	STD_LOGIC;
   SIGNAL Overflow	:	STD_LOGIC;
   SIGNAL Zero	:	STD_LOGIC;
   SIGNAL Carryout	:	STD_LOGIC;
   SIGNAL pcout	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	
	-- Clock period definitions
   constant clock_period : time := 20 ns;

BEGIN

   UUT: Schem PORT MAP(
		Dout => Dout, 
		Reset => Reset, 
		clock => clock, 
		Overflow => Overflow, 
		Zero => Zero, 
		Carryout => Carryout, 
		pcout => pcout
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
  wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;--10
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;--20
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;
  Reset<='0';wait for clock_period;--30
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
