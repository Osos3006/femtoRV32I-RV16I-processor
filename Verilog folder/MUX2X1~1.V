`timescale 1ns / 1ps
/*******************************************************************
*
* Module: MUX2x1_32bits.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
*            Marwan Eid         - marwanadel99@aucegypt.edu
*            Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for a 32-bit 2x1 multiplexer for the 2nd input of the ALU
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module nbitMux #(parameter n = 1)(
input[n-1:0] a, b,
input s,
output[n-1:0] out
); // changed n to n-1 in a , b ; 
    genvar i;
    generate
    for (i=0; i<n; i=i+1)
        begin: mygenloop
            MUX2x1 mux(.sel(s), .a(a[i]), .b(b[i]), .out(out[i]));
        end
    endgenerate
endmodule
