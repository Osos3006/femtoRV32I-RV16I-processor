`timescale 1ns / 1ps
/*******************************************************************
*
* Module: branch_ContUnit.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for a branch control unit to check the
               different flags based on the different branches instructions
*
* Change history: 10/23/19 - Added to the project
*                 10/25/19 - Removed the part implemented before for testing on the Nexys A7 Board
*
**********************************************************************/
module FC(
input MEM_WB_regWrite,
input [4:0] ID_EX_Rs1,ID_EX_Rs2,MEM_WB_Rd,
output reg[1:0] FA,FB
 );
    always@(*)
    begin
        if(MEM_WB_regWrite && (MEM_WB_Rd!=0) && (MEM_WB_Rd ==ID_EX_Rs1)  ) begin
                FA= 2'b01;
            end
            else FA = 0;
            
     
             if(MEM_WB_regWrite && (MEM_WB_Rd!=0) && (MEM_WB_Rd ==ID_EX_Rs2)  ) begin
                FB= 2'b01;
            end
            else FB=0;
        end
        
endmodule


//(
//input [4:0] ID_EX_RegisterRs1, ID_EX_RegisterRs2, EX_MEM_RegisterRd, MEM_WB_RegisterRd,
//input EX_MEM_RegWrite, MEM_WB_RegWrite, 
//output reg [1:0] forwardA, forwardB
//);


//always @(*)
//    begin
//        if ((MEM_WB_RegWrite && MEM_WB_RegisterRd && MEM_WB_RegisterRd == ID_EX_RegisterRs1) && ~(EX_MEM_RegWrite && EX_MEM_RegisterRd && (EX_MEM_RegisterRd == ID_EX_RegisterRs1)))
//            forwardA = 2'b01;
//        else if ((MEM_WB_RegWrite && MEM_WB_RegisterRd && MEM_WB_RegisterRd == ID_EX_RegisterRs2) && ~((EX_MEM_RegWrite && EX_MEM_RegisterRd) && (EX_MEM_RegisterRd == ID_EX_RegisterRs2)))
//            forwardB = 2'b01;
//        //EX Hazard
//        if ((EX_MEM_RegWrite && EX_MEM_RegisterRd!=0) && (EX_MEM_RegisterRd == ID_EX_RegisterRs1)) 
//            forwardA = 2'b10;
//        else if ((EX_MEM_RegWrite && EX_MEM_RegisterRd) && (EX_MEM_RegisterRd == ID_EX_RegisterRs2)) 
//            forwardB = 2'b10;
//        //No Forward
//        else 
//            forwardA = 2'b00; forwardB=2'b00;
//    end
//endmodule

//    always @*
//    begin
//        if (EX_MEM_RegWrite && EX_MEM_RegisterRd && (EX_MEM_RegisterRd == ID_EX_RegisterRs1))
//            forwardA = 2'b10;
//        else if (MEM_WB_RegWrite && MEM_WB_RegisterRd && (MEM_WB_RegisterRd == ID_EX_RegisterRs1))
//            forwardA = 2'b01;
//        else
//            forwardA = 2'b00;
            
            
//        if (EX_MEM_RegWrite && EX_MEM_RegisterRd && (EX_MEM_RegisterRd == ID_EX_RegisterRs2))
//                forwardB = 2'b10;
//            else if (MEM_WB_RegWrite && MEM_WB_RegisterRd && (MEM_WB_RegisterRd == ID_EX_RegisterRs2))
//                forwardB = 2'b01;
//            else
//                forwardB = 2'b00;
//    end
//endmodule
