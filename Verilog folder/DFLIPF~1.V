`timescale 1ns / 1ps
/*******************************************************************
*
* Module: DFlipFlop.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for a D Flip Flop
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module DFlipFlop(
    input clk,
    input rst,
    input D,
    output reg Q
);

    always @(posedge clk or posedge rst)
        begin 
            if(rst)
                Q <= 0;
            else 
                Q <= D;
        end
endmodule
