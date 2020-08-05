`timescale 1ns / 1ps
`include "defines.v"
/*******************************************************************
*
* Module: single_cycle_dp.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module that constructs the full single cycle
*              datapath by connecting together all of its components
*
* Change history: 10/23/19 - Added to the project
*                 10/25/19 - Removed the part implemented before for testing on the Nexys A7 Board
*
**********************************************************************/

module pipelined_dp(
    input clk,
    input rst,
    input [1:0] ledSel, 
    input [3:0] ssdSel,
    output reg [15:0] leds, 
    output reg [12:0] ssd
);

    // Program Counter Input
    wire [31:0] pc_in;
     // Program Counter Output, Instruction Memory Output
    wire [31:0] pc_out, inst_out;
    // Control signals after MUX
    wire [9:0] control_signals;
    // Ex/MEM control signals
    wire [6:0] EX_MEM_control_signals;
    // Control Signals: MemRead, MemWrite, ALUSrc, RegWrite
    wire memRead, memWrite, ALUSrc, regWrite;
    /* Control Signal: Branch -> 2 bits to be a select line for
       the 4x1 MUX whose output is the PC's next input */ 
    wire  branch;
    /* Control Signal: MemToReg -> 3 bits to be a select line for
       the 8x1 MUX whose output is the RF Write Data */ 
    wire [2:0] memToReg;
    // Control Signal: ALUOp 
    wire [1:0] ALUOp;
    // RF Read Data 1 & Read Data 2
    wire [31:0] read_data1, read_data2;
    // Imm Gen Output
    wire [31:0] imm_out;
    // output of 2x1 mux whose inputs are the readdata2 and the immedate output
    wire [31:0] RF_ALU_out;
    // 2nd ALU Input
    wire [31:0] ALU_2nd_in;
    // ALU Select Line
    wire [4:0] ALU_sel;
    // ALU Result
    wire [31:0] ALU_result;
    // PC for JALR Instruction
    wire [31:0] JALR_PC;
    // Data Memory Output
    wire [31:0] data_mem_out;
    // RF Write Data
    wire [31:0] RF_write_data;
    // PC + 4
    wire [31:0] pc_adder_out;
    // PC + Imm
    wire [31:0] pc_adder_branch_out;
    // carry flag, zero flag, overflow flag, sign flag
    wire cf, zf, vf, sf;
    // Select line for the 4x1 MUX for the next PC
    wire[1:0] pc_src;
    // signal to know whether the PC would be modified or not depending on the instruction ( branch taken or not ) 
    wire pc_sel;
    
    //declarations for the pipline registers
    wire [31:0] IF_ID_PC, IF_ID_Inst, IF_ID_pc_adder_out;

    // ID_EX_Rs1 and ID_EX_Rs2 are for the forwarding unit
    wire [4:0] ID_EX_Rs1, ID_EX_Rs2, ID_EX_Rd; 
    wire [9:0] ID_EX_Ctrl;
    wire [31:0] ID_EX_PC, ID_EX_RegR1, ID_EX_RegR2, ID_EX_Imm, ID_EX_pc_adder_out;
    wire [4:0] ID_EX_shamt;
    wire [4:0] ID_EX_Func;
    wire [4:0] ID_EX_opcode;

    wire [31:0] EX_MEM_BranchAddOut, EX_MEM_ALU_out, EX_MEM_RegR2, EX_MEM_Imm, EX_MEM_pc_adder_out;
    wire [4:0] EX_MEM_Rd, EX_MEM_opcode;
    wire [6:0] EX_MEM_Ctrl;
    wire [2:0] EX_MEM_Func;
    wire EX_MEM_Carry, EX_MEM_Zero, EX_MEM_Overflow, EX_MEM_Sign;
    
    wire [31:0] MEM_WB_Mem_out, MEM_WB_ALU_out, MEM_WB_pc_adder_out, MEM_WB_Imm, MEM_WB_BranchAddOut;
    wire [3:0] MEM_WB_Ctrl;
    wire [4:0] MEM_WB_Rd;
    wire [1:0] forwardA, forwardB;
    //creating the slow clk signal
