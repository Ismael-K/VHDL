----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:17:47 02/18/2014 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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



ENTITY PC IS
      PORT ( PC_in: in std_logic_vector(31 downto 0);
		Reset, Clock : IN  STD_LOGIC ;
                   PC_out : OUT  STD_LOGIC_vector(31 downto 0) ) ;
END PC;

ARCHITECTURE Behavior OF PC IS
SIGNAL  Qint :  STD_LOGIC_vector(31 downto 0) ;
Signal zeros: std_logic_vector(31 downto 0):=(others=>'0');
BEGIN
     PROCESS ( Clock, Reset ) 
     BEGIN
          
               IF Reset = '1' THEN
                    Qint  <=  zeros ;
				
          ELSIF Clock'Event AND Clock = '1' THEN
          Qint  <=  PC_in;
				
          END IF ; 
     END PROCESS ; 
     PC_out  <=  Qint ;
END Behavior ;

