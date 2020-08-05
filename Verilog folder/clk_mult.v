`timescale 1ns / 1ps

//module clk_mult(
//input clk, rst,
//output clk2
//);
//  reg ff;
// always @(posedge clk)
//    if(rst)
//    ff <= 0;
  
   
//    always @(posedge clk2)  begin
//    ff <= ~ff;
//    end 
    
//    assign clk2 = clk ^ ff;
//endmodule


/*******************************************************************
*
* Module: DFlipFlop.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for a D Flip Flop
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/
/*
module clk_mult(
    input clk,
    input rst,
    input D,
    output reg Q
);

    always @(posedge clk or posedge rst)
        begin 
            if(rst)
                Q <= 0;
            else 
                Q <= ~D;
        end
endmodule
*/

module Clock_divider(clock_in,clock_out
    );
input clock_in; // input clock on FPGA
output clock_out; // output clock after dividing the input clock by divisor
reg[27:0] counter=28'd0;
parameter DIVISOR = 28'd2;
// The frequency of the output clk_out
//  = The frequency of the input clk_in divided by DIVISOR
// For example: Fclk_in = 50Mhz, if you want to get 1Hz signal to blink LEDs
// You will modify the DIVISOR parameter value to 28'd50.000.000
// Then the frequency of the output clk_out = 50Mhz/50.000.000 = 1Hz
always @(posedge clock_in)
begin
 counter <= counter + 28'd1;
 if(counter>=(DIVISOR-1))
  counter <= 28'd0;
end
assign clock_out = (counter<DIVISOR/2)?1'b0:1'b1;
endmodule

