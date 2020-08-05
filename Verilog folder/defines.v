/*******************************************************************
*
* Module: defines.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module that defines constants to use instead
               of Hard Coded Numeric Value
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/
`define     IR_rs1          19:15
`define     IR_rs2          24:20
`define     IR_rd           11:7
`define     IR_opcode       6:2
`define     IR_funct3       14:12
`define     IR_funct7       31:25
`define     IR_shamt        24:20
`define     IR_csr          31:20

`define     Opcode_C           1:0
`define     Funct2_R_C         6:5
`define     Funct2_C           11:10
`define     Funct3_C           15:13


`define     OPCODE_Branch   5'b11_000
`define     OPCODE_Load     5'b00_000
`define     OPCODE_Store    5'b01_000
`define     OPCODE_JALR     5'b11_001
`define     OPCODE_JAL      5'b11_011
`define     OPCODE_Arith_I  5'b00_100
`define     OPCODE_Arith_R  5'b01_100
`define     OPCODE_AUIPC    5'b00_101
`define     OPCODE_LUI      5'b01_101
`define     OPCODE_SYSTEM   5'b11_100 
`define     OPCODE_Custom   5'b10_001

`define     F3_ADD          3'b000
`define     F3_SLL          3'b001
`define     F3_SLT          3'b010
`define     F3_SLTU         3'b011
`define     F3_XOR          3'b100
`define     F3_SRL          3'b101
`define     F3_OR           3'b110
`define     F3_AND          3'b111

`define     F2_SRLI     2'b00
`define     F2_SRAI     2'b01
`define     F2_ANDI     2'b10

`define     F2_R_SUB      2'b00
`define     F2_R_XOR      2'b01
`define     F2_R_OR       2'b10
`define     F2_R_AND      2'b11

`define     BR_BEQ          3'b000
`define     BR_BNE          3'b001
`define     BR_BLT          3'b100
`define     BR_BGE          3'b101
`define     BR_BLTU         3'b110
`define     BR_BGEU         3'b111

`define     LB              3'b000
`define     LH              3'b001
`define     LW              3'b010
`define     LBU             3'b100
`define     LHU             3'b101

`define     SB              3'b000
`define     SH              3'b001
`define     SW              3'b010


`define     OPCODE          IR[`IR_opcode]

`define     ALU_ADD         5'b00000
`define     ALU_SUB         5'b00001
`define     ALU_PASS        5'b00011
`define     ALU_OR          5'b00100
`define     ALU_AND         5'b00101
`define     ALU_XOR         5'b00111
`define     ALU_SRL         5'b01000
`define     ALU_SRA         5'b01010
`define     ALU_SLL         5'b01001
`define     ALU_SLT         5'b01101
`define     ALU_SLTU        5'b01111

`define     ALU_MUL         5'b10000
`define     ALU_MULH        5'b10001
`define     ALU_MULHSU      5'b10011
`define     ALU_MULHU       5'b10100
`define     ALU_DIV         5'b10101
`define     ALU_DIVU        5'b10111
`define     ALU_REM         5'b11000
`define     ALU_REMU        5'b11010


`define     SYS_EC_EB       3'b000
`define     SYS_CSRRW       3'b001
`define     SYS_CSRRS       3'b010
`define     SYS_CSRRC       3'b011
`define     SYS_CSRRWI      3'b101
`define     SYS_CSRRSI      3'b110
`define     SYS_CSRRCI      3'b111
