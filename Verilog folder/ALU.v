`timescale 1ns / 1ps
`include "defines.v"
/*******************************************************************
*
* Module: ALU.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for the ALU
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module ALU(
	input   wire [31:0] a, b, 
    input   wire [4:0]  shamt,
    output  reg  [31:0] r,
    output  wire cf, zf, vf, sf,    // carry flag, zero flag, overflow, sign
    input   wire [4:0]  alufn        //alu select
);

    wire [31:0] add, sub, op_b;            //result of add, sub and inverted number
    wire cfa, cfs;                        //carry flow adder and carry flow subtractor
    assign op_b = (~b);                 //two's comp for subtract
    assign {cf, add} = alufn[0] ? (a + op_b + 1'b1) : (a + b);
    assign zf = (add == 0);
    assign sf = add[31];
    assign vf = (a[31] ^ (op_b[31]) ^ add[31] ^ cf);
    wire[31:0] sh;
    wire [63:0] sign_extended_a;
    assign sign_extended_a = (a[31]) ? {32'b1 , a}: {32'b0 , a};
    wire [63:0] multiplication_result;
    wire [63:0] multiplication_result_s_s;
    wire [63:0] multiplication_result_s_u;
    assign multiplication_result = a * b;
    assign multiplication_result_s_s = $signed(a) * $signed(b);
    assign multiplication_result_s_u = (a[31]) ? {1'b1, a * b} : {1'b0, a * b};
    shifter shifter0(.a(a), .shamt(shamt), .type(alufn[1:0]), .r(sh));    
    always @*
        begin
            r = 0;
            (* parallel_case *)
            case (alufn)
                // arithmetic
                `ALU_ADD:
                    r = add;
                `ALU_SUB:
                    r = add;
                `ALU_PASS:
                    r = b;
                // logic
                `ALU_OR:
                    r = a | b;
                `ALU_AND:
                    r = a & b;
                `ALU_XOR:
                    r = a ^ b;
                // shift
                `ALU_SRL:
                    r=sh;    //srl
                `ALU_SLL:
                    r=sh;    //sll
                `ALU_SRA:
                    r=sh;    //sra
                // slt & sltu
                `ALU_SLT:
                    r = {31'b0,(sf != vf)}; 
                `ALU_SLTU:
                    r = {31'b0,(~cf)};
                `ALU_MUL:
                    r = multiplication_result_s_s[31:0];
                `ALU_MULH:
                    r = multiplication_result_s_s[63:32];
                `ALU_MULHSU:
                    r = multiplication_result_s_u[63:32];
                `ALU_MULHU:
                    r = multiplication_result[63:32];
                `ALU_DIV:
                    r = $signed(a) / $signed(b);
                `ALU_DIVU:
                    r = a / b;
                `ALU_REM:
                    r = $signed(a) % $signed(b);
                `ALU_REMU:
                    r = a % b;
            endcase
        end
endmodule
