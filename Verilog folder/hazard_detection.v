`timescale 1ns / 1ps

module hazard_detection(
input [4:0] IF_ID_RegisterRs1, IF_ID_RegisterRs2, ID_EX_RegisterRd,
input ID_EX_memRead,
input clk,
output reg stall
    );
    
    always @(*)
        begin
            if ((IF_ID_RegisterRs1 == ID_EX_RegisterRd || IF_ID_RegisterRs2 == ID_EX_RegisterRd) && ID_EX_memRead && ID_EX_RegisterRd != 0)
                stall=1'b1;
            else
                stall = 1'b0;
                end
                
     always@( posedge clk ) begin
     if (stall)
     stall = 1'b0;
        end
endmodule
