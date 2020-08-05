`timescale 1ns / 1ps
`include "defines.v"

/*******************************************************************
*
* Module: PC_sel_gen.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for generating the selection line of the next pc value
*
* Change history: 10/26/19 - Added to the project
*                 
*
**********************************************************************/


module PC_sel_gen(
    input b,
    input pc_sel,
    input [`IR_opcode] inst,
    input stall,
    output reg [1:0] pc_sel_src
);
    always @(*)
    begin
        if( pc_sel) // we removed signal b - not sure why
            pc_sel_src = 2'b01;
        else if(inst == `OPCODE_JALR)
            pc_sel_src = 2'b10;
        else if (inst == `OPCODE_SYSTEM) // || stall
            pc_sel_src = 2'b11;
        else
            pc_sel_src = 2'b00;
    end
endmodule
