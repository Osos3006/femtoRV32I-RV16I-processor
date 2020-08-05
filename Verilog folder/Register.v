`timescale 1ns / 1ps
/*******************************************************************
*
* Module: Register.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for a single 32-bit register
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module Register #(parameter N = 31)(
    input clk,
    input rst,
    input load,
    input [N:0] D,
    output [N:0] Q
);
    wire [N:0] C;
    genvar i;
    generate 
        for (i = 0; i < N + 1; i = i + 1)
            begin : gen2
                MUX2x1 mux(.sel(load), .a(Q[i]), .b(D[i]), .out(C[i]));
                DFlipFlop dff(.clk(clk), .rst(rst), .D(C[i]), .Q(Q[i]));
            end
    endgenerate
endmodule
