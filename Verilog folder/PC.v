`timescale 1ns / 1ps
/*******************************************************************
*
* Module: PC.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for the program counter that channges the output
*              based on the input at the positive edge of the clock or the reset
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module PC(
    input clk,
    input rst,
    input load,
    input [31:0] in,
    output reg [31:0] out
);

    always @ (posedge clk or posedge rst)
        begin
            if (rst)
                out <= 0;
            else
            if (load)
             out <= in;
        end
endmodule
