`timescale 1ns / 1ps
/*******************************************************************
*
* Module: MUX4x1.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for a 4x1 multiplexer
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module MUX4x1(
    input [1:0] sel,
    input [31:0] in1, in2, in3, in4,
    output reg [31:0] out
);

    always @ (*) 
    begin 
         case (sel) 
          2'b00 : out = in1; 
          2'b01 : out = in2; 
          2'b10 : out = in3; 
          2'b11 : out = in4; 
        endcase
    end
endmodule
