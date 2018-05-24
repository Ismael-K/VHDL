
-- VHDL Instantiation Created from source file ALU.vhd -- 01:00:32 03/26/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		ALUCntl : IN std_logic_vector(3 downto 0);          
		ALUOut : OUT std_logic_vector(31 downto 0);
		Zero : OUT std_logic;
		Carryout : OUT std_logic;
		Overflow : OUT std_logic
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		A => ,
		B => ,
		ALUCntl => ,
		ALUOut => ,
		Zero => ,
		Carryout => ,
		Overflow => 
	);


