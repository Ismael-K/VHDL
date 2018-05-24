--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : Schem.vhf
-- /___/   /\     Timestamp : 04/11/2014 15:28:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/Pro/Documents/Xilinx/R_Type/Schem.vhf -w C:/Users/Pro/Documents/Xilinx/R_Type/Schem.sch
--Design Name: Schem
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Schem is
   port ( clock    : in    std_logic; 
          Reset    : in    std_logic; 
          Carryout : out   std_logic; 
          Dout     : out   std_logic_vector (31 downto 0); 
          Overflow : out   std_logic; 
          pcout    : out   std_logic_vector (4 downto 0); 
          Zero     : out   std_logic);
end Schem;

architecture BEHAVIORAL of Schem is
   signal A           : std_logic_vector (31 downto 0);
   signal adder       : std_logic_vector (31 downto 0);
   signal ALUop       : std_logic_vector (1 downto 0);
   signal ALUSrc      : std_logic;
   signal ALU_Contl   : std_logic_vector (3 downto 0);
   signal ALU_res     : std_logic_vector (31 downto 0);
   signal And_Beq     : std_logic;
   signal And_Bne     : std_logic;
   signal B           : std_logic_vector (31 downto 0);
   signal Branch      : std_logic;
   signal Branchn     : std_logic;
   signal inst_out    : std_logic_vector (31 downto 0);
   signal Invert_zero : std_logic;
   signal Jal         : std_logic;
   signal JAndLinked  : std_logic_vector (31 downto 0);
   signal Jr          : std_logic;
   signal Jump        : std_logic;
   signal JumpedOut   : std_logic_vector (31 downto 0);
   signal Jump_Addr   : std_logic_vector (31 downto 0);
   signal left_2      : std_logic_vector (31 downto 0);
   signal MemRead     : std_logic;
   signal MemtoReg    : std_logic;
   signal MemWrite    : std_logic;
   signal Or_out      : std_logic;
   signal PCADDout    : std_logic_vector (31 downto 0);
   signal PCPlus4     : std_logic_vector (31 downto 0);
   signal PC_out      : std_logic_vector (31 downto 0);
   signal Read_data   : std_logic_vector (31 downto 0);
   signal RegDst      : std_logic;
   signal RegWrite    : std_logic;
   signal sgn_ext     : std_logic_vector (31 downto 0);
   signal Some_Jump   : std_logic_vector (31 downto 0);
   signal to_ALU      : std_logic_vector (31 downto 0);
   signal write_reg   : std_logic_vector (4 downto 0);
   signal XLXN_13     : std_logic_vector (31 downto 0);
   signal Zero_DUMMY  : std_logic;
   signal Dout_DUMMY  : std_logic_vector (31 downto 0);
   component PC
      port ( Reset  : in    std_logic; 
             Clock  : in    std_logic; 
             PC_in  : in    std_logic_vector (31 downto 0); 
             PC_out : out   std_logic_vector (31 downto 0));
   end component;
   
   component PCADD
      port ( PCADD_in  : in    std_logic_vector (31 downto 0); 
             PCADD_out : out   std_logic_vector (31 downto 0));
   end component;
   
   component instmem
      port ( read_inst : in    std_logic_vector (31 downto 0); 
             inst_out  : out   std_logic_vector (31 downto 0));
   end component;
   
   component regfile
      port ( clock      : in    std_logic; 
             RegWrite   : in    std_logic; 
             read_reg1  : in    std_logic_vector (4 downto 0); 
             read_reg2  : in    std_logic_vector (4 downto 0); 
             write_reg  : in    std_logic_vector (4 downto 0); 
             write_data : in    std_logic_vector (31 downto 0); 
             read_data1 : out   std_logic_vector (31 downto 0); 
             read_data2 : out   std_logic_vector (31 downto 0));
   end component;
   
   component ALU_Control
      port ( ALU_op      : in    std_logic_vector (1 downto 0); 
             Funct_field : in    std_logic_vector (5 downto 0); 
             Operation   : out   std_logic_vector (3 downto 0); 
             Jump_Reg    : out   std_logic);
   end component;
   
   component ALU
      port ( A        : in    std_logic_vector (31 downto 0); 
             B        : in    std_logic_vector (31 downto 0); 
             ALUCntl  : in    std_logic_vector (3 downto 0); 
             Zero     : out   std_logic; 
             Carryout : out   std_logic; 
             Overflow : out   std_logic; 
             ALUOut   : out   std_logic_vector (31 downto 0));
   end component;
   
   component Pc_Chunk
      port ( Pin  : in    std_logic_vector (4 downto 0); 
             Pout : out   std_logic_vector (4 downto 0));
   end component;
   
   component sign_extn
      port ( din  : in    std_logic_vector (15 downto 0); 
             dout : out   std_logic_vector (31 downto 0));
   end component;
   
   component Control
      port ( reset    : in    std_logic; 
             opcode   : in    std_logic_vector (5 downto 0); 
             RegWrite : out   std_logic; 
             RegDst   : out   std_logic; 
             ALUSrc   : out   std_logic; 
             MemtoReg : out   std_logic; 
             Branch   : out   std_logic; 
             MemWrite : out   std_logic; 
             MemRead  : out   std_logic; 
             Branchn  : out   std_logic; 
             Jump     : out   std_logic; 
             ALUop    : out   std_logic_vector (1 downto 0); 
             Jal      : out   std_logic);
   end component;
   
   component shift_left_2
      port ( din  : in    std_logic_vector (31 downto 0); 
             dout : out   std_logic_vector (31 downto 0));
   end component;
   
   component Add
      port ( Add1   : in    std_logic_vector (31 downto 0); 
             Add2   : in    std_logic_vector (31 downto 0); 
             Result : out   std_logic_vector (31 downto 0));
   end component;
   
   component And_gate
      port ( D1   : in    std_logic; 
             D2   : in    std_logic; 
             Dout : out   std_logic);
   end component;
   
   component Mux21_32
      port ( control : in    std_logic; 
             din1    : in    std_logic_vector (31 downto 0); 
             din2    : in    std_logic_vector (31 downto 0); 
             dout    : out   std_logic_vector (31 downto 0));
   end component;
   
   component Mux2_1
      port ( control : in    std_logic; 
             din1    : in    std_logic_vector (4 downto 0); 
             din2    : in    std_logic_vector (4 downto 0); 
             dout    : out   std_logic_vector (4 downto 0));
   end component;
   
   component datamem
      port ( MemWrite   : in    std_logic; 
             MemRead    : in    std_logic; 
             address    : in    std_logic_vector (31 downto 0); 
             write_data : in    std_logic_vector (31 downto 0); 
             Read_data  : out   std_logic_vector (31 downto 0); 
             clock      : in    std_logic);
   end component;
   
   component Inverter
      port ( A : in    std_logic; 
             B : out   std_logic);
   end component;
   
   component Or_gate
      port ( A : in    std_logic; 
             B : in    std_logic; 
             C : out   std_logic);
   end component;
   
   component shift_left_26
      port ( din     : in    std_logic_vector (25 downto 0); 
             PC_Four : in    std_logic_vector (3 downto 0); 
             dout    : out   std_logic_vector (31 downto 0));
   end component;
   
   component ADD_SOME
      port ( A   : in    std_logic_vector (31 downto 0); 
             B   : out   std_logic_vector (31 downto 0); 
             Jal : in    std_logic);
   end component;
   
