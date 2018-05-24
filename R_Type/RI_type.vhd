--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:12:47 03/27/2014
-- Design Name:   
-- Module Name:   C:/Users/Pro/Documents/Xilinx/R_Type/RI_type.vhd
-- Project Name:  R_Type
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: toplevel
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RI_type IS
END RI_type;
 
ARCHITECTURE behavior OF RI_type IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT toplevel
    PORT(
         clock : IN  std_logic;
         clock1 : IN  std_logic;
         reset : IN  std_logic;
         MSB : IN  std_logic;
         overflow : OUT  std_logic;
         zero : OUT  std_logic;
         carryout : OUT  std_logic;
         pcout : OUT  std_logic_vector(4 downto 0);
         enout : OUT  std_logic_vector(3 downto 0);
         dout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal clock1 : std_logic := '0';
   signal reset : std_logic := '0';
   signal MSB : std_logic := '0';

 	--Outputs
   signal overflow : std_logic;
   signal zero : std_logic;
   signal carryout : std_logic;
   signal pcout : std_logic_vector(4 downto 0);
   signal enout : std_logic_vector(3 downto 0);
   signal dout : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 20 ns;
   constant clock1_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: toplevel PORT MAP (
          clock => clock,
          clock1 => clock1,
          reset => reset,
          MSB => MSB,
          overflow => overflow,
          zero => zero,
          carryout => carryout,
          pcout => pcout,
          enout => enout,
          dout => dout
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 
   clock1_process :process
   begin
		clock1 <= '0';
		wait for clock1_period/2;
		clock1 <= '1';
		wait for clock1_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
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

      -- insert stimulus here 

      wait;
   end process;

END;
