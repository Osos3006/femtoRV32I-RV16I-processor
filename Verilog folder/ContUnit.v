`timescale 1ns / 1ps
`include "defines.v"
/*******************************************************************
*
* Module: ContUnit.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for the Control Unit
*
* Change history: 10/23/19 - Added to the project
*                 10/23/19 - Supported all different instructions by checking their OPCODEs and
                             generating the control signals for the corresponding instruction
*
**********************************************************************/

module ContUnit(
    input [31:0] inst,
    output reg branch,
    output reg memRead,
    /* 3-bit selection line for the 8x1 MUX whose output is the RF Write Data
       It chooses from the ALU Result for I & R Formats, Data Memory Output,
       Immediate Output for LUI Instruction, (PC + Immediate) for AUIPC, or (PC + 4) for JAL/JALR
    */
    output reg ebreak_signal,
    output reg [2:0] memToReg,
    output reg [1:0] ALUOp,
    output reg memWrite,
    output reg ALUSrc,
    output reg regWrite
);

    always @(*)
    begin
        case (inst[`IR_opcode]) // Checking the OPCODE of the instruction
            `OPCODE_LUI:      // lui instruction
                begin
                    branch = 1'b0;
                    memRead = 0;
                    memToReg= 3'b010;
                    ALUOp = 2'b00;
                    memWrite = 0;
                    ALUSrc = 1;
                    regWrite = 1;
                     ebreak_signal = 1'b0;
                end
            `OPCODE_AUIPC:    // AUIPC instruction
                begin
                    branch = 1'b0;
                    memRead = 0;
                    memToReg = 3'b011;
                    ALUOp = 2'b00;      
                    memWrite = 0;
                    ALUSrc = 1;
                    regWrite = 1;
                     ebreak_signal = 1'b0;
                end
            `OPCODE_JAL:      // JAL instruction
                begin
                    branch = 1'b1;
                    memRead = 0;
                    memToReg = 3'b100;
                    ALUOp = 2'b10;      
                    memWrite = 0;
                    ALUSrc = 1;
                    regWrite = 1;
                     ebreak_signal = 1'b0;
                end
            `OPCODE_JALR:     // JALR instruction
                begin
                    branch = 1'b1;
                    memRead = 0;
                    memToReg = 3'b100;
                    ALUOp = 2'b00;
                    memWrite = 0;
                    ALUSrc = 1;
                    regWrite = 1;
                     ebreak_signal = 1'b0;
                end
            `OPCODE_Branch:   // branch instructions 
                begin
//                    branch = pc_sel;
                    branch = 1'b1;
                    memRead = 0;
                    memToReg = 3'b000; // memToReg value is 3'bXXX
                    ALUOp = 2'b01;
                    memWrite = 0;
                    ALUSrc = 0;
                    regWrite = 0;
                     ebreak_signal = 1'b0;
                end
            `OPCODE_Load:     // load instructions
                begin
                    branch = 1'b0;
                    memRead = 1;
                    memToReg= 3'b001;
                    ALUOp = 2'b00;
                    memWrite = 0;
                    ALUSrc = 1;
                    regWrite = 1;
                     ebreak_signal = 1'b0;
                end
            `OPCODE_Store:    // store instructions
                begin
                    branch = 1'b0;
                    memRead = 0;
                    memToReg = 3'b000; // memToReg value is 3'bXXX
                    ALUOp = 2'b00;
                    memWrite = 1;
                    ALUSrc = 1;
                    regWrite = 0;
                     ebreak_signal = 1'b0;
                end
            `OPCODE_Arith_I:  // I-format
                begin
                    branch = 1'b0;
                    memRead = 0;
                    memToReg = 3'b000;
                    ALUOp = 2'b11;      
                    memWrite = 0;
                    ALUSrc = 1;
                    regWrite = 1;
                     ebreak_signal = 1'b0;
                end
            `OPCODE_Arith_R:  // R-format
                begin
                    branch = 1'b0;
                    memRead = 0;
                    memToReg = 3'b000;
                    ALUOp = 2'b10;      
                    memWrite = 0;
                    ALUSrc = 0;
                    regWrite = 1;
                     ebreak_signal = 1'b0;
                end
            `OPCODE_SYSTEM:   // SYSTEM
                begin
                    memRead = 0;
                    memToReg = 0;
                    ALUOp = 2'b00;
                    memWrite = 0;
                    ALUSrc = 0;
                    regWrite = 0;
                    if(inst[`IR_funct3] == `SYS_EC_EB && inst[20])
                    begin
                        branch = 1'b1; //4th input in the PC MUX (PC will not get incremented)
                        ebreak_signal = 1'b1;
                        end
                    else
                        branch = 1'b0;
                end
            default:          // no-op
                begin        
                    branch = 1'b0;
                    memRead = 0;
                    memToReg = 0;
                    ALUOp = 2'b00;
                    memWrite = 0;
                    ALUSrc = 0;
                    regWrite = 0;
                    ebreak_signal = 1'b0;
                end
        endcase
    end
endmodule
