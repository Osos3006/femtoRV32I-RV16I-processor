`timescale 1ns / 1ps
/*******************************************************************
*
* Module: ContUnit.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: Top module
*
* Change history: 11/18/19 - Added to the project
*
**********************************************************************/


module integrate_module(
input clk, 
    input rclk, 
    input rst, 
    input [1:0] ledSel, 
    input [3:0] ssdSel,
    output [15:0] led, 
    output [3:0] an, 
    output [6:0] seg
    );

        
        
    pipelined_dp cpu(rclk,rst,ledSel,ssdSel,led,ssd);
       SSDDriver sd(clk,ssd,an,seg);
endmodule