begin
   Dout(31 downto 0) <= Dout_DUMMY(31 downto 0);
   Zero <= Zero_DUMMY;
   XLXI_1 : PC
      port map (Clock=>clock,
                PC_in(31 downto 0)=>XLXN_13(31 downto 0),
                Reset=>Reset,
                PC_out(31 downto 0)=>PC_out(31 downto 0));
   
   XLXI_2 : PCADD
      port map (PCADD_in(31 downto 0)=>PC_out(31 downto 0),
                PCADD_out(31 downto 0)=>PCADDout(31 downto 0));
   
   XLXI_3 : instmem
      port map (read_inst(31 downto 0)=>PC_out(31 downto 0),
                inst_out(31 downto 0)=>inst_out(31 downto 0));
   
   XLXI_5 : regfile
      port map (clock=>clock,
                read_reg1(4 downto 0)=>inst_out(25 downto 21),
                read_reg2(4 downto 0)=>inst_out(20 downto 16),
                RegWrite=>RegWrite,
                write_data(31 downto 0)=>Dout_DUMMY(31 downto 0),
                write_reg(4 downto 0)=>write_reg(4 downto 0),
                read_data1(31 downto 0)=>A(31 downto 0),
                read_data2(31 downto 0)=>B(31 downto 0));
   
   XLXI_6 : ALU_Control
      port map (ALU_op(1 downto 0)=>ALUop(1 downto 0),
                Funct_field(5 downto 0)=>inst_out(5 downto 0),
                Jump_Reg=>Jr,
                Operation(3 downto 0)=>ALU_Contl(3 downto 0));
   
   XLXI_8 : ALU
      port map (A(31 downto 0)=>A(31 downto 0),
                ALUCntl(3 downto 0)=>ALU_Contl(3 downto 0),
                B(31 downto 0)=>to_ALU(31 downto 0),
                ALUOut(31 downto 0)=>ALU_res(31 downto 0),
                Carryout=>Carryout,
                Overflow=>Overflow,
                Zero=>Zero_DUMMY);
   
   XLXI_11 : Pc_Chunk
      port map (Pin(4 downto 0)=>PC_out(6 downto 2),
                Pout(4 downto 0)=>pcout(4 downto 0));
   
   XLXI_13 : sign_extn
      port map (din(15 downto 0)=>inst_out(15 downto 0),
                dout(31 downto 0)=>sgn_ext(31 downto 0));
   
   XLXI_14 : Control
      port map (opcode(5 downto 0)=>inst_out(31 downto 26),
                reset=>Reset,
                ALUop(1 downto 0)=>ALUop(1 downto 0),
                ALUSrc=>ALUSrc,
                Branch=>Branch,
                Branchn=>Branchn,
                Jal=>Jal,
                Jump=>Jump,
                MemRead=>MemRead,
                MemtoReg=>MemtoReg,
                MemWrite=>MemWrite,
                RegDst=>RegDst,
                RegWrite=>RegWrite);
   
   XLXI_15 : shift_left_2
      port map (din(31 downto 0)=>sgn_ext(31 downto 0),
                dout(31 downto 0)=>left_2(31 downto 0));
   
   XLXI_16 : Add
      port map (Add1(31 downto 0)=>PCADDout(31 downto 0),
                Add2(31 downto 0)=>left_2(31 downto 0),
                Result(31 downto 0)=>adder(31 downto 0));
   
   XLXI_17 : And_gate
      port map (D1=>Branch,
                D2=>Zero_DUMMY,
                Dout=>And_Beq);
   
   XLXI_18 : Mux21_32
      port map (control=>Or_out,
                din1(31 downto 0)=>PCADDout(31 downto 0),
                din2(31 downto 0)=>adder(31 downto 0),
                dout(31 downto 0)=>PCPlus4(31 downto 0));
   
   XLXI_19 : Mux21_32
      port map (control=>ALUSrc,
                din1(31 downto 0)=>B(31 downto 0),
                din2(31 downto 0)=>sgn_ext(31 downto 0),
                dout(31 downto 0)=>to_ALU(31 downto 0));
   
   XLXI_20 : Mux2_1
      port map (control=>RegDst,
                din1(4 downto 0)=>inst_out(20 downto 16),
                din2(4 downto 0)=>inst_out(15 downto 11),
                dout(4 downto 0)=>write_reg(4 downto 0));
   
   XLXI_22 : datamem
      port map (address(31 downto 0)=>ALU_res(31 downto 0),
                clock=>clock,
                MemRead=>MemRead,
                MemWrite=>MemWrite,
                write_data(31 downto 0)=>B(31 downto 0),
                Read_data(31 downto 0)=>Read_data(31 downto 0));
   
   XLXI_23 : Mux21_32
      port map (control=>MemtoReg,
                din1(31 downto 0)=>ALU_res(31 downto 0),
                din2(31 downto 0)=>Read_data(31 downto 0),
                dout(31 downto 0)=>Dout_DUMMY(31 downto 0));
   
   XLXI_25 : And_gate
      port map (D1=>Branchn,
                D2=>Invert_zero,
                Dout=>And_Bne);
   
   XLXI_26 : Inverter
      port map (A=>Zero_DUMMY,
                B=>Invert_zero);
   
   XLXI_27 : Or_gate
      port map (A=>And_Beq,
                B=>And_Bne,
                C=>Or_out);
   
   XLXI_30 : Mux21_32
      port map (control=>Jump,
                din1(31 downto 0)=>PCPlus4(31 downto 0),
                din2(31 downto 0)=>Jump_Addr(31 downto 0),
                dout(31 downto 0)=>JumpedOut(31 downto 0));
   
   XLXI_32 : shift_left_26
      port map (din(25 downto 0)=>inst_out(25 downto 0),
                PC_Four(3 downto 0)=>PCADDout(31 downto 28),
                dout(31 downto 0)=>Jump_Addr(31 downto 0));
   
   XLXI_33 : ADD_SOME
      port map (A(31 downto 0)=>Jump_Addr(31 downto 0),
                Jal=>Jal,
                B(31 downto 0)=>JAndLinked(31 downto 0));
   
   XLXI_34 : Mux21_32
      port map (control=>Jal,
                din1(31 downto 0)=>JumpedOut(31 downto 0),
                din2(31 downto 0)=>JAndLinked(31 downto 0),
                dout(31 downto 0)=>Some_Jump(31 downto 0));
   
   XLXI_35 : Mux21_32
      port map (control=>Jr,
                din1(31 downto 0)=>Some_Jump(31 downto 0),
                din2(31 downto 0)=>A(31 downto 0),
                dout(31 downto 0)=>XLXN_13(31 downto 0));
   
end BEHAVIORAL;


