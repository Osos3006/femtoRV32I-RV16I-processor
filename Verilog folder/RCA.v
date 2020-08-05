`timescale 1ns / 1ps
/*******************************************************************
*
* Module: RCA.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for a 32-bit Ripple Carry Adder
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/
module RCA(
    input [31:0] x, y,
    input cin,
    output [31:0] sum,
    output cout
);
    wire [32:0]carry;
    assign carry[0] = cin;
    generate genvar i;
        for (i = 0; i < 32; i = i + 1)
            begin : gen1
                full_adder_2bits fa(.x(x[i]), .y(y[i]), .cin(carry[i]), .sum(sum[i]), .cout(carry[i+1]));
            end
    endgenerate
    assign cout = carry[32];
endmodule
