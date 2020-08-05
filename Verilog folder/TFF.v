`timescale 1ns / 1ps
/*******************************************************************
*
* Module: TFF.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for a T Flip-flop
*
* Change history: 11/10/19 - Added to the project
*
**********************************************************************/

module TFF(
    input clk,
    input rst,
    input t,
    output reg q
);

    always @ (posedge clk)
        begin
            if (rst)
                q <= 0;
            else if (t)
                q <= ~q;
            else
                q <= q;
        end
endmodule
