`timescale 1ns / 1ps
`include "defines.v"

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2019 08:35:00 PM
// Design Name: 
// Module Name: decoder_compressed
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


module decoder_compressed( input [15:0] Inst_C, output reg [31:0] inst);


always @(*)begin 
    case (Inst_C[`Opcode_C])
         2'b00:
            case (Inst_C[`Funct3_C])
                `F3_SLT: inst = {5'b00000,Inst_C[5],Inst_C[12:10],Inst_C[6],2'b00,2'b00,Inst_C[9:7],`F3_SLT,2'b00,Inst_C[4:2],`OPCODE_Load,2'b11}; // F3_LW
                `F3_OR: inst = {5'b00000,Inst_C[5],Inst_C[12],2'b00,Inst_C[4:2],2'b00,Inst_C[9:7],`F3_SLT,Inst_C[11:10],Inst_C[6],2'b00,`OPCODE_Store,2'b11}; //F3_SW
            endcase  
            
        2'b01:
            case (Inst_C[`Funct3_C])
                `F3_ADD : inst = {{7{Inst_C[12]}},Inst_C[6:2],Inst_C[11:7],`F3_ADD,Inst_C[11:7],`OPCODE_Arith_I,2'b11};  // F3_ADDI
                `F3_SLL : inst = {1'b0,Inst_C[8],Inst_C[10:9],Inst_C[6],Inst_C[7],Inst_C[2],Inst_C[11],Inst_C[5:3],Inst_C[12],8'b00000000,5'b00001,`OPCODE_JAL,2'b11}; // F3_jal
                `F3_SLTU : inst = {{15{Inst_C[12]}},Inst_C[6:2],Inst_C[11:7],`OPCODE_LUI,2'b11}; // F3_Lui
                3'b100:
                    case (Inst_C[`Funct2_C])
                       `F2_SRLI: inst = {7'b0000000,Inst_C[6:2],2'b00,Inst_C[9:7],`F3_SRL,2'b00,Inst_C[9:7],`OPCODE_Arith_I, 2'b11};
                       `F2_SRAI: inst = {7'b0100000,Inst_C[6:2],2'b00,Inst_C[9:7],`F3_SRL,2'b00,Inst_C[9:7],`OPCODE_Arith_I, 2'b11};
                       `F2_ANDI: inst = {{7{Inst_C[12]}},Inst_C[12],Inst_C[6:2],2'b00,Inst_C[9:7],`F3_AND,2'b00,Inst_C[9:7],`OPCODE_Arith_I, 2'b11};
                        2'b11:
                           case (Inst_C[`Funct2_R_C])
                                `F2_R_SUB: inst = {7'b0100000,2'b00,Inst_C[4:2],2'b00,Inst_C[9:7],`F3_ADD,2'b00,Inst_C[9:7],`OPCODE_Arith_R,2'b11};
                                `F2_R_XOR: inst = {7'b0000000,2'b00,Inst_C[4:2],2'b00,Inst_C[9:7],`F3_XOR,2'b00,Inst_C[9:7],`OPCODE_Arith_R,2'b11};
                                `F2_R_OR : inst = {7'b0000000,2'b00,Inst_C[4:2],2'b00,Inst_C[9:7],`F3_OR,2'b00,Inst_C[9:7],`OPCODE_Arith_R,2'b11};
                                `F2_R_AND: inst ={7'b0000000,2'b00,Inst_C[4:2],2'b00,Inst_C[9:7],`F3_AND,2'b00,Inst_C[9:7],`OPCODE_Arith_R,2'b11};
                           endcase
                    endcase
            endcase
        2'b10:
            case (Inst_C[`Funct3_C])
               `F3_ADD: inst = {7'b0000000, Inst_C[12], Inst_C[6:2],Inst_C[11:7],`F3_SLL, Inst_C[11:7],`OPCODE_Arith_I,2'b11}; // F3_slli
               3'b100: 
                    case (Inst_C[6:2])
                    0: case (Inst_C[11:7])
                       //EBREAK
                        0 : inst= {{11{0}},1'b1,{13{0}},`OPCODE_SYSTEM,2'b11};  
                       //JALR
                       default:
                          inst = {{12{0}},Inst_C[11:7],3'b000,5'b00001,`OPCODE_JALR, 2'b11};
                       endcase
                    //ADD   
                    default: 
                    inst ={7'b0000000,2'b00,Inst_C[4:2],2'b00,Inst_C[9:7],`F3_ADD,2'b00,Inst_C[9:7],`OPCODE_Arith_R,2'b11};
                    endcase
            endcase
   endcase             
 end
 

endmodule




 