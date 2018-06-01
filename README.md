# VHDL

### MIPS Datapath for R,I, and J-type Instructions



This project demonstrates the datapath design in software for the MIPS instruction set.  MIPS is an acronym for Microprocessor without Interlocked Pipeline Stages.  It is a popular computer architecture that is used in embedded processors.  This design is for a 32-bit single-cycle processor using the Xilinx ISE Design Suite 14.6.

The processor architecture has five stages:
Instruction Fetch (IF), Instruction Decode (ID), Execution (EX), Memory Access (MA), Write Back (WB).  

IF Stage - The instruction is fetched from memory using the Program Counter (PC) register and stored in Instruction Register.

ID Stage - The instruction bits in the Instruction Register are decoded and next PC is calculated.  Operands are read from the Register File and branching conditions are tested if the instruction is a branch type instruction.  

EX Stage - The instruction is executed.  If the instruction is an arithmetic or logical operation, the results are computed by the Arithmetic Logic Unit (ALU).  If it is a load or store word instruction, the approprate addresses are computed by the ALU. 

MA Stage - Any memory access that is required by the current instruction is performed.  For load word instructions, an operand is loaded from memory.  For store words, the operand is stored into memory.  

WB Stage - The operation results are written back to the destination register in the Register File.  

<p align="center">
<img width="450" alt="datapath" src="https://user-images.githubusercontent.com/17348315/40518308-ec6a8746-5f87-11e8-947a-58eeee90f829.PNG">


The 32-bit Instruction Formats for the Register, Immediate, and Jump instruction types are shown below.
<p align="center">
<img width="462" alt="instructionformat" src="https://user-images.githubusercontent.com/17348315/40864991-28c68446-65c4-11e8-91ca-60188088cc87.PNG">
  
  
 Schem.sch contains the top-level schematic file for this design.  The testbench for this schematic file is included in the project design.
 
 Device utilization summary:
---------------------------

Selected Device : 3s100ecp132-5 

 Number of Slices:                      507  out of    960    52%  
 Number of Slice Flip Flops:             23  out of   1920     1%  
 Number of 4 input LUTs:               1066  out of   1920    55%  
    Number used as logic:               746
    Number used as RAMs:                320
 Number of IOs:                          24
 Number of bonded IOBs:                  24  out of     83    28%  
 Number of GCLKs:                         2  out of     24     8% 
 
 
 
 
