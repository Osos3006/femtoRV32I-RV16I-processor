`timescale 1ns / 1ps
`include "defines.v"
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

module branch_ContUnit(
    input cf, zf, vf, sf,
    input [7:0] inst,
    output reg [1:0] pc_sel
);

    always @*
        begin
        if (inst[4:0] == `OPCODE_Branch)
            begin
                case (inst[7:5])
                    `BR_BEQ:
                        begin
                            if (zf)
                                pc_sel = 2'b01;
                            else
                                pc_sel = 2'b00;
                        end
                    `BR_BNE:
                        begin
                            if (!zf)
                                pc_sel = 2'b01;
                            else
                                pc_sel = 2'b00;
                        end
                    `BR_BLT:
                        begin
                            if (sf != vf)
                                pc_sel = 2'b01;
                            else
                                pc_sel = 2'b00;
                        end
                    `BR_BGE:
                        begin
                            if (sf == vf)
                                pc_sel = 2'b01;
                            else
                                pc_sel = 2'b00;
                        end
                    `BR_BLTU:
                        begin
                            if (!cf)
                                pc_sel = 2'b01;
                            else
                                pc_sel = 2'b00;
                        end
                    `BR_BGEU:
                        begin
                            if (cf)
                                pc_sel = 2'b01;
                            else
                                pc_sel = 2'b00;
                        end
                    default: pc_sel = 2'b00;
                endcase
            end
        else if (inst[4:0] == `OPCODE_JALR)
            begin
                  pc_sel = 2'b10;
            end
        else if(inst[4:0] == `OPCODE_JAL)
            pc_sel = 2'b01;
        else if (inst[4:0] == `OPCODE_SYSTEM)
            pc_sel = 2'b11;
        else
            pc_sel = 2'b00;
        end
endmodule
