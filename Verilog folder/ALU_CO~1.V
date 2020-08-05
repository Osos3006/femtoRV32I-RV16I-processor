`timescale 1ns / 1ps
`include "defines.v"
/*******************************************************************
*
* Module: ALU_ContUnit.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for the ALU Control Unit
*
* Change history: 10/23/19 - Added to the project
*                 10/25/19 - Supported the other ALU Operations by checking the ALUOp
                             Signal and the func3 portion of the instruction
*
**********************************************************************/

module ALU_ContUnit(
    input [1:0] ALUOp,
    input [4:0] Inst_25_30and14to12,
    output reg [4:0] ALU_sel
);
    always @*
        begin
            case (ALUOp)
                2'b00:                      // load
                    ALU_sel = `ALU_ADD;
                2'b01:                      // branch
                    ALU_sel = `ALU_SUB;
                2'b10:                      // R-format
                    begin
                        case(Inst_25_30and14to12[2:0])   // func3
                            `F3_ADD:         // add, sub, or mul
                                begin
                                    case (Inst_25_30and14to12[4]) //inst[25]   
                                        0: //add or mul
                                            case(Inst_25_30and14to12[3]) //inst[30]
                                                0:  ALU_sel = `ALU_ADD;
                                                1:  ALU_sel = `ALU_SUB;
                                            endcase
                                        1:          // add two's comp (SUB)
                                            ALU_sel = `ALU_MUL;
                                    endcase
                                end
                            `F3_SLL:        //SLL or MULH
                                case (Inst_25_30and14to12[4]) //inst[25]
                                    0:  ALU_sel = `ALU_SLL;
                                    1:  ALU_sel = `ALU_MULH;
                                endcase
                            `F3_SLT:        //SLT or MULHSU
                                case (Inst_25_30and14to12[4]) //inst[25]
                                    0:  ALU_sel = `ALU_SLT;
                                    1:  ALU_sel = `ALU_MULHSU;
                                endcase
                            `F3_SLTU:       //sltu
                                case (Inst_25_30and14to12[4]) //inst[25]
                                    0:  ALU_sel = `ALU_SLTU;
                                    1:  ALU_sel = `ALU_MULHU;
                                endcase
                            `F3_XOR:        //xor
                                case (Inst_25_30and14to12[4]) //inst[25]
                                    0:  ALU_sel = `ALU_XOR;
                                    1:  ALU_sel = `ALU_DIV;
                                endcase
                            `F3_SRL:        //sr
                                    case (Inst_25_30and14to12[4]) // inst[25]
                                        0:
                                            case(Inst_25_30and14to12[3]) //inst[30]
                                                0:  ALU_sel = `ALU_SRL;
                                                1:  ALU_sel = `ALU_SRA;
                                            endcase
                                        1: ALU_sel = `ALU_DIVU;
                                    endcase
                            `F3_OR:        //or 
                                case (Inst_25_30and14to12[4]) //inst[25]
                                    0:  ALU_sel = `ALU_REM;
                                    1:  ALU_sel = `ALU_OR;
                                endcase
                            `F3_AND:        //and
                                case (Inst_25_30and14to12[4]) //inst[25]
                                    0:  ALU_sel = `ALU_REMU;
                                    1:  ALU_sel = `ALU_AND;
                                endcase
                        endcase 
                    end
                2'b11:                      // I-Format
                    begin
                        case(Inst_25_30and14to12[2:0])   // func3
                            `F3_ADD:         // add, sub, or mul
                                ALU_sel = `ALU_ADD;
                            `F3_SLL:        //SLL or MULH
                               
                                     ALU_sel = `ALU_SLL;
                                   
                           
                            `F3_SLT:        //SLT or MULHSU
                               
                                      ALU_sel = `ALU_SLT;
                                   
                               
                            `F3_SLTU:       //sltu
                               
                                     ALU_sel = `ALU_SLTU;
                                   
                               
                            `F3_XOR:        //xor
                               
                                     ALU_sel = `ALU_XOR;
                                
                               
                            `F3_SRL:        //sr
                                   
                                            case(Inst_25_30and14to12[3]) //inst[30]
                                                0:  ALU_sel = `ALU_SRL;
                                                1:  ALU_sel = `ALU_SRA;
                                            endcase
                                       
                            `F3_OR:        //or 
                            
                                     ALU_sel = `ALU_OR;
                            
                            `F3_AND:        //and
        
                                     ALU_sel = `ALU_AND;
                               
                        endcase 
                    end


                 default : ALU_sel = `ALU_PASS; // default value 
            endcase
        end
endmodule
