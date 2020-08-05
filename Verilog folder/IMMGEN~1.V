`timescale 1ns / 1ps
`include "defines.v"
/*******************************************************************
*
* Module: immGenerator.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
*            Marwan Eid         - marwanadel99@aucegypt.edu
*            Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for the Immediate Generator that generates different
*              immediate outputs based on the OPCODEs of different instructions
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module ImmGenerator(
    input  wire [31:0]  IR,
    output reg  [31:0]  out
);

always @(*) begin
case (`OPCODE)
    `OPCODE_Arith_I   :     out = { {21{IR[31]}}, IR[30:25], IR[24:21], IR[20] };
    `OPCODE_Store     :     out = { {21{IR[31]}}, IR[30:25], IR[11:8], IR[7] };
    `OPCODE_LUI       :     out = { IR[31], IR[30:20], IR[19:12], 12'b0 };
    `OPCODE_AUIPC     :     out = { IR[31], IR[30:20], IR[19:12], 12'b0 };
    `OPCODE_JAL       :     out = { {12{IR[31]}}, IR[19:12], IR[20], IR[30:25], IR[24:21], 1'b0 };
    `OPCODE_JALR      :     out = { {21{IR[31]}}, IR[30:25], IR[24:21], IR[20] };
    `OPCODE_Branch    :     out = { {20{IR[31]}}, IR[7], IR[30:25], IR[11:8], 1'b0};
    default           :     out = { {21{IR[31]}}, IR[30:25], IR[24:21], IR[20] }; // IMM_I
endcase 
end
endmodule