//    wire sClk;
    //signals for the single ported memory 
    wire [31:0] mem_addr; 
    wire [31:0] ID_EX_mem_out, EX_MEM_mem_out , MEM_WB_mem_out; 
    //remember to remove the unused signals from the inst mem and data mem modules
    wire mem_mux_sel;
    // first and second ALU inputs
    wire [31:0] ALUin1, ALUin2;
    // stall signal
    wire stall;
    //wire t;
    wire[31:0] mem_out;
     //DFlipFlop DFF(.clk(~clk), .rst(rst), .D(clk), .Q(sClk));
    wire[31:0] inst_decompressed;
    
    wire is_regular_inst;
    wire ebreak_signal;
    decoder_compressed decoder_c ( mem_out_final[15:0],  inst_decompressed);
    

   // clk_mult cm(.clk(clk), .rst(rst), .counter(sClk));
   Clock_divider half_freq (clk,sClk);
    // Instantiating MUX Module to select next PC's source
    MUX4x1 next_pc_source(.sel(pc_src), .in1(pc_adder_out), .in2(pc_adder_branch_out), .in3(JALR_PC), .in4(pc_out), .out(pc_in)); 
    // Instantiating PC Module
    PC pc_mod(.clk(sClk), .rst(rst), .in(pc_in), .load(1'b1), .out(pc_out));
    
    // Instantiating Instruction Memory Module (TO BE REMOVED)
    // InstMem inst_mem_mod(.addr(pc_out[7:0]), .data_out(inst_out));
    wire [31:0] mem_out_final_intermediate;
    wire [31:0] mem_out_final;
    
 
     //TFF mem_mux_ff(.clk(clk), .rst(rst), .t(1'b1), .q(mem_mux_sel));
    //mem MUX to choose either pc or the address computed from the alu for lw 
    nbitMux #(32) mem_MUX(.b(EX_MEM_ALU_out), .a(pc_out), .s(!sClk), .out(mem_addr));
    // data_mem_MUX to choose the whether the instruction will be fetched or NOPs
    //nbitMux #(32) mem_data_MUX(.a(32'b0000000_00000_00000_000_00000_0110011), .b(mem_out), .s(sClk), .out(mem_out_final_intermediate));
    //Single ported mem for instructions and data
    memory memory_instance(.clk(clk), .sClk(sClk), .mem_write(EX_MEM_Ctrl[0]),.mem_Read(EX_MEM_Ctrl[1]), .addr_inst(pc_out),.addr(mem_addr),  .func3(EX_MEM_Func), .data_in(EX_MEM_RegR2), .data_out(mem_out), .is_regular_inst(is_regular_inst));
    // Instantiating Adder Module for PC + 4
    
    wire[31:0] pc_inc;
    assign pc_inc = (is_regular_inst)? 4:2;
    
    assign inst_out =  is_regular_inst ? mem_out_final : inst_decompressed ; 
    
    RCA pc_adder_4(.x(pc_inc), .y(pc_out), .cin(1'b0), .sum(pc_adder_out), .cout());
    // flushing the instruction being fetched if the pc_src is 1
    wire flush_wire;
    assign flush_wire = (pc_src == 2'b00 ) ? 1 : 0;


    nbitMux #(32) IF_ID_inst_MUX(.a(32'b0000000_00000_00000_000_00000_0110011), .b(mem_out), .s(flush_wire), .out(mem_out_final));
    // WE NEED TO CHECK THE STALL LOAD...
    Register #(95) IF_ID(.clk(!sClk), .rst(rst), .load(1), .D({pc_out, inst_out, pc_adder_out}), .Q({IF_ID_PC, IF_ID_Inst, IF_ID_pc_adder_out}));




     //instantiating the hazard detection module
    //hazard_detection hazard_det(.clk(clk), .IF_ID_RegisterRs1(IF_ID_Inst[`IR_rs1]), .IF_ID_RegisterRs2(IF_ID_Inst[`IR_rs2]), .ID_EX_RegisterRd(ID_EX_Rd), .ID_EX_memRead(ID_EX_Ctrl[4]), .stall(stall));
    // Instantiating Control Unit Module
    ContUnit cont_mod( .inst(IF_ID_Inst), .branch(branch), .memRead(memRead), .ebreak_signal(ebreak_signal), .memToReg(memToReg), .ALUOp(ALUOp), .memWrite(memWrite), .ALUSrc(ALUSrc), .regWrite(regWrite));
    // Flush instruction MUX
    // nbitMux #(10) flush_mux(.a({regWrite, memToReg, branch, memRead, memWrite, ALUOp, ALUSrc}), .b(10'b0), .s(stall || !flush_wire), .out(control_signals));
     
     
    nbitMux #(10) flush_mux(.a({regWrite, memToReg, branch, memRead, memWrite, ALUOp, ALUSrc}), .b(10'b0), .s(0), .out(control_signals));
    // Instantiating Register File Module
    // this wire is of unknown function "mem_mux_sel" iplemented by Mr. Hakim  RegFile RF_mod(.clk(!clk), .rst(rst), .regwrite(MEM_WB_Ctrl[3]&mem_mux_sel), .readreg1(IF_ID_Inst[`IR_rs1]),
    RegFile RF_mod(.clk(!sClk), .rst(rst), .regwrite(MEM_WB_Ctrl[3]), .readreg1(IF_ID_Inst[`IR_rs1]),
                   .readreg2(IF_ID_Inst[`IR_rs2]), .writereg(MEM_WB_Rd), .writedata(RF_write_data), .readdata1(read_data1), .readdata2(read_data2));
    // Instantiating Immediate Generator Module
    ImmGenerator immGen_mod(.IR(IF_ID_Inst), .out(imm_out));

 


    wire [4:0] rd=  mem_out_final[`IR_rd];
    Register #(199) ID_EX(.clk(sClk), .rst(rst), .load(1'b1),
    .D({control_signals , IF_ID_PC, read_data1, read_data2, imm_out, {IF_ID_Inst[25], IF_ID_Inst[30], IF_ID_Inst[`IR_funct3]}, IF_ID_Inst[`IR_rs1],
    IF_ID_Inst[`IR_rs2], IF_ID_Inst[`IR_rd], IF_ID_Inst[`IR_opcode], IF_ID_pc_adder_out, IF_ID_Inst[`IR_shamt]}),
    .Q({ID_EX_Ctrl, ID_EX_PC, ID_EX_RegR1, ID_EX_RegR2, ID_EX_Imm, ID_EX_Func, ID_EX_Rs1, ID_EX_Rs2, ID_EX_Rd, ID_EX_opcode, ID_EX_pc_adder_out, ID_EX_shamt}));




    // Instantiating the forwarding unit module
    FC FU(.ID_EX_Rs1(ID_EX_Rs1), .ID_EX_Rs2(ID_EX_Rs2), .MEM_WB_Rd(MEM_WB_Rd),
     .MEM_WB_regWrite(MEM_WB_Ctrl[3]), .FA(forwardA), .FB(forwardB));
    // Instantiating the 4x1 MUX module to select the 1st ALU input
   // MUX4x1 firstInALU(.sel(forwardA), .in1(ID_EX_RegR1), .in2(RF_write_data), .in3(EX_MEM_ALU_out), .in4(32'b0), .out(ALUin1));
   MUX4x1 firstInALU(.sel(forwardA), .in1(ID_EX_RegR1), .in2(RF_write_data), .in3(EX_MEM_ALU_out), .in4(32'b0), .out(ALUin1));
    // Instantiating 2x1 MUX module to select the 2nd input in the MUX that selects the 2nd ALU input
    // CONSIDER USING A NORMAL 2x1 MUX INSTEAD OF THIS ONE
    nbitMux #(32) ALU_2nd_source_mod(.a(ID_EX_RegR2), .b(ID_EX_Imm),.s(ID_EX_Ctrl[0]), .out(RF_ALU_out));
    // Instantiating the 4x1 MUX module to select the 2nd ALU input
   // MUX4x1 secondInALU(.sel(forwardB), .in1(RF_ALU_out), .in2(RF_write_data), .in3(EX_MEM_ALU_out), .in4(32'b0), .out(ALUin2));
       MUX4x1 secondInALU(.sel(forwardB), .in1(RF_ALU_out), .in2(RF_write_data), .in3(EX_MEM_ALU_out), .in4(32'b0), .out(ALUin2));
    // Instantiating ALU Control Unit Module
    ALU_ContUnit alu_cont_mod(.ALUOp(ID_EX_Ctrl[2:1]), .Inst_25_30and14to12(ID_EX_Func), .ALU_sel(ALU_sel));
    // Instantiating ALU Module
    ALU alu_mod(.a(ALUin1), .b(ALUin2), .shamt(ID_EX_shamt), .r(ALU_result), .cf(cf), .zf(zf), .vf(vf), .sf(sf), .alufn(ALU_sel));
    // Instantiating Adder Module for PC + immediate output
    RCA pc_adder_imm(.x(ID_EX_Imm), .y(ID_EX_PC), .cin(1'b0), .sum(pc_adder_branch_out), .cout());  //drive cout -- MAKE SURE OF IF_ID_PC

//EX_MEM_control_signals //REMOVE THIS NEEDLESS MUX
    nbitMux #(7) flush_EX_MEM_cont(.a(ID_EX_Ctrl[9:3]), .b(7'b0), .s(0), .out(EX_MEM_control_signals));

    Register #(184) EX_MEM(.clk(!sClk), .rst(rst), .load(1'b1), .D({EX_MEM_control_signals, pc_adder_branch_out, cf, zf, vf, sf,
                            ALU_result, ID_EX_RegR2, ID_EX_Rd, ID_EX_Func[2:0] ,ID_EX_opcode,ID_EX_Imm, ID_EX_pc_adder_out}),
                            .Q({EX_MEM_Ctrl, EX_MEM_BranchAddOut, EX_MEM_Carry, EX_MEM_Zero, EX_MEM_Overflow,
                                EX_MEM_Sign, EX_MEM_ALU_out, EX_MEM_RegR2, EX_MEM_Rd, EX_MEM_Func, EX_MEM_opcode,EX_MEM_Imm, EX_MEM_pc_adder_out}));



    // calculating JALR_PC
    assign JALR_PC = EX_MEM_ALU_out & -2;
    // Instantiating the Branch Control Unit Module
    branch_ContUnit Branch_CU(.cf(cf), .zf(zf), .vf(vf), .sf(sf), .inst({ID_EX_Func[2:0], ID_EX_opcode}), .pc_sel(pc_src));
    //branch_ContUnit Branch_CU(.cf(EX_MEM_Carry), .zf(EX_MEM_Zero), .vf(EX_MEM_Overflow), .sf(EX_MEM_Sign), .inst({EX_MEM_Func,EX_MEM_opcode}), .pc_sel(pc_sel));
    /* // Instantiating Data Memory Module
    DataMem data_mem_mod(.clk(clk), .MemRead(EX_MEM_Ctrl[1]), .MemWrite(EX_MEM_Ctrl[0]), .func3(EX_MEM_Func),
                         .addr(EX_MEM_ALU_out[7:0]), .data_in(EX_MEM_RegR2), .data_out(data_mem_out));
    */
    //Instantiating PC_in_gen Module
  //  PC_sel_gen pc_sel_mod(.b(ID_EX_Ctrl[5]), .pc_sel(pc_sel), .inst(ID_EX_opcode), .stall(stall), .pc_sel_src(pc_src));


    
    Register #(168) MEM_WB(.clk(sClk), .rst(rst), .load(1'b1),
                           .D({EX_MEM_Ctrl[6:3], mem_out, EX_MEM_ALU_out, EX_MEM_Rd, EX_MEM_Imm, EX_MEM_BranchAddOut, EX_MEM_pc_adder_out}),
                           .Q({MEM_WB_Ctrl, MEM_WB_mem_out, MEM_WB_ALU_out, MEM_WB_Rd, MEM_WB_Imm, MEM_WB_BranchAddOut, MEM_WB_pc_adder_out}));



    // Instantiating 8x1 MUX Module for RF Write Data
    MUX8x1 RF_write_src(.sel(MEM_WB_Ctrl[2:0]), .In1(MEM_WB_ALU_out), .In2(MEM_WB_mem_out), .In3(MEM_WB_Imm),
                        .In4(MEM_WB_BranchAddOut), .In5(MEM_WB_pc_adder_out), .In6(), .In7(),
                        .In8(), .Out(RF_write_data)); //drive unused inputs 


    always @(*) begin
            case(ledSel)
                0: leds <= IF_ID_Inst[15:0];
                1: leds <= IF_ID_Inst[31:16];
                2: leds <= {pc_adder_branch_out, memRead, memToReg, ALUOp, memWrite, 
                            ALUSrc, regWrite, zf, EX_MEM_Ctrl[6:5], ALU_sel};
                default: leds <= 0;            
            endcase
            
            case(ssdSel)
                0: ssd <= pc_out[12:0];
                1: ssd <= pc_adder_out[12:0]; 
                2: ssd <= pc_adder_branch_out[12:0]; 
                3: ssd <= pc_in[12:0];
                4: ssd <= read_data1[12:0]; 
                5: ssd <= read_data2[12:0]; 
                6: ssd <= imm_out[12:0]; 
                7: ssd <= RF_write_data[12:0]; 
                8: ssd <= ALUin2[12:0];
                9: ssd <= ALU_result[12:0]; 
                10: ssd <= mem_out[12:0];
                default: ssd <= 0;
            endcase
        end

endmodule
