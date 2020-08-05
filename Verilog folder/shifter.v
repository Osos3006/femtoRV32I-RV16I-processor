`timescale 1ns / 1ps
/*******************************************************************
*
* Module: shifter.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module that supports the three shifting operations
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module shifter(
    input [31:0] a, 
    input [4:0] shamt,
    input [1:0] type,
    output reg [31:0] r
);
    
    always@(*) 
    begin
        case(type)
            2'd0:               //srl
                r = a >> shamt;  
            2'd1:               //sll
                r = a << shamt;
            2'd2:               //sra
                r =  $signed(a) >>> shamt;
           default: r = a << shamt;
        endcase
    end
endmodule
