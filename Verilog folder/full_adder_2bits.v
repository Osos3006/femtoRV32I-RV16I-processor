`timescale 1ns / 1ps
/*******************************************************************
*
* Module: full_adder_2bits.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for a 2-bit full adder
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/
module full_adder_2bits(
    input x, y,
    input cin,
    output sum,
    output cout
);
 
    assign {cout, sum} = x + y + cin;
endmodule
