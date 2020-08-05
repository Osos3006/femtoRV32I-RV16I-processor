`timescale 1ns / 1ps
/*******************************************************************
*
* Module: MUX2x1.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for a 2x1 multiplexer
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module MUX2x1(
    input sel,
    input a,
    input b,
    output reg out
);
    always @*
    begin
        if (!sel)
            out = a;
        else
            out = b;
    end
endmodule
