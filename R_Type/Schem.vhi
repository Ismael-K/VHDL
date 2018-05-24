-- Vhdl instantiation template created from schematic C:\Users\Pro\Documents\Xilinx\R_Type\Schem.sch - Tue Apr 08 16:15:23 2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module.
-- 2) To use this template to instantiate this component, cut-and-paste and then edit.
--

   COMPONENT Schem
   PORT( Dout	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Reset	:	IN	STD_LOGIC; 
          clock	:	IN	STD_LOGIC; 
          Overflow	:	OUT	STD_LOGIC; 
          Zero	:	OUT	STD_LOGIC; 
          Carryout	:	OUT	STD_LOGIC; 
          pcout	:	OUT	STD_LOGIC_VECTOR (4 DOWNTO 0));
   END COMPONENT;

   UUT: Schem PORT MAP(
		Dout => , 
		Reset => , 
		clock => , 
		Overflow => , 
		Zero => , 
		Carryout => , 
		pcout => 
   );
