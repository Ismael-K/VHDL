# VHDL

### MIPS Datapath for R,I, and J-type Instructions



This project demonstrates the datapath design in software for the MIPS instruction set.  MIPS is an acronym for Microprocessor without Interlocked Pipeline Stages.  It is a popular computer architecture that is used in embedded processors.  This design is for a 32-bit single-cycle processor using the Xilinx ISE Design Suite 14.6.

The processor architecture has five stages:
Instruction Fetch (IF), Instruction Decode (ID), Execution (EX), Memory Access (MA), Write Back (WB).  

IR - The instruction is fetched from memory using the Program Counter (PC) register and stored in Instruction Register.

ID - The instruction bits in the Instruction Register are decoded and next PC is calculated.  Operands are read from the Register File and branching conditions are tested if the instruction is a branch type instruction.  

EX - The instruction is executed.  If the instruction is an arithmetic or logical operation, the results are computed by the Arithmetic Logic Unit (ALU).  If it is a load or store word instruction, the approprate addresses are computed by the ALU. 

MA - Any memory access that is required by the current instruction is performed.  For load word instructions, an operand is loaded from memory.  For store words, the operand is stored into memory.  

WB - The operation results are written back to the destination register in the Register File.  

<p align="center">
<img width="450" alt="datapath" src="https://user-images.githubusercontent.com/17348315/40518308-ec6a8746-5f87-11e8-947a-58eeee90f829.PNG">
