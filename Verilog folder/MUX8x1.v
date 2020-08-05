`timescale 1ns / 1ps
/*******************************************************************
*
* Module: MUX8x1.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for an 8x1 multiplexer
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module MUX8x1(
    input [2:0] sel,
    input [31:0] In1, In2, In3, In4, In5, In6, In7, In8,
    output reg [31:0] Out
);
    always @ (*) 
    begin 
         case (sel) 
          3'b000:
            Out = In1;
          3'b001:
            Out = In2;
          3'b010:
            Out = In3;
          3'b011:
            Out = In4;
          3'b100:
            Out = In5;
          3'b101:
            Out = In6;
          3'b110:
            Out = In7;
          3'b111:
            Out = In8;
          default:
            Out = 0;
        endcase 
    end  
endmodule
