`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2019 03:02:50 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
//  
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb(
  
    );
    reg clk;
    reg rst;
    pipelined_dp riscv(
        clk,rst
    );
    
    initial begin 
    clk = 0;
    rst = 1;
    #101
    rst = 0;
    end
    always begin
    #100
    clk = !clk;
    
    end
endmodule
