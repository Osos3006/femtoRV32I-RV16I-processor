# File saved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new single_cycle_dp work:single_cycle_dp:NOFILE -nosplit
load symbol MUX2x1_32bits work:MUX2x1_32bits:NOFILE HIERBOX pin sel input.left pinBus a input.left [31:0] pinBus b input.left [31:0] pinBus out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol branch_ContUnit work:branch_ContUnit:NOFILE HIERBOX pin cf input.left pin pc_sel output.right pin sf input.left pin vf input.left pin zf input.left pinBus inst input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_AND0 work AND pinBus I0 input [31:0] pinBus I1 input [31:0] pinBus O output [31:0] fillcolor 1
load symbol RegFile work:RegFile:NOFILE HIERBOX pin clk input.left pin regwrite input.left pin rst input.left pinBus readdata1 output.right [31:0] pinBus readdata2 output.right [31:0] pinBus readreg1 input.left [4:0] pinBus readreg2 input.left [4:0] pinBus writedata input.left [31:0] pinBus writereg input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol MUX8x1 work:MUX8x1:NOFILE HIERBOX pinBus In1 input.left [31:0] pinBus In2 input.left [31:0] pinBus In3 input.left [31:0] pinBus In4 input.left [31:0] pinBus In5 input.left [31:0] pinBus In6 input.left [31:0] pinBus In7 input.left [31:0] pinBus In8 input.left [31:0] pinBus Out output.right [31:0] pinBus sel input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ALU_ContUnit work:ALU_ContUnit:NOFILE HIERBOX pinBus ALUOp input.left [1:0] pinBus ALU_sel output.right [3:0] pinBus Inst input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ALU work:ALU:NOFILE HIERBOX pin cf output.right pin sf output.right pin vf output.right pin zf output.right pinBus a input.left [31:0] pinBus alufn input.left [3:0] pinBus b input.left [31:0] pinBus r output.right [31:0] pinBus shamt input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ContUnit work:ContUnit:NOFILE HIERBOX pin ALUSrc output.right pin branch output.right pin memRead output.right pin memWrite output.right pin pc_sel input.left pin regWrite output.right pinBus ALUOp output.right [1:0] pinBus inst input.left [31:0] pinBus memToReg output.right [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol DataMem work:DataMem:NOFILE HIERBOX pin MemRead input.left pin MemWrite input.left pin clk input.left pinBus addr input.left [31:0] pinBus data_in input.left [31:0] pinBus data_out output.right [31:0] pinBus func3 input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ImmGenerator work:ImmGenerator:NOFILE HIERBOX pinBus IR input.left [31:0] pinBus out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol InstMem work:InstMem:NOFILE HIERBOX pinBus addr input.left [31:0] pinBus data_out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol MUX4x1 work:MUX4x1:NOFILE HIERBOX pinBus In1 input.left [31:0] pinBus In2 input.left [31:0] pinBus In3 input.left [31:0] pinBus In4 input.left [31:0] pinBus Out output.right [31:0] pinBus sel input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RCA work:RCA:NOFILE HIERBOX pin cin input.left pin cout output.right pinBus sum output.right [31:0] pinBus x input.left [31:0] pinBus y input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RCA work:abstract:NOFILE HIERBOX pin cin input.left pin cout output.right pinBus sum output.right [31:0] pinBus x input.left [31:0] pinBus y input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol PC work:PC:NOFILE HIERBOX pin clk input.left pin rst input.left pinBus in input.left [31:0] pinBus out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol PC_sel_gen work:PC_sel_gen:NOFILE HIERBOX pin b input.left pin pc_sel input.left pinBus inst input.left [6:2] pinBus pc_sel_src output.right [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load port rst input -pg 1 -y 790
load port clk input -pg 1 -y 770
load inst Branch_CU branch_ContUnit work:branch_ContUnit:NOFILE -autohide -attr @cell(#000000) branch_ContUnit -pinBusAttr inst @name inst[31:0] -pg 1 -lvl 10 -y 360
load inst RF_mod RegFile work:RegFile:NOFILE -autohide -attr @cell(#000000) RegFile -pinBusAttr readdata1 @name readdata1[31:0] -pinBusAttr readdata2 @name readdata2[31:0] -pinBusAttr readreg1 @name readreg1[4:0] -pinBusAttr readreg2 @name readreg2[4:0] -pinBusAttr writedata @name writedata[31:0] -pinBusAttr writereg @name writereg[4:0] -pg 1 -lvl 8 -y 580
load inst cont_mod ContUnit work:ContUnit:NOFILE -autohide -attr @cell(#000000) ContUnit -pinBusAttr ALUOp @name ALUOp[1:0] -pinBusAttr inst @name inst[31:0] -pinBusAttr memToReg @name memToReg[2:0] -pg 1 -lvl 11 -y 60
load inst immGen_mod ImmGenerator work:ImmGenerator:NOFILE -autohide -attr @cell(#000000) ImmGenerator -pinBusAttr IR @name IR[31:0] -pinBusAttr out @name out[31:0] -pg 1 -lvl 1 -y 280
load inst pc_adder_4 RCA work:RCA:NOFILE -autohide -attr @cell(#000000) RCA -pinAttr cout @attr n/c -pinBusAttr sum @name sum[31:0] -pinBusAttr x @name x[31:0] -pinBusAttr x @attr V=X\"00000004\" -pinBusAttr y @name y[31:0] -pg 1 -lvl 2 -y 650
load inst RF_write_src MUX8x1 work:MUX8x1:NOFILE -autohide -attr @cell(#000000) MUX8x1 -pinBusAttr In1 @name In1[31:0] -pinBusAttr In2 @name In2[31:0] -pinBusAttr In3 @name In3[31:0] -pinBusAttr In4 @name In4[31:0] -pinBusAttr In5 @name In5[31:0] -pinBusAttr In6 @name In6[31:0] -pinBusAttr In7 @name In7[31:0] -pinBusAttr In8 @name In8[31:0] -pinBusAttr Out @name Out[31:0] -pinBusAttr sel @name sel[2:0] -pg 1 -lvl 7 -y 380
load inst alu_mod ALU work:ALU:NOFILE -autohide -attr @cell(#000000) ALU -pinBusAttr a @name a[31:0] -pinBusAttr alufn @name alufn[3:0] -pinBusAttr b @name b[31:0] -pinBusAttr r @name r[31:0] -pinBusAttr shamt @name shamt[4:0] -pg 1 -lvl 9 -y 360
load inst ALU_2nd_source_mod MUX2x1_32bits work:MUX2x1_32bits:NOFILE -autohide -attr @cell(#000000) MUX2x1_32bits -pinBusAttr a @name a[31:0] -pinBusAttr b @name b[31:0] -pinBusAttr out @name out[31:0] -pg 1 -lvl 12 -y 260
load inst JALR_PC_i RTL_AND0 work -attr @cell(#000000) RTL_AND -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr V=X\"FFFFFFFE\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -y 430
load inst alu_cont_mod ALU_ContUnit work:ALU_ContUnit:NOFILE -autohide -attr @cell(#000000) ALU_ContUnit -pinBusAttr ALUOp @name ALUOp[1:0] -pinBusAttr ALU_sel @name ALU_sel[3:0] -pinBusAttr Inst @name Inst[31:0] -pg 1 -lvl 8 -y 780
load inst next_pc_source MUX4x1 work:MUX4x1:NOFILE -autohide -attr @cell(#000000) MUX4x1 -pinBusAttr In1 @name In1[31:0] -pinBusAttr In2 @name In2[31:0] -pinBusAttr In3 @name In3[31:0] -pinBusAttr In4 @name In4[31:0] -pinBusAttr Out @name Out[31:0] -pinBusAttr sel @name sel[1:0] -pg 1 -lvl 3 -y 620
load inst pc_adder_imm RCA work:abstract:NOFILE -autohide -attr @cell(#000000) RCA -pinAttr cout @attr n/c -pinBusAttr sum @name sum[31:0] -pinBusAttr x @name x[31:0] -pinBusAttr y @name y[31:0] -pg 1 -lvl 2 -y 510
load inst pc_mod PC work:PC:NOFILE -autohide -attr @cell(#000000) PC -pinBusAttr in @name in[31:0] -pinBusAttr out @name out[31:0] -pg 1 -lvl 4 -y 700
load inst inst_mem_mod InstMem work:InstMem:NOFILE -autohide -attr @cell(#000000) InstMem -pinBusAttr addr @name addr[31:0] -pinBusAttr data_out @name data_out[31:0] -pg 1 -lvl 5 -y 700
load inst data_mem_mod DataMem work:DataMem:NOFILE -autohide -attr @cell(#000000) DataMem -pinBusAttr addr @name addr[31:0] -pinBusAttr data_in @name data_in[31:0] -pinBusAttr data_out @name data_out[31:0] -pinBusAttr func3 @name func3[2:0] -pg 1 -lvl 6 -y 340
load inst pc_sel_mod PC_sel_gen work:PC_sel_gen:NOFILE -autohide -attr @cell(#000000) PC_sel_gen -pinBusAttr inst @name inst[6:2] -pinBusAttr pc_sel_src @name pc_sel_src[1:0] -pg 1 -lvl 2 -y 200
load net ALU_result[9] -attr @rip r[9] -pin JALR_PC_i I0[9] -pin RF_write_src In1[9] -pin alu_mod r[9] -pin data_mem_mod addr[9]
load net inst_out[8] -attr @rip data_out[8] -pin Branch_CU inst[8] -pin RF_mod writereg[1] -pin alu_cont_mod Inst[8] -pin cont_mod inst[8] -pin immGen_mod IR[8] -pin inst_mem_mod data_out[8]
load net pc_adder_branch_out[19] -attr @rip sum[19] -pin RF_write_src In4[19] -pin next_pc_source In2[19] -pin pc_adder_imm sum[19]
load net read_data2[31] -attr @rip readdata2[31] -pin ALU_2nd_source_mod a[31] -pin RF_mod readdata2[31] -pin data_mem_mod data_in[31]
load net read_data2[8] -attr @rip readdata2[8] -pin ALU_2nd_source_mod a[8] -pin RF_mod readdata2[8] -pin data_mem_mod data_in[8]
load net imm_out[18] -attr @rip out[18] -pin ALU_2nd_source_mod b[18] -pin RF_write_src In3[18] -pin immGen_mod out[18] -pin pc_adder_imm x[18]
load net pc_adder_out[17] -attr @rip sum[17] -pin RF_write_src In5[17] -pin next_pc_source In1[17] -pin pc_adder_4 sum[17]
load net pc_in[19] -attr @rip Out[19] -pin next_pc_source Out[19] -pin pc_mod in[19]
load net ALU_result[26] -attr @rip r[26] -pin JALR_PC_i I0[26] -pin RF_write_src In1[26] -pin alu_mod r[26] -pin data_mem_mod addr[26]
load net inst_out[7] -attr @rip data_out[7] -pin Branch_CU inst[7] -pin RF_mod writereg[0] -pin alu_cont_mod Inst[7] -pin cont_mod inst[7] -pin immGen_mod IR[7] -pin inst_mem_mod data_out[7]
load net read_data2[22] -attr @rip readdata2[22] -pin ALU_2nd_source_mod a[22] -pin RF_mod readdata2[22] -pin data_mem_mod data_in[22]
load net ALU_2nd_in[23] -attr @rip out[23] -pin ALU_2nd_source_mod out[23] -pin alu_mod b[23]
load net JALR_PC[13] -attr @rip O[13] -pin JALR_PC_i O[13] -pin next_pc_source In3[13]
load net inst_out[13] -attr @rip data_out[13] -pin Branch_CU inst[13] -pin alu_cont_mod Inst[13] -pin cont_mod inst[13] -pin data_mem_mod func3[1] -pin immGen_mod IR[13] -pin inst_mem_mod data_out[13]
load net inst_out[18] -attr @rip data_out[18] -pin Branch_CU inst[18] -pin RF_mod readreg1[3] -pin alu_cont_mod Inst[18] -pin cont_mod inst[18] -pin immGen_mod IR[18] -pin inst_mem_mod data_out[18]
load net RF_write_data[31] -attr @rip Out[31] -pin RF_mod writedata[31] -pin RF_write_src Out[31]
load net pc_adder_branch_out[23] -attr @rip sum[23] -pin RF_write_src In4[23] -pin next_pc_source In2[23] -pin pc_adder_imm sum[23]
load net read_data2[19] -attr @rip readdata2[19] -pin ALU_2nd_source_mod a[19] -pin RF_mod readdata2[19] -pin data_mem_mod data_in[19]
load net read_data2[4] -attr @rip readdata2[4] -pin ALU_2nd_source_mod a[4] -pin RF_mod readdata2[4] -pin data_mem_mod data_in[4]
load net RF_write_data[3] -attr @rip Out[3] -pin RF_mod writedata[3] -pin RF_write_src Out[3]
load net JALR_PC[27] -attr @rip O[27] -pin JALR_PC_i O[27] -pin next_pc_source In3[27]
load net ALU_2nd_in[8] -attr @rip out[8] -pin ALU_2nd_source_mod out[8] -pin alu_mod b[8]
load net RF_write_data[20] -attr @rip Out[20] -pin RF_mod writedata[20] -pin RF_write_src Out[20]
load net JALR_PC[8] -attr @rip O[8] -pin JALR_PC_i O[8] -pin next_pc_source In3[8]
load net read_data1[22] -attr @rip readdata1[22] -pin RF_mod readdata1[22] -pin alu_mod a[22]
load net RF_write_data[0] -attr @rip Out[0] -pin RF_mod writedata[0] -pin RF_write_src Out[0]
load net pc_adder_out[23] -attr @rip sum[23] -pin RF_write_src In5[23] -pin next_pc_source In1[23] -pin pc_adder_4 sum[23]
load net read_data1[19] -attr @rip readdata1[19] -pin RF_mod readdata1[19] -pin alu_mod a[19]
load net imm_out[30] -attr @rip out[30] -pin ALU_2nd_source_mod b[30] -pin RF_write_src In3[30] -pin immGen_mod out[30] -pin pc_adder_imm x[30]
load net imm_out[24] -attr @rip out[24] -pin ALU_2nd_source_mod b[24] -pin RF_write_src In3[24] -pin immGen_mod out[24] -pin pc_adder_imm x[24]
load net inst_out[31] -attr @rip data_out[31] -pin Branch_CU inst[31] -pin alu_cont_mod Inst[31] -pin cont_mod inst[31] -pin immGen_mod IR[31] -pin inst_mem_mod data_out[31]
load net pc_adder_branch_out[9] -attr @rip sum[9] -pin RF_write_src In4[9] -pin next_pc_source In2[9] -pin pc_adder_imm sum[9]
load net data_mem_out[23] -attr @rip data_out[23] -pin RF_write_src In2[23] -pin data_mem_mod data_out[23]
load net pc_adder_branch_out[16] -attr @rip sum[16] -pin RF_write_src In4[16] -pin next_pc_source In2[16] -pin pc_adder_imm sum[16]
load net pc_out[24] -attr @rip out[24] -pin inst_mem_mod addr[24] -pin next_pc_source In4[24] -pin pc_adder_4 y[24] -pin pc_adder_imm y[24] -pin pc_mod out[24]
load net pc_out[11] -attr @rip out[11] -pin inst_mem_mod addr[11] -pin next_pc_source In4[11] -pin pc_adder_4 y[11] -pin pc_adder_imm y[11] -pin pc_mod out[11]
load net pc_out[1] -attr @rip out[1] -pin inst_mem_mod addr[1] -pin next_pc_source In4[1] -pin pc_adder_4 y[1] -pin pc_adder_imm y[1] -pin pc_mod out[1]
load net ALU_2nd_in[18] -attr @rip out[18] -pin ALU_2nd_source_mod out[18] -pin alu_mod b[18]
load net ALU_result[8] -attr @rip r[8] -pin JALR_PC_i I0[8] -pin RF_write_src In1[8] -pin alu_mod r[8] -pin data_mem_mod addr[8]
load net pc_adder_out[6] -attr @rip sum[6] -pin RF_write_src In5[6] -pin next_pc_source In1[6] -pin pc_adder_4 sum[6]
load net imm_out[17] -attr @rip out[17] -pin ALU_2nd_source_mod b[17] -pin RF_write_src In3[17] -pin immGen_mod out[17] -pin pc_adder_imm x[17]
load net pc_in[21] -attr @rip Out[21] -pin next_pc_source Out[21] -pin pc_mod in[21]
load net pc_src[1] -attr @rip pc_sel_src[1] -pin next_pc_source sel[1] -pin pc_sel_mod pc_sel_src[1]
load net read_data2[9] -attr @rip readdata2[9] -pin ALU_2nd_source_mod a[9] -pin RF_mod readdata2[9] -pin data_mem_mod data_in[9]
load net ALU_result[25] -attr @rip r[25] -pin JALR_PC_i I0[25] -pin RF_write_src In1[25] -pin alu_mod r[25] -pin data_mem_mod addr[25]
load net ALUOp[0] -attr @rip ALUOp[0] -pin alu_cont_mod ALUOp[0] -pin cont_mod ALUOp[0]
load net RF_write_data[28] -attr @rip Out[28] -pin RF_mod writedata[28] -pin RF_write_src Out[28]
load net ALU_result[20] -attr @rip r[20] -pin JALR_PC_i I0[20] -pin RF_write_src In1[20] -pin alu_mod r[20] -pin data_mem_mod addr[20]
load net inst_out[6] -attr @rip data_out[6] -pin Branch_CU inst[6] -pin alu_cont_mod Inst[6] -pin cont_mod inst[6] -pin immGen_mod IR[6] -pin inst_mem_mod data_out[6] -pin pc_sel_mod inst[6]
load net pc_adder_out[18] -attr @rip sum[18] -pin RF_write_src In5[18] -pin next_pc_source In1[18] -pin pc_adder_4 sum[18]
load net ALU_2nd_in[22] -attr @rip out[22] -pin ALU_2nd_source_mod out[22] -pin alu_mod b[22]
load net inst_out[17] -attr @rip data_out[17] -pin Branch_CU inst[17] -pin RF_mod readreg1[2] -pin alu_cont_mod Inst[17] -pin cont_mod inst[17] -pin immGen_mod IR[17] -pin inst_mem_mod data_out[17]
load net inst_out[12] -attr @rip data_out[12] -pin Branch_CU inst[12] -pin alu_cont_mod Inst[12] -pin cont_mod inst[12] -pin data_mem_mod func3[0] -pin immGen_mod IR[12] -pin inst_mem_mod data_out[12]
load net JALR_PC[19] -attr @rip O[19] -pin JALR_PC_i O[19] -pin next_pc_source In3[19]
load net pc_adder_branch_out[4] -attr @rip sum[4] -pin RF_write_src In4[4] -pin next_pc_source In2[4] -pin pc_adder_imm sum[4]
load net read_data2[25] -attr @rip readdata2[25] -pin ALU_2nd_source_mod a[25] -pin RF_mod readdata2[25] -pin data_mem_mod data_in[25]
load net JALR_PC[26] -attr @rip O[26] -pin JALR_PC_i O[26] -pin next_pc_source In3[26]
load net JALR_PC[14] -attr @rip O[14] -pin JALR_PC_i O[14] -pin next_pc_source In3[14]
load net <const0> -ground -pin JALR_PC_i I1[0] -pin RF_write_src In6[31] -pin RF_write_src In6[30] -pin RF_write_src In6[29] -pin RF_write_src In6[28] -pin RF_write_src In6[27] -pin RF_write_src In6[26] -pin RF_write_src In6[25] -pin RF_write_src In6[24] -pin RF_write_src In6[23] -pin RF_write_src In6[22] -pin RF_write_src In6[21] -pin RF_write_src In6[20] -pin RF_write_src In6[19] -pin RF_write_src In6[18] -pin RF_write_src In6[17] -pin RF_write_src In6[16] -pin RF_write_src In6[15] -pin RF_write_src In6[14] -pin RF_write_src In6[13] -pin RF_write_src In6[12] -pin RF_write_src In6[11] -pin RF_write_src In6[10] -pin RF_write_src In6[9] -pin RF_write_src In6[8] -pin RF_write_src In6[7] -pin RF_write_src In6[6] -pin RF_write_src In6[5] -pin RF_write_src In6[4] -pin RF_write_src In6[3] -pin RF_write_src In6[2] -pin RF_write_src In6[1] -pin RF_write_src In6[0] -pin RF_write_src In7[31] -pin RF_write_src In7[30] -pin RF_write_src In7[29] -pin RF_write_src In7[28] -pin RF_write_src In7[27] -pin RF_write_src In7[26] -pin RF_write_src In7[25] -pin RF_write_src In7[24] -pin RF_write_src In7[23] -pin RF_write_src In7[22] -pin RF_write_src In7[21] -pin RF_write_src In7[20] -pin RF_write_src In7[19] -pin RF_write_src In7[18] -pin RF_write_src In7[17] -pin RF_write_src In7[16] -pin RF_write_src In7[15] -pin RF_write_src In7[14] -pin RF_write_src In7[13] -pin RF_write_src In7[12] -pin RF_write_src In7[11] -pin RF_write_src In7[10] -pin RF_write_src In7[9] -pin RF_write_src In7[8] -pin RF_write_src In7[7] -pin RF_write_src In7[6] -pin RF_write_src In7[5] -pin RF_write_src In7[4] -pin RF_write_src In7[3] -pin RF_write_src In7[2] -pin RF_write_src In7[1] -pin RF_write_src In7[0] -pin RF_write_src In8[31] -pin RF_write_src In8[30] -pin RF_write_src In8[29] -pin RF_write_src In8[28] -pin RF_write_src In8[27] -pin RF_write_src In8[26] -pin RF_write_src In8[25] -pin RF_write_src In8[24] -pin RF_write_src In8[23] -pin RF_write_src In8[22] -pin RF_write_src In8[21] -pin RF_write_src In8[20] -pin RF_write_src In8[19] -pin RF_write_src In8[18] -pin RF_write_src In8[17] -pin RF_write_src In8[16] -pin RF_write_src In8[15] -pin RF_write_src In8[14] -pin RF_write_src In8[13] -pin RF_write_src In8[12] -pin RF_write_src In8[11] -pin RF_write_src In8[10] -pin RF_write_src In8[9] -pin RF_write_src In8[8] -pin RF_write_src In8[7] -pin RF_write_src In8[6] -pin RF_write_src In8[5] -pin RF_write_src In8[4] -pin RF_write_src In8[3] -pin RF_write_src In8[2] -pin RF_write_src In8[1] -pin RF_write_src In8[0] -pin pc_adder_4 cin -pin pc_adder_4 x[31] -pin pc_adder_4 x[30] -pin pc_adder_4 x[29] -pin pc_adder_4 x[28] -pin pc_adder_4 x[27] -pin pc_adder_4 x[26] -pin pc_adder_4 x[25] -pin pc_adder_4 x[24] -pin pc_adder_4 x[23] -pin pc_adder_4 x[22] -pin pc_adder_4 x[21] -pin pc_adder_4 x[20] -pin pc_adder_4 x[19] -pin pc_adder_4 x[18] -pin pc_adder_4 x[17] -pin pc_adder_4 x[16] -pin pc_adder_4 x[15] -pin pc_adder_4 x[14] -pin pc_adder_4 x[13] -pin pc_adder_4 x[12] -pin pc_adder_4 x[11] -pin pc_adder_4 x[10] -pin pc_adder_4 x[9] -pin pc_adder_4 x[8] -pin pc_adder_4 x[7] -pin pc_adder_4 x[6] -pin pc_adder_4 x[5] -pin pc_adder_4 x[4] -pin pc_adder_4 x[3] -pin pc_adder_4 x[1] -pin pc_adder_4 x[0] -pin pc_adder_imm cin
load net read_data2[5] -attr @rip readdata2[5] -pin ALU_2nd_source_mod a[5] -pin RF_mod readdata2[5] -pin data_mem_mod data_in[5]
load net RF_write_data[4] -attr @rip Out[4] -pin RF_mod writedata[4] -pin RF_write_src Out[4]
load net pc_adder_out[22] -attr @rip sum[22] -pin RF_write_src In5[22] -pin next_pc_source In1[22] -pin pc_adder_4 sum[22]
load net pc_in[4] -attr @rip Out[4] -pin next_pc_source Out[4] -pin pc_mod in[4]
load net read_data1[18] -attr @rip readdata1[18] -pin RF_mod readdata1[18] -pin alu_mod a[18]
load net JALR_PC[9] -attr @rip O[9] -pin JALR_PC_i O[9] -pin next_pc_source In3[9]
load net ALU_2nd_in[9] -attr @rip out[9] -pin ALU_2nd_source_mod out[9] -pin alu_mod b[9]
load net pc_adder_branch_out[26] -attr @rip sum[26] -pin RF_write_src In4[26] -pin next_pc_source In2[26] -pin pc_adder_imm sum[26]
load net pc_out[21] -attr @rip out[21] -pin inst_mem_mod addr[21] -pin next_pc_source In4[21] -pin pc_adder_4 y[21] -pin pc_adder_imm y[21] -pin pc_mod out[21]
load net RF_write_data[1] -attr @rip Out[1] -pin RF_mod writedata[1] -pin RF_write_src Out[1]
load net data_mem_out[22] -attr @rip data_out[22] -pin RF_write_src In2[22] -pin data_mem_mod data_out[22]
load net ALU_2nd_in[15] -attr @rip out[15] -pin ALU_2nd_source_mod out[15] -pin alu_mod b[15]
load net pc_adder_branch_out[10] -attr @rip sum[10] -pin RF_write_src In4[10] -pin next_pc_source In2[10] -pin pc_adder_imm sum[10]
load net pc_in[13] -attr @rip Out[13] -pin next_pc_source Out[13] -pin pc_mod in[13]
load net pc_in[31] -attr @rip Out[31] -pin next_pc_source Out[31] -pin pc_mod in[31]
load net pc_out[10] -attr @rip out[10] -pin inst_mem_mod addr[10] -pin next_pc_source In4[10] -pin pc_adder_4 y[10] -pin pc_adder_imm y[10] -pin pc_mod out[10]
load net ALU_result[7] -attr @rip r[7] -pin JALR_PC_i I0[7] -pin RF_write_src In1[7] -pin alu_mod r[7] -pin data_mem_mod addr[7]
load net inst_out[1] -attr @rip data_out[1] -pin Branch_CU inst[1] -pin alu_cont_mod Inst[1] -pin cont_mod inst[1] -pin immGen_mod IR[1] -pin inst_mem_mod data_out[1]
load net pc_adder_branch_out[17] -attr @rip sum[17] -pin RF_write_src In4[17] -pin next_pc_source In2[17] -pin pc_adder_imm sum[17]
load net read_data2[6] -attr @rip readdata2[6] -pin ALU_2nd_source_mod a[6] -pin RF_mod readdata2[6] -pin data_mem_mod data_in[6]
load net imm_out[11] -attr @rip out[11] -pin ALU_2nd_source_mod b[11] -pin RF_write_src In3[11] -pin immGen_mod out[11] -pin pc_adder_imm x[11]
load net imm_out[16] -attr @rip out[16] -pin ALU_2nd_source_mod b[16] -pin RF_write_src In3[16] -pin immGen_mod out[16] -pin pc_adder_imm x[16]
load net pc_out[2] -attr @rip out[2] -pin inst_mem_mod addr[2] -pin next_pc_source In4[2] -pin pc_adder_4 y[2] -pin pc_adder_imm y[2] -pin pc_mod out[2]
load net data_mem_out[10] -attr @rip data_out[10] -pin RF_write_src In2[10] -pin data_mem_mod data_out[10]
load net pc_adder_out[7] -attr @rip sum[7] -pin RF_write_src In5[7] -pin next_pc_source In1[7] -pin pc_adder_4 sum[7]
load net pc_in[20] -attr @rip Out[20] -pin next_pc_source Out[20] -pin pc_mod in[20]
load net ALU_result[24] -attr @rip r[24] -pin JALR_PC_i I0[24] -pin RF_write_src In1[24] -pin alu_mod r[24] -pin data_mem_mod addr[24]
load net clk -pin RF_mod clk -port clk -pin data_mem_mod clk -pin pc_mod clk
netloc clk 1 0 8 NJ 770 250J 780 700J 770 980 650 NJ 650 1500 510 1810J 630 2130J
load net RF_write_data[29] -attr @rip Out[29] -pin RF_mod writedata[29] -pin RF_write_src Out[29]
load net ALUOp[1] -attr @rip ALUOp[1] -pin alu_cont_mod ALUOp[1] -pin cont_mod ALUOp[1]
load net inst_out[28] -attr @rip data_out[28] -pin Branch_CU inst[28] -pin alu_cont_mod Inst[28] -pin cont_mod inst[28] -pin immGen_mod IR[28] -pin inst_mem_mod data_out[28]
load net ALU_2nd_in[21] -attr @rip out[21] -pin ALU_2nd_source_mod out[21] -pin alu_mod b[21]
load net pc_adder_out[19] -attr @rip sum[19] -pin RF_write_src In5[19] -pin next_pc_source In1[19] -pin pc_adder_4 sum[19]
load net read_data1[13] -attr @rip readdata1[13] -pin RF_mod readdata1[13] -pin alu_mod a[13]
load net inst_out[11] -attr @rip data_out[11] -pin Branch_CU inst[11] -pin RF_mod writereg[4] -pin alu_cont_mod Inst[11] -pin cont_mod inst[11] -pin immGen_mod IR[11] -pin inst_mem_mod data_out[11]
load net data_mem_out[0] -attr @rip data_out[0] -pin RF_write_src In2[0] -pin data_mem_mod data_out[0]
load net JALR_PC[30] -attr @rip O[30] -pin JALR_PC_i O[30] -pin next_pc_source In3[30]
load net JALR_PC[11] -attr @rip O[11] -pin JALR_PC_i O[11] -pin next_pc_source In3[11]
load net read_data2[2] -attr @rip readdata2[2] -pin ALU_2nd_source_mod a[2] -pin RF_mod readdata2[2] -pin data_mem_mod data_in[2]
load net data_mem_out[24] -attr @rip data_out[24] -pin RF_write_src In2[24] -pin data_mem_mod data_out[24]
load net pc_adder_branch_out[3] -attr @rip sum[3] -pin RF_write_src In4[3] -pin next_pc_source In2[3] -pin pc_adder_imm sum[3]
load net read_data2[24] -attr @rip readdata2[24] -pin ALU_2nd_source_mod a[24] -pin RF_mod readdata2[24] -pin data_mem_mod data_in[24]
load net JALR_PC[25] -attr @rip O[25] -pin JALR_PC_i O[25] -pin next_pc_source In3[25]
load net read_data1[20] -attr @rip readdata1[20] -pin RF_mod readdata1[20] -pin alu_mod a[20]
load net <const1> -power -pin JALR_PC_i I1[31] -pin JALR_PC_i I1[30] -pin JALR_PC_i I1[29] -pin JALR_PC_i I1[28] -pin JALR_PC_i I1[27] -pin JALR_PC_i I1[26] -pin JALR_PC_i I1[25] -pin JALR_PC_i I1[24] -pin JALR_PC_i I1[23] -pin JALR_PC_i I1[22] -pin JALR_PC_i I1[21] -pin JALR_PC_i I1[20] -pin JALR_PC_i I1[19] -pin JALR_PC_i I1[18] -pin JALR_PC_i I1[17] -pin JALR_PC_i I1[16] -pin JALR_PC_i I1[15] -pin JALR_PC_i I1[14] -pin JALR_PC_i I1[13] -pin JALR_PC_i I1[12] -pin JALR_PC_i I1[11] -pin JALR_PC_i I1[10] -pin JALR_PC_i I1[9] -pin JALR_PC_i I1[8] -pin JALR_PC_i I1[7] -pin JALR_PC_i I1[6] -pin JALR_PC_i I1[5] -pin JALR_PC_i I1[4] -pin JALR_PC_i I1[3] -pin JALR_PC_i I1[2] -pin JALR_PC_i I1[1] -pin pc_adder_4 x[2]
load net pc_adder_branch_out[25] -attr @rip sum[25] -pin RF_write_src In4[25] -pin next_pc_source In2[25] -pin pc_adder_imm sum[25]
load net pc_out[17] -attr @rip out[17] -pin inst_mem_mod addr[17] -pin next_pc_source In4[17] -pin pc_adder_4 y[17] -pin pc_adder_imm y[17] -pin pc_mod out[17]
load net pc_out[7] -attr @rip out[7] -pin inst_mem_mod addr[7] -pin next_pc_source In4[7] -pin pc_adder_4 y[7] -pin pc_adder_imm y[7] -pin pc_mod out[7]
load net RF_write_data[5] -attr @rip Out[5] -pin RF_mod writedata[5] -pin RF_write_src Out[5]
load net inst_out[24] -attr @rip data_out[24] -pin Branch_CU inst[24] -pin RF_mod readreg2[4] -pin alu_cont_mod Inst[24] -pin alu_mod shamt[4] -pin cont_mod inst[24] -pin immGen_mod IR[24] -pin inst_mem_mod data_out[24]
load net pc_in[5] -attr @rip Out[5] -pin next_pc_source Out[5] -pin pc_mod in[5]
load net data_mem_out[21] -attr @rip data_out[21] -pin RF_write_src In2[21] -pin data_mem_mod data_out[21]
load net pc_out[22] -attr @rip out[22] -pin inst_mem_mod addr[22] -pin next_pc_source In4[22] -pin pc_adder_4 y[22] -pin pc_adder_imm y[22] -pin pc_mod out[22]
load net pc_adder_out[25] -attr @rip sum[25] -pin RF_write_src In5[25] -pin next_pc_source In1[25] -pin pc_adder_4 sum[25]
load net pc_in[27] -attr @rip Out[27] -pin next_pc_source Out[27] -pin pc_mod in[27]
load net ALU_2nd_in[16] -attr @rip out[16] -pin ALU_2nd_source_mod out[16] -pin alu_mod b[16]
load net ALU_result[6] -attr @rip r[6] -pin JALR_PC_i I0[6] -pin RF_write_src In1[6] -pin alu_mod r[6] -pin data_mem_mod addr[6]
load net inst_out[0] -attr @rip data_out[0] -pin Branch_CU inst[0] -pin alu_cont_mod Inst[0] -pin cont_mod inst[0] -pin immGen_mod IR[0] -pin inst_mem_mod data_out[0]
load net pc_adder_branch_out[11] -attr @rip sum[11] -pin RF_write_src In4[11] -pin next_pc_source In2[11] -pin pc_adder_imm sum[11]
load net pc_in[14] -attr @rip Out[14] -pin next_pc_source Out[14] -pin pc_mod in[14]
load net imm_out[10] -attr @rip out[10] -pin ALU_2nd_source_mod b[10] -pin RF_write_src In3[10] -pin immGen_mod out[10] -pin pc_adder_imm x[10]
load net ALU_result[11] -attr @rip r[11] -pin JALR_PC_i I0[11] -pin RF_write_src In1[11] -pin alu_mod r[11] -pin data_mem_mod addr[11]
load net memRead -pin cont_mod memRead -pin data_mem_mod MemRead
netloc memRead 1 5 7 1500 230 NJ 230 NJ 230 NJ 230 NJ 230 NJ 230 3320
load net ALU_result[18] -attr @rip r[18] -pin JALR_PC_i I0[18] -pin RF_write_src In1[18] -pin alu_mod r[18] -pin data_mem_mod addr[18]
load net read_data2[30] -attr @rip readdata2[30] -pin ALU_2nd_source_mod a[30] -pin RF_mod readdata2[30] -pin data_mem_mod data_in[30]
load net read_data2[7] -attr @rip readdata2[7] -pin ALU_2nd_source_mod a[7] -pin RF_mod readdata2[7] -pin data_mem_mod data_in[7]
load net ALU_result[23] -attr @rip r[23] -pin JALR_PC_i I0[23] -pin RF_write_src In1[23] -pin alu_mod r[23] -pin data_mem_mod addr[23]
load net data_mem_out[7] -attr @rip data_out[7] -pin RF_write_src In2[7] -pin data_mem_mod data_out[7]
load net RF_write_data[17] -attr @rip Out[17] -pin RF_mod writedata[17] -pin RF_write_src Out[17]
load net pc_adder_out[8] -attr @rip sum[8] -pin RF_write_src In5[8] -pin next_pc_source In1[8] -pin pc_adder_4 sum[8]
load net ALU_2nd_in[20] -attr @rip out[20] -pin ALU_2nd_source_mod out[20] -pin alu_mod b[20]
load net pc_adder_out[21] -attr @rip sum[21] -pin RF_write_src In5[21] -pin next_pc_source In1[21] -pin pc_adder_4 sum[21]
load net read_data1[12] -attr @rip readdata1[12] -pin RF_mod readdata1[12] -pin alu_mod a[12]
load net inst_out[10] -attr @rip data_out[10] -pin Branch_CU inst[10] -pin RF_mod writereg[3] -pin alu_cont_mod Inst[10] -pin cont_mod inst[10] -pin immGen_mod IR[10] -pin inst_mem_mod data_out[10]
load net inst_out[29] -attr @rip data_out[29] -pin Branch_CU inst[29] -pin alu_cont_mod Inst[29] -pin cont_mod inst[29] -pin immGen_mod IR[29] -pin inst_mem_mod data_out[29]
load net read_data1[29] -attr @rip readdata1[29] -pin RF_mod readdata1[29] -pin alu_mod a[29]
load net JALR_PC[31] -attr @rip O[31] -pin JALR_PC_i O[31] -pin next_pc_source In3[31]
load net ALU_2nd_in[0] -attr @rip out[0] -pin ALU_2nd_source_mod out[0] -pin alu_mod b[0]
load net JALR_PC[24] -attr @rip O[24] -pin JALR_PC_i O[24] -pin next_pc_source In3[24]
load net JALR_PC[12] -attr @rip O[12] -pin JALR_PC_i O[12] -pin next_pc_source In3[12]
load net data_mem_out[1] -attr @rip data_out[1] -pin RF_write_src In2[1] -pin data_mem_mod data_out[1]
load net read_data2[3] -attr @rip readdata2[3] -pin ALU_2nd_source_mod a[3] -pin RF_mod readdata2[3] -pin data_mem_mod data_in[3]
load net data_mem_out[25] -attr @rip data_out[25] -pin RF_write_src In2[25] -pin data_mem_mod data_out[25]
load net pc_out[16] -attr @rip out[16] -pin inst_mem_mod addr[16] -pin next_pc_source In4[16] -pin pc_adder_4 y[16] -pin pc_adder_imm y[16] -pin pc_mod out[16]
load net pc_out[29] -attr @rip out[29] -pin inst_mem_mod addr[29] -pin next_pc_source In4[29] -pin pc_adder_4 y[29] -pin pc_adder_imm y[29] -pin pc_mod out[29]
load net imm_out[9] -attr @rip out[9] -pin ALU_2nd_source_mod b[9] -pin RF_write_src In3[9] -pin immGen_mod out[9] -pin pc_adder_imm x[9]
load net branch -pin cont_mod branch -pin pc_sel_mod b
netloc branch 1 1 11 270 10 NJ 10 NJ 10 NJ 10 NJ 10 NJ 10 NJ 10 NJ 10 NJ 10 NJ 10 3280
load net pc_adder_branch_out[6] -attr @rip sum[6] -pin RF_write_src In4[6] -pin next_pc_source In2[6] -pin pc_adder_imm sum[6]
load net read_data2[10] -attr @rip readdata2[10] -pin ALU_2nd_source_mod a[10] -pin RF_mod readdata2[10] -pin data_mem_mod data_in[10]
load net read_data2[27] -attr @rip readdata2[27] -pin ALU_2nd_source_mod a[27] -pin RF_mod readdata2[27] -pin data_mem_mod data_in[27]
load net data_mem_out[20] -attr @rip data_out[20] -pin RF_write_src In2[20] -pin data_mem_mod data_out[20]
load net pc_out[8] -attr @rip out[8] -pin inst_mem_mod addr[8] -pin next_pc_source In4[8] -pin pc_adder_4 y[8] -pin pc_adder_imm y[8] -pin pc_mod out[8]
load net inst_out[25] -attr @rip data_out[25] -pin Branch_CU inst[25] -pin alu_cont_mod Inst[25] -pin cont_mod inst[25] -pin immGen_mod IR[25] -pin inst_mem_mod data_out[25]
load net pc_adder_out[24] -attr @rip sum[24] -pin RF_write_src In5[24] -pin next_pc_source In1[24] -pin pc_adder_4 sum[24]
load net pc_in[26] -attr @rip Out[26] -pin next_pc_source Out[26] -pin pc_mod in[26]
load net pc_in[6] -attr @rip Out[6] -pin next_pc_source Out[6] -pin pc_mod in[6]
load net ALU_result[5] -attr @rip r[5] -pin JALR_PC_i I0[5] -pin RF_write_src In1[5] -pin alu_mod r[5] -pin data_mem_mod addr[5]
load net pc_adder_branch_out[28] -attr @rip sum[28] -pin RF_write_src In4[28] -pin next_pc_source In2[28] -pin pc_adder_imm sum[28]
load net data_mem_out[18] -attr @rip data_out[18] -pin RF_write_src In2[18] -pin data_mem_mod data_out[18]
load net ALU_result[10] -attr @rip r[10] -pin JALR_PC_i I0[10] -pin RF_write_src In1[10] -pin alu_mod r[10] -pin data_mem_mod addr[10]
load net pc_in[15] -attr @rip Out[15] -pin next_pc_source Out[15] -pin pc_mod in[15]
load net ALU_result[19] -attr @rip r[19] -pin JALR_PC_i I0[19] -pin RF_write_src In1[19] -pin alu_mod r[19] -pin data_mem_mod addr[19]
load net data_mem_out[6] -attr @rip data_out[6] -pin RF_write_src In2[6] -pin data_mem_mod data_out[6]
load net inst_out[3] -attr @rip data_out[3] -pin Branch_CU inst[3] -pin alu_cont_mod Inst[3] -pin cont_mod inst[3] -pin immGen_mod IR[3] -pin inst_mem_mod data_out[3] -pin pc_sel_mod inst[3]
load net pc_src[0] -attr @rip pc_sel_src[0] -pin next_pc_source sel[0] -pin pc_sel_mod pc_sel_src[0]
load net JALR_PC[28] -attr @rip O[28] -pin JALR_PC_i O[28] -pin next_pc_source In3[28]
load net inst_out[26] -attr @rip data_out[26] -pin Branch_CU inst[26] -pin alu_cont_mod Inst[26] -pin cont_mod inst[26] -pin immGen_mod IR[26] -pin inst_mem_mod data_out[26]
load net read_data1[0] -attr @rip readdata1[0] -pin RF_mod readdata1[0] -pin alu_mod a[0]
load net RF_write_data[18] -attr @rip Out[18] -pin RF_mod writedata[18] -pin RF_write_src Out[18]
load net pc_adder_out[20] -attr @rip sum[20] -pin RF_write_src In5[20] -pin next_pc_source In1[20] -pin pc_adder_4 sum[20]
load net pc_adder_out[9] -attr @rip sum[9] -pin RF_write_src In5[9] -pin next_pc_source In1[9] -pin pc_adder_4 sum[9]
load net read_data2[15] -attr @rip readdata2[15] -pin ALU_2nd_source_mod a[15] -pin RF_mod readdata2[15] -pin data_mem_mod data_in[15]
load net read_data1[15] -attr @rip readdata1[15] -pin RF_mod readdata1[15] -pin alu_mod a[15]
load net ALU_2nd_in[1] -attr @rip out[1] -pin ALU_2nd_source_mod out[1] -pin alu_mod b[1]
load net memWrite -pin cont_mod memWrite -pin data_mem_mod MemWrite
netloc memWrite 1 5 7 1520 250 NJ 250 NJ 250 NJ 250 NJ 250 NJ 250 3300
load net data_mem_out[26] -attr @rip data_out[26] -pin RF_write_src In2[26] -pin data_mem_mod data_out[26]
load net inst_out[22] -attr @rip data_out[22] -pin Branch_CU inst[22] -pin RF_mod readreg2[2] -pin alu_cont_mod Inst[22] -pin alu_mod shamt[2] -pin cont_mod inst[22] -pin immGen_mod IR[22] -pin inst_mem_mod data_out[22]
load net pc_adder_branch_out[5] -attr @rip sum[5] -pin RF_write_src In4[5] -pin next_pc_source In2[5] -pin pc_adder_imm sum[5]
load net read_data2[26] -attr @rip readdata2[26] -pin ALU_2nd_source_mod a[26] -pin RF_mod readdata2[26] -pin data_mem_mod data_in[26]
load net pc_out[20] -attr @rip out[20] -pin inst_mem_mod addr[20] -pin next_pc_source In4[20] -pin pc_adder_4 y[20] -pin pc_adder_imm y[20] -pin pc_mod out[20]
load net ALU_2nd_in[27] -attr @rip out[27] -pin ALU_2nd_source_mod out[27] -pin alu_mod b[27]
load net JALR_PC[17] -attr @rip O[17] -pin JALR_PC_i O[17] -pin next_pc_source In3[17]
load net pc_adder_branch_out[27] -attr @rip sum[27] -pin RF_write_src In4[27] -pin next_pc_source In2[27] -pin pc_adder_imm sum[27]
load net pc_out[19] -attr @rip out[19] -pin inst_mem_mod addr[19] -pin next_pc_source In4[19] -pin pc_adder_4 y[19] -pin pc_adder_imm y[19] -pin pc_mod out[19]
load net pc_out[9] -attr @rip out[9] -pin inst_mem_mod addr[9] -pin next_pc_source In4[9] -pin pc_adder_4 y[9] -pin pc_adder_imm y[9] -pin pc_mod out[9]
load net data_mem_out[17] -attr @rip data_out[17] -pin RF_write_src In2[17] -pin data_mem_mod data_out[17]
load net pc_in[30] -attr @rip Out[30] -pin next_pc_source Out[30] -pin pc_mod in[30]
load net pc_in[7] -attr @rip Out[7] -pin next_pc_source Out[7] -pin pc_mod in[7]
load net ALU_result[16] -attr @rip r[16] -pin JALR_PC_i I0[16] -pin RF_write_src In1[16] -pin alu_mod r[16] -pin data_mem_mod addr[16]
load net pc_adder_out[27] -attr @rip sum[27] -pin RF_write_src In5[27] -pin next_pc_source In1[27] -pin pc_adder_4 sum[27]
load net pc_in[29] -attr @rip Out[29] -pin next_pc_source Out[29] -pin pc_mod in[29]
load net rst -pin RF_mod rst -pin pc_mod rst -port rst
netloc rst 1 0 8 NJ 790 230J 800 720J 790 1000 790 NJ 790 NJ 790 NJ 790 2190
load net RF_write_data[15] -attr @rip Out[15] -pin RF_mod writedata[15] -pin RF_write_src Out[15]
load net inst_out[2] -attr @rip data_out[2] -pin Branch_CU inst[2] -pin alu_cont_mod Inst[2] -pin cont_mod inst[2] -pin immGen_mod IR[2] -pin inst_mem_mod data_out[2] -pin pc_sel_mod inst[2]
load net pc_in[16] -attr @rip Out[16] -pin next_pc_source Out[16] -pin pc_mod in[16]
load net ALU_result[13] -attr @rip r[13] -pin JALR_PC_i I0[13] -pin RF_write_src In1[13] -pin alu_mod r[13] -pin data_mem_mod addr[13]
load net ALU_result[31] -attr @rip r[31] -pin JALR_PC_i I0[31] -pin RF_write_src In1[31] -pin alu_mod r[31] -pin data_mem_mod addr[31]
load net ALU_2nd_in[28] -attr @rip out[28] -pin ALU_2nd_source_mod out[28] -pin alu_mod b[28]
load net JALR_PC[29] -attr @rip O[29] -pin JALR_PC_i O[29] -pin next_pc_source In3[29]
load net imm_out[25] -attr @rip out[25] -pin ALU_2nd_source_mod b[25] -pin RF_write_src In3[25] -pin immGen_mod out[25] -pin pc_adder_imm x[25]
load net inst_out[27] -attr @rip data_out[27] -pin Branch_CU inst[27] -pin alu_cont_mod Inst[27] -pin cont_mod inst[27] -pin immGen_mod IR[27] -pin inst_mem_mod data_out[27]
load net read_data1[1] -attr @rip readdata1[1] -pin RF_mod readdata1[1] -pin alu_mod a[1]
load net ALUSrc -pin ALU_2nd_source_mod sel -pin cont_mod ALUSrc
netloc ALUSrc 1 11 1 3380
load net data_mem_out[13] -attr @rip data_out[13] -pin RF_write_src In2[13] -pin data_mem_mod data_out[13]
load net data_mem_out[9] -attr @rip data_out[9] -pin RF_write_src In2[9] -pin data_mem_mod data_out[9]
load net pc_adder_branch_out[0] -attr @rip sum[0] -pin RF_write_src In4[0] -pin next_pc_source In2[0] -pin pc_adder_imm sum[0]
load net read_data1[27] -attr @rip readdata1[27] -pin RF_mod readdata1[27] -pin alu_mod a[27]
load net read_data2[16] -attr @rip readdata2[16] -pin ALU_2nd_source_mod a[16] -pin RF_mod readdata2[16] -pin data_mem_mod data_in[16]
load net RF_write_data[27] -attr @rip Out[27] -pin RF_mod writedata[27] -pin RF_write_src Out[27]
load net pc_in[0] -attr @rip Out[0] -pin next_pc_source Out[0] -pin pc_mod in[0]
load net read_data1[14] -attr @rip readdata1[14] -pin RF_mod readdata1[14] -pin alu_mod a[14]
load net imm_out[7] -attr @rip out[7] -pin ALU_2nd_source_mod b[7] -pin RF_write_src In3[7] -pin immGen_mod out[7] -pin pc_adder_imm x[7]
load net JALR_PC[2] -attr @rip O[2] -pin JALR_PC_i O[2] -pin next_pc_source In3[2]
load net ALU_2nd_in[2] -attr @rip out[2] -pin ALU_2nd_source_mod out[2] -pin alu_mod b[2]
load net data_mem_out[27] -attr @rip data_out[27] -pin RF_write_src In2[27] -pin data_mem_mod data_out[27]
load net ALU_2nd_in[26] -attr @rip out[26] -pin ALU_2nd_source_mod out[26] -pin alu_mod b[26]
load net inst_out[23] -attr @rip data_out[23] -pin Branch_CU inst[23] -pin RF_mod readreg2[3] -pin alu_cont_mod Inst[23] -pin alu_mod shamt[3] -pin cont_mod inst[23] -pin immGen_mod IR[23] -pin inst_mem_mod data_out[23]
load net ALU_result[3] -attr @rip r[3] -pin JALR_PC_i I0[3] -pin RF_write_src In1[3] -pin alu_mod r[3] -pin data_mem_mod addr[3]
load net pc_out[18] -attr @rip out[18] -pin inst_mem_mod addr[18] -pin next_pc_source In4[18] -pin pc_adder_4 y[18] -pin pc_adder_imm y[18] -pin pc_mod out[18]
load net data_mem_out[16] -attr @rip data_out[16] -pin RF_write_src In2[16] -pin data_mem_mod data_out[16]
load net read_data2[29] -attr @rip readdata2[29] -pin ALU_2nd_source_mod a[29] -pin RF_mod readdata2[29] -pin data_mem_mod data_in[29]
load net cf -pin Branch_CU cf -pin alu_mod cf
netloc cf 1 9 1 N
load net JALR_PC[18] -attr @rip O[18] -pin JALR_PC_i O[18] -pin next_pc_source In3[18]
load net pc_adder_out[26] -attr @rip sum[26] -pin RF_write_src In5[26] -pin next_pc_source In1[26] -pin pc_adder_4 sum[26]
load net pc_in[28] -attr @rip Out[28] -pin next_pc_source Out[28] -pin pc_mod in[28]
load net ALU_result[17] -attr @rip r[17] -pin JALR_PC_i I0[17] -pin RF_write_src In1[17] -pin alu_mod r[17] -pin data_mem_mod addr[17]
load net pc_adder_out[0] -attr @rip sum[0] -pin RF_write_src In5[0] -pin next_pc_source In1[0] -pin pc_adder_4 sum[0]
load net ALU_result[12] -attr @rip r[12] -pin JALR_PC_i I0[12] -pin RF_write_src In1[12] -pin alu_mod r[12] -pin data_mem_mod addr[12]
load net ALU_result[30] -attr @rip r[30] -pin JALR_PC_i I0[30] -pin RF_write_src In1[30] -pin alu_mod r[30] -pin data_mem_mod addr[30]
load net RF_write_data[16] -attr @rip Out[16] -pin RF_mod writedata[16] -pin RF_write_src Out[16]
load net pc_adder_branch_out[14] -attr @rip sum[14] -pin RF_write_src In4[14] -pin next_pc_source In2[14] -pin pc_adder_imm sum[14]
load net ALU_2nd_in[29] -attr @rip out[29] -pin ALU_2nd_source_mod out[29] -pin alu_mod b[29]
load net data_mem_out[8] -attr @rip data_out[8] -pin RF_write_src In2[8] -pin data_mem_mod data_out[8]
load net imm_out[15] -attr @rip out[15] -pin ALU_2nd_source_mod b[15] -pin RF_write_src In3[15] -pin immGen_mod out[15] -pin pc_adder_imm x[15]
load net imm_out[26] -attr @rip out[26] -pin ALU_2nd_source_mod b[26] -pin RF_write_src In3[26] -pin immGen_mod out[26] -pin pc_adder_imm x[26]
load net read_data1[2] -attr @rip readdata1[2] -pin RF_mod readdata1[2] -pin alu_mod a[2]
load net read_data1[31] -attr @rip readdata1[31] -pin RF_mod readdata1[31] -pin alu_mod a[31]
load net data_mem_out[14] -attr @rip data_out[14] -pin RF_write_src In2[14] -pin data_mem_mod data_out[14]
load net RF_write_data[26] -attr @rip Out[26] -pin RF_mod writedata[26] -pin RF_write_src Out[26]
load net read_data1[28] -attr @rip readdata1[28] -pin RF_mod readdata1[28] -pin alu_mod a[28]
load net pc_out[13] -attr @rip out[13] -pin inst_mem_mod addr[13] -pin next_pc_source In4[13] -pin pc_adder_4 y[13] -pin pc_adder_imm y[13] -pin pc_mod out[13]
load net pc_out[3] -attr @rip out[3] -pin inst_mem_mod addr[3] -pin next_pc_source In4[3] -pin pc_adder_4 y[3] -pin pc_adder_imm y[3] -pin pc_mod out[3]
load net read_data2[17] -attr @rip readdata2[17] -pin ALU_2nd_source_mod a[17] -pin RF_mod readdata2[17] -pin data_mem_mod data_in[17]
load net imm_out[1] -attr @rip out[1] -pin ALU_2nd_source_mod b[1] -pin RF_write_src In3[1] -pin immGen_mod out[1] -pin pc_adder_imm x[1]
load net pc_in[1] -attr @rip Out[1] -pin next_pc_source Out[1] -pin pc_mod in[1]
load net imm_out[8] -attr @rip out[8] -pin ALU_2nd_source_mod b[8] -pin RF_write_src In3[8] -pin immGen_mod out[8] -pin pc_adder_imm x[8]
load net ALU_2nd_in[25] -attr @rip out[25] -pin ALU_2nd_source_mod out[25] -pin alu_mod b[25]
load net pc_adder_branch_out[30] -attr @rip sum[30] -pin RF_write_src In4[30] -pin next_pc_source In2[30] -pin pc_adder_imm sum[30]
load net pc_in[23] -attr @rip Out[23] -pin next_pc_source Out[23] -pin pc_mod in[23]
load net ALU_2nd_in[3] -attr @rip out[3] -pin ALU_2nd_source_mod out[3] -pin alu_mod b[3]
load net JALR_PC[15] -attr @rip O[15] -pin JALR_PC_i O[15] -pin next_pc_source In3[15]
load net JALR_PC[3] -attr @rip O[3] -pin JALR_PC_i O[3] -pin next_pc_source In3[3]
load net memToReg[0] -attr @rip memToReg[0] -pin RF_write_src sel[0] -pin cont_mod memToReg[0]
load net pc_adder_branch_out[20] -attr @rip sum[20] -pin RF_write_src In4[20] -pin next_pc_source In2[20] -pin pc_adder_imm sum[20]
load net pc_in[10] -attr @rip Out[10] -pin next_pc_source Out[10] -pin pc_mod in[10]
load net data_mem_out[15] -attr @rip data_out[15] -pin RF_write_src In2[15] -pin data_mem_mod data_out[15]
load net pc_out[31] -attr @rip out[31] -pin inst_mem_mod addr[31] -pin next_pc_source In4[31] -pin pc_adder_4 y[31] -pin pc_adder_imm y[31] -pin pc_mod out[31]
load net read_data2[28] -attr @rip readdata2[28] -pin ALU_2nd_source_mod a[28] -pin RF_mod readdata2[28] -pin data_mem_mod data_in[28]
load net vf -pin Branch_CU vf -pin alu_mod vf
netloc vf 1 9 1 N
load net ALU_result[4] -attr @rip r[4] -pin JALR_PC_i I0[4] -pin RF_write_src In1[4] -pin alu_mod r[4] -pin data_mem_mod addr[4]
load net ALU_result[14] -attr @rip r[14] -pin JALR_PC_i I0[14] -pin RF_write_src In1[14] -pin alu_mod r[14] -pin data_mem_mod addr[14]
load net RF_write_data[13] -attr @rip Out[13] -pin RF_mod writedata[13] -pin RF_write_src Out[13]
load net pc_adder_branch_out[29] -attr @rip sum[29] -pin RF_write_src In4[29] -pin next_pc_source In2[29] -pin pc_adder_imm sum[29]
load net read_data1[7] -attr @rip readdata1[7] -pin RF_mod readdata1[7] -pin alu_mod a[7]
load net ALU_2nd_in[13] -attr @rip out[13] -pin ALU_2nd_source_mod out[13] -pin alu_mod b[13]
load net RF_write_data[10] -attr @rip Out[10] -pin RF_mod writedata[10] -pin RF_write_src Out[10]
load net pc_adder_out[1] -attr @rip sum[1] -pin RF_write_src In5[1] -pin next_pc_source In1[1] -pin pc_adder_4 sum[1]
load net RF_write_data[6] -attr @rip Out[6] -pin RF_mod writedata[6] -pin RF_write_src Out[6]
load net pc_adder_out[29] -attr @rip sum[29] -pin RF_write_src In5[29] -pin next_pc_source In1[29] -pin pc_adder_4 sum[29]
load net data_mem_out[11] -attr @rip data_out[11] -pin RF_write_src In2[11] -pin data_mem_mod data_out[11]
load net pc_adder_branch_out[15] -attr @rip sum[15] -pin RF_write_src In4[15] -pin next_pc_source In2[15] -pin pc_adder_imm sum[15]
load net read_data1[25] -attr @rip readdata1[25] -pin RF_mod readdata1[25] -pin alu_mod a[25]
load net imm_out[14] -attr @rip out[14] -pin ALU_2nd_source_mod b[14] -pin RF_write_src In3[14] -pin immGen_mod out[14] -pin pc_adder_imm x[14]
load net read_data1[30] -attr @rip readdata1[30] -pin RF_mod readdata1[30] -pin alu_mod a[30]
load net RF_write_data[25] -attr @rip Out[25] -pin RF_mod writedata[25] -pin RF_write_src Out[25]
load net pc_adder_out[13] -attr @rip sum[13] -pin RF_write_src In5[13] -pin next_pc_source In1[13] -pin pc_adder_4 sum[13]
load net imm_out[27] -attr @rip out[27] -pin ALU_2nd_source_mod b[27] -pin RF_write_src In3[27] -pin immGen_mod out[27] -pin pc_adder_imm x[27]
load net pc_out[12] -attr @rip out[12] -pin inst_mem_mod addr[12] -pin next_pc_source In4[12] -pin pc_adder_4 y[12] -pin pc_adder_imm y[12] -pin pc_mod out[12]
load net read_data1[3] -attr @rip readdata1[3] -pin RF_mod readdata1[3] -pin alu_mod a[3]
load net imm_out[5] -attr @rip out[5] -pin ALU_2nd_source_mod b[5] -pin RF_write_src In3[5] -pin immGen_mod out[5] -pin pc_adder_imm x[5]
load net pc_adder_branch_out[2] -attr @rip sum[2] -pin RF_write_src In4[2] -pin next_pc_source In2[2] -pin pc_adder_imm sum[2]
load net pc_out[27] -attr @rip out[27] -pin inst_mem_mod addr[27] -pin next_pc_source In4[27] -pin pc_adder_4 y[27] -pin pc_adder_imm y[27] -pin pc_mod out[27]
load net pc_out[4] -attr @rip out[4] -pin inst_mem_mod addr[4] -pin next_pc_source In4[4] -pin pc_adder_4 y[4] -pin pc_adder_imm y[4] -pin pc_mod out[4]
load net read_data2[18] -attr @rip readdata2[18] -pin ALU_2nd_source_mod a[18] -pin RF_mod readdata2[18] -pin data_mem_mod data_in[18]
load net ALU_2nd_in[24] -attr @rip out[24] -pin ALU_2nd_source_mod out[24] -pin alu_mod b[24]
load net imm_out[2] -attr @rip out[2] -pin ALU_2nd_source_mod b[2] -pin RF_write_src In3[2] -pin immGen_mod out[2] -pin pc_adder_imm x[2]
load net pc_in[22] -attr @rip Out[22] -pin next_pc_source Out[22] -pin pc_mod in[22]
load net pc_in[2] -attr @rip Out[2] -pin next_pc_source Out[2] -pin pc_mod in[2]
load net ALU_result[1] -attr @rip r[1] -pin JALR_PC_i I0[1] -pin RF_write_src In1[1] -pin alu_mod r[1] -pin data_mem_mod addr[1]
load net read_data2[0] -attr @rip readdata2[0] -pin ALU_2nd_source_mod a[0] -pin RF_mod readdata2[0] -pin data_mem_mod data_in[0]
load net pc_adder_branch_out[31] -attr @rip sum[31] -pin RF_write_src In4[31] -pin next_pc_source In2[31] -pin pc_adder_imm sum[31]
load net pc_out[30] -attr @rip out[30] -pin inst_mem_mod addr[30] -pin next_pc_source In4[30] -pin pc_adder_4 y[30] -pin pc_adder_imm y[30] -pin pc_mod out[30]
load net zf -pin Branch_CU zf -pin alu_mod zf
netloc zf 1 9 1 N
load net JALR_PC[4] -attr @rip O[4] -pin JALR_PC_i O[4] -pin next_pc_source In3[4]
load net JALR_PC[23] -attr @rip O[23] -pin JALR_PC_i O[23] -pin next_pc_source In3[23]
load net ALU_2nd_in[4] -attr @rip out[4] -pin ALU_2nd_source_mod out[4] -pin alu_mod b[4]
load net JALR_PC[16] -attr @rip O[16] -pin JALR_PC_i O[16] -pin next_pc_source In3[16]
load net pc_in[11] -attr @rip Out[11] -pin next_pc_source Out[11] -pin pc_mod in[11]
load net ALU_result[15] -attr @rip r[15] -pin JALR_PC_i I0[15] -pin RF_write_src In1[15] -pin alu_mod r[15] -pin data_mem_mod addr[15]
load net data_mem_out[2] -attr @rip data_out[2] -pin RF_write_src In2[2] -pin data_mem_mod data_out[2]
load net pc_sel -pin Branch_CU pc_sel -pin cont_mod pc_sel -pin pc_sel_mod pc_sel
netloc pc_sel 1 1 10 290 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 3020
load net RF_write_data[19] -attr @rip Out[19] -pin RF_mod writedata[19] -pin RF_write_src Out[19]
load net RF_write_data[14] -attr @rip Out[14] -pin RF_mod writedata[14] -pin RF_write_src Out[14]
load net pc_adder_branch_out[12] -attr @rip sum[12] -pin RF_write_src In4[12] -pin next_pc_source In2[12] -pin pc_adder_imm sum[12]
load net read_data1[8] -attr @rip readdata1[8] -pin RF_mod readdata1[8] -pin alu_mod a[8]
load net pc_adder_out[28] -attr @rip sum[28] -pin RF_write_src In5[28] -pin next_pc_source In1[28] -pin pc_adder_4 sum[28]
load net read_data2[11] -attr @rip readdata2[11] -pin ALU_2nd_source_mod a[11] -pin RF_mod readdata2[11] -pin data_mem_mod data_in[11]
load net imm_out[29] -attr @rip out[29] -pin ALU_2nd_source_mod b[29] -pin RF_write_src In3[29] -pin immGen_mod out[29] -pin pc_adder_imm x[29]
load net ALU_2nd_in[14] -attr @rip out[14] -pin ALU_2nd_source_mod out[14] -pin alu_mod b[14]
load net pc_adder_out[2] -attr @rip sum[2] -pin RF_write_src In5[2] -pin next_pc_source In1[2] -pin pc_adder_4 sum[2]
load net RF_write_data[7] -attr @rip Out[7] -pin RF_mod writedata[7] -pin RF_write_src Out[7]
load net ALU_sel[2] -attr @rip ALU_sel[2] -pin alu_cont_mod ALU_sel[2] -pin alu_mod alufn[2]
load net imm_out[13] -attr @rip out[13] -pin ALU_2nd_source_mod b[13] -pin RF_write_src In3[13] -pin immGen_mod out[13] -pin pc_adder_imm x[13]
load net JALR_PC[0] -attr @rip O[0] -pin JALR_PC_i O[0] -pin next_pc_source In3[0]
load net data_mem_out[12] -attr @rip data_out[12] -pin RF_write_src In2[12] -pin data_mem_mod data_out[12]
load net RF_write_data[24] -attr @rip Out[24] -pin RF_mod writedata[24] -pin RF_write_src Out[24]
load net read_data1[11] -attr @rip readdata1[11] -pin RF_mod readdata1[11] -pin alu_mod a[11]
load net read_data1[26] -attr @rip readdata1[26] -pin RF_mod readdata1[26] -pin alu_mod a[26]
load net data_mem_out[30] -attr @rip data_out[30] -pin RF_write_src In2[30] -pin data_mem_mod data_out[30]
load net pc_adder_branch_out[1] -attr @rip sum[1] -pin RF_write_src In4[1] -pin next_pc_source In2[1] -pin pc_adder_imm sum[1]
load net pc_adder_out[14] -attr @rip sum[14] -pin RF_write_src In5[14] -pin next_pc_source In1[14] -pin pc_adder_4 sum[14]
load net imm_out[28] -attr @rip out[28] -pin ALU_2nd_source_mod b[28] -pin RF_write_src In3[28] -pin immGen_mod out[28] -pin pc_adder_imm x[28]
load net read_data1[4] -attr @rip readdata1[4] -pin RF_mod readdata1[4] -pin alu_mod a[4]
load net imm_out[6] -attr @rip out[6] -pin ALU_2nd_source_mod b[6] -pin RF_write_src In3[6] -pin immGen_mod out[6] -pin pc_adder_imm x[6]
load net pc_out[28] -attr @rip out[28] -pin inst_mem_mod addr[28] -pin next_pc_source In4[28] -pin pc_adder_4 y[28] -pin pc_adder_imm y[28] -pin pc_mod out[28]
load net ALU_2nd_in[10] -attr @rip out[10] -pin ALU_2nd_source_mod out[10] -pin alu_mod b[10]
load net pc_out[15] -attr @rip out[15] -pin inst_mem_mod addr[15] -pin next_pc_source In4[15] -pin pc_adder_4 y[15] -pin pc_adder_imm y[15] -pin pc_mod out[15]
load net pc_out[5] -attr @rip out[5] -pin inst_mem_mod addr[5] -pin next_pc_source In4[5] -pin pc_adder_4 y[5] -pin pc_adder_imm y[5] -pin pc_mod out[5]
load net pc_in[3] -attr @rip Out[3] -pin next_pc_source Out[3] -pin pc_mod in[3]
load net read_data2[21] -attr @rip readdata2[21] -pin ALU_2nd_source_mod a[21] -pin RF_mod readdata2[21] -pin data_mem_mod data_in[21]
load net JALR_PC[10] -attr @rip O[10] -pin JALR_PC_i O[10] -pin next_pc_source In3[10]
load net ALU_result[2] -attr @rip r[2] -pin JALR_PC_i I0[2] -pin RF_write_src In1[2] -pin alu_mod r[2] -pin data_mem_mod addr[2]
load net JALR_PC[22] -attr @rip O[22] -pin JALR_PC_i O[22] -pin next_pc_source In3[22]
load net read_data2[1] -attr @rip readdata2[1] -pin ALU_2nd_source_mod a[1] -pin RF_mod readdata2[1] -pin data_mem_mod data_in[1]
load net pc_in[25] -attr @rip Out[25] -pin next_pc_source Out[25] -pin pc_mod in[25]
load net ALU_2nd_in[5] -attr @rip out[5] -pin ALU_2nd_source_mod out[5] -pin alu_mod b[5]
load net JALR_PC[5] -attr @rip O[5] -pin JALR_PC_i O[5] -pin next_pc_source In3[5]
load net RF_write_data[11] -attr @rip Out[11] -pin RF_mod writedata[11] -pin RF_write_src Out[11]
load net ALU_result[29] -attr @rip r[29] -pin JALR_PC_i I0[29] -pin RF_write_src In1[29] -pin alu_mod r[29] -pin data_mem_mod addr[29]
load net memToReg[2] -attr @rip memToReg[2] -pin RF_write_src sel[2] -pin cont_mod memToReg[2]
load net pc_adder_branch_out[22] -attr @rip sum[22] -pin RF_write_src In4[22] -pin next_pc_source In2[22] -pin pc_adder_imm sum[22]
load net pc_adder_out[10] -attr @rip sum[10] -pin RF_write_src In5[10] -pin next_pc_source In1[10] -pin pc_adder_4 sum[10]
load net pc_in[12] -attr @rip Out[12] -pin next_pc_source Out[12] -pin pc_mod in[12]
load net ALU_2nd_in[11] -attr @rip out[11] -pin ALU_2nd_source_mod out[11] -pin alu_mod b[11]
load net data_mem_out[3] -attr @rip data_out[3] -pin RF_write_src In2[3] -pin data_mem_mod data_out[3]
load net imm_out[21] -attr @rip out[21] -pin ALU_2nd_source_mod b[21] -pin RF_write_src In3[21] -pin immGen_mod out[21] -pin pc_adder_imm x[21]
load net inst_out[16] -attr @rip data_out[16] -pin Branch_CU inst[16] -pin RF_mod readreg1[1] -pin alu_cont_mod Inst[16] -pin cont_mod inst[16] -pin immGen_mod IR[16] -pin inst_mem_mod data_out[16]
load net pc_adder_branch_out[13] -attr @rip sum[13] -pin RF_write_src In4[13] -pin next_pc_source In2[13] -pin pc_adder_imm sum[13]
load net read_data1[23] -attr @rip readdata1[23] -pin RF_mod readdata1[23] -pin alu_mod a[23]
load net read_data1[9] -attr @rip readdata1[9] -pin RF_mod readdata1[9] -pin alu_mod a[9]
load net imm_out[12] -attr @rip out[12] -pin ALU_2nd_source_mod b[12] -pin RF_write_src In3[12] -pin immGen_mod out[12] -pin pc_adder_imm x[12]
load net inst_out[30] -attr @rip data_out[30] -pin Branch_CU inst[30] -pin alu_cont_mod Inst[30] -pin cont_mod inst[30] -pin immGen_mod IR[30] -pin inst_mem_mod data_out[30]
load net pc_adder_branch_out[8] -attr @rip sum[8] -pin RF_write_src In4[8] -pin next_pc_source In2[8] -pin pc_adder_imm sum[8]
load net read_data2[12] -attr @rip readdata2[12] -pin ALU_2nd_source_mod a[12] -pin RF_mod readdata2[12] -pin data_mem_mod data_in[12]
load net RF_write_data[23] -attr @rip Out[23] -pin RF_mod writedata[23] -pin RF_write_src Out[23]
load net pc_adder_out[3] -attr @rip sum[3] -pin RF_write_src In5[3] -pin next_pc_source In1[3] -pin pc_adder_4 sum[3]
load net read_data1[10] -attr @rip readdata1[10] -pin RF_mod readdata1[10] -pin alu_mod a[10]
load net JALR_PC[1] -attr @rip O[1] -pin JALR_PC_i O[1] -pin next_pc_source In3[1]
load net RF_write_data[8] -attr @rip Out[8] -pin RF_mod writedata[8] -pin RF_write_src Out[8]
load net ALU_sel[3] -attr @rip ALU_sel[3] -pin alu_cont_mod ALU_sel[3] -pin alu_mod alufn[3]
load net pc_in[8] -attr @rip Out[8] -pin next_pc_source Out[8] -pin pc_mod in[8]
load net imm_out[3] -attr @rip out[3] -pin ALU_2nd_source_mod b[3] -pin RF_write_src In3[3] -pin immGen_mod out[3] -pin pc_adder_imm x[3]
load net pc_out[25] -attr @rip out[25] -pin inst_mem_mod addr[25] -pin next_pc_source In4[25] -pin pc_adder_4 y[25] -pin pc_adder_imm y[25] -pin pc_mod out[25]
load net data_mem_out[31] -attr @rip data_out[31] -pin RF_write_src In2[31] -pin data_mem_mod data_out[31]
load net imm_out[0] -attr @rip out[0] -pin ALU_2nd_source_mod b[0] -pin RF_write_src In3[0] -pin immGen_mod out[0] -pin pc_adder_imm x[0]
load net pc_adder_out[15] -attr @rip sum[15] -pin RF_write_src In5[15] -pin next_pc_source In1[15] -pin pc_adder_4 sum[15]
load net pc_in[17] -attr @rip Out[17] -pin next_pc_source Out[17] -pin pc_mod in[17]
load net pc_out[14] -attr @rip out[14] -pin inst_mem_mod addr[14] -pin next_pc_source In4[14] -pin pc_adder_4 y[14] -pin pc_adder_imm y[14] -pin pc_mod out[14]
load net read_data1[5] -attr @rip readdata1[5] -pin RF_mod readdata1[5] -pin alu_mod a[5]
load net inst_out[5] -attr @rip data_out[5] -pin Branch_CU inst[5] -pin alu_cont_mod Inst[5] -pin cont_mod inst[5] -pin immGen_mod IR[5] -pin inst_mem_mod data_out[5] -pin pc_sel_mod inst[5]
load net read_data2[20] -attr @rip readdata2[20] -pin ALU_2nd_source_mod a[20] -pin RF_mod readdata2[20] -pin data_mem_mod data_in[20]
load net sf -pin Branch_CU sf -pin alu_mod sf
netloc sf 1 9 1 N
load net JALR_PC[21] -attr @rip O[21] -pin JALR_PC_i O[21] -pin next_pc_source In3[21]
load net pc_out[6] -attr @rip out[6] -pin inst_mem_mod addr[6] -pin next_pc_source In4[6] -pin pc_adder_4 y[6] -pin pc_adder_imm y[6] -pin pc_mod out[6]
load net ALU_result[21] -attr @rip r[21] -pin JALR_PC_i I0[21] -pin RF_write_src In1[21] -pin alu_mod r[21] -pin data_mem_mod addr[21]
load net pc_in[24] -attr @rip Out[24] -pin next_pc_source Out[24] -pin pc_mod in[24]
load net ALU_result[28] -attr @rip r[28] -pin JALR_PC_i I0[28] -pin RF_write_src In1[28] -pin alu_mod r[28] -pin data_mem_mod addr[28]
load net memToReg[1] -attr @rip memToReg[1] -pin RF_write_src sel[1] -pin cont_mod memToReg[1]
load net pc_adder_branch_out[21] -attr @rip sum[21] -pin RF_write_src In4[21] -pin next_pc_source In2[21] -pin pc_adder_imm sum[21]
load net inst_out[20] -attr @rip data_out[20] -pin Branch_CU inst[20] -pin RF_mod readreg2[0] -pin alu_cont_mod Inst[20] -pin alu_mod shamt[0] -pin cont_mod inst[20] -pin immGen_mod IR[20] -pin inst_mem_mod data_out[20]
load net JALR_PC[6] -attr @rip O[6] -pin JALR_PC_i O[6] -pin next_pc_source In3[6]
load net RF_write_data[12] -attr @rip Out[12] -pin RF_mod writedata[12] -pin RF_write_src Out[12]
load net ALU_2nd_in[6] -attr @rip out[6] -pin ALU_2nd_source_mod out[6] -pin alu_mod b[6]
load net pc_adder_out[11] -attr @rip sum[11] -pin RF_write_src In5[11] -pin next_pc_source In1[11] -pin pc_adder_4 sum[11]
load net read_data1[17] -attr @rip readdata1[17] -pin RF_mod readdata1[17] -pin alu_mod a[17]
load net data_mem_out[4] -attr @rip data_out[4] -pin RF_write_src In2[4] -pin data_mem_mod data_out[4]
load net ALU_2nd_in[12] -attr @rip out[12] -pin ALU_2nd_source_mod out[12] -pin alu_mod b[12]
load net inst_out[15] -attr @rip data_out[15] -pin Branch_CU inst[15] -pin RF_mod readreg1[0] -pin alu_cont_mod Inst[15] -pin cont_mod inst[15] -pin immGen_mod IR[15] -pin inst_mem_mod data_out[15]
load net ALU_sel[0] -attr @rip ALU_sel[0] -pin alu_cont_mod ALU_sel[0] -pin alu_mod alufn[0]
load net ALU_2nd_in[30] -attr @rip out[30] -pin ALU_2nd_source_mod out[30] -pin alu_mod b[30]
load net imm_out[22] -attr @rip out[22] -pin ALU_2nd_source_mod b[22] -pin RF_write_src In3[22] -pin immGen_mod out[22] -pin pc_adder_imm x[22]
load net data_mem_out[28] -attr @rip data_out[28] -pin RF_write_src In2[28] -pin data_mem_mod data_out[28]
load net pc_adder_branch_out[7] -attr @rip sum[7] -pin RF_write_src In4[7] -pin next_pc_source In2[7] -pin pc_adder_imm sum[7]
load net RF_write_data[22] -attr @rip Out[22] -pin RF_mod writedata[22] -pin RF_write_src Out[22]
load net read_data1[24] -attr @rip readdata1[24] -pin RF_mod readdata1[24] -pin alu_mod a[24]
load net read_data2[13] -attr @rip readdata2[13] -pin ALU_2nd_source_mod a[13] -pin RF_mod readdata2[13] -pin data_mem_mod data_in[13]
load net pc_adder_out[4] -attr @rip sum[4] -pin RF_write_src In5[4] -pin next_pc_source In1[4] -pin pc_adder_4 sum[4]
load net RF_write_data[9] -attr @rip Out[9] -pin RF_mod writedata[9] -pin RF_write_src Out[9]
load net pc_in[9] -attr @rip Out[9] -pin next_pc_source Out[9] -pin pc_mod in[9]
load net regWrite -pin RF_mod regwrite -pin cont_mod regWrite
netloc regWrite 1 7 5 2190 270 NJ 270 NJ 270 NJ 270 3280
load net imm_out[4] -attr @rip out[4] -pin ALU_2nd_source_mod b[4] -pin RF_write_src In3[4] -pin immGen_mod out[4] -pin pc_adder_imm x[4]
load net pc_adder_branch_out[18] -attr @rip sum[18] -pin RF_write_src In4[18] -pin next_pc_source In2[18] -pin pc_adder_imm sum[18]
load net pc_out[26] -attr @rip out[26] -pin inst_mem_mod addr[26] -pin next_pc_source In4[26] -pin pc_adder_4 y[26] -pin pc_adder_imm y[26] -pin pc_mod out[26]
load net inst_out[4] -attr @rip data_out[4] -pin Branch_CU inst[4] -pin alu_cont_mod Inst[4] -pin cont_mod inst[4] -pin immGen_mod IR[4] -pin inst_mem_mod data_out[4] -pin pc_sel_mod inst[4]
load net inst_out[9] -attr @rip data_out[9] -pin Branch_CU inst[9] -pin RF_mod writereg[2] -pin alu_cont_mod Inst[9] -pin cont_mod inst[9] -pin immGen_mod IR[9] -pin inst_mem_mod data_out[9]
load net pc_adder_out[16] -attr @rip sum[16] -pin RF_write_src In5[16] -pin next_pc_source In1[16] -pin pc_adder_4 sum[16]
load net pc_in[18] -attr @rip Out[18] -pin next_pc_source Out[18] -pin pc_mod in[18]
load net ALU_result[0] -attr @rip r[0] -pin JALR_PC_i I0[0] -pin RF_write_src In1[0] -pin alu_mod r[0] -pin data_mem_mod addr[0]
load net imm_out[19] -attr @rip out[19] -pin ALU_2nd_source_mod b[19] -pin RF_write_src In3[19] -pin immGen_mod out[19] -pin pc_adder_imm x[19]
load net JALR_PC[20] -attr @rip O[20] -pin JALR_PC_i O[20] -pin next_pc_source In3[20]
load net read_data1[6] -attr @rip readdata1[6] -pin RF_mod readdata1[6] -pin alu_mod a[6]
load net ALU_result[27] -attr @rip r[27] -pin JALR_PC_i I0[27] -pin RF_write_src In1[27] -pin alu_mod r[27] -pin data_mem_mod addr[27]
load net ALU_result[22] -attr @rip r[22] -pin JALR_PC_i I0[22] -pin RF_write_src In1[22] -pin alu_mod r[22] -pin data_mem_mod addr[22]
load net read_data2[23] -attr @rip readdata2[23] -pin ALU_2nd_source_mod a[23] -pin RF_mod readdata2[23] -pin data_mem_mod data_in[23]
load net ALU_2nd_in[19] -attr @rip out[19] -pin ALU_2nd_source_mod out[19] -pin alu_mod b[19]
load net RF_write_data[30] -attr @rip Out[30] -pin RF_mod writedata[30] -pin RF_write_src Out[30]
load net RF_write_data[2] -attr @rip Out[2] -pin RF_mod writedata[2] -pin RF_write_src Out[2]
load net inst_out[21] -attr @rip data_out[21] -pin Branch_CU inst[21] -pin RF_mod readreg2[1] -pin alu_cont_mod Inst[21] -pin alu_mod shamt[1] -pin cont_mod inst[21] -pin immGen_mod IR[21] -pin inst_mem_mod data_out[21]
load net pc_adder_out[30] -attr @rip sum[30] -pin RF_write_src In5[30] -pin next_pc_source In1[30] -pin pc_adder_4 sum[30]
load net read_data1[16] -attr @rip readdata1[16] -pin RF_mod readdata1[16] -pin alu_mod a[16]
load net inst_out[14] -attr @rip data_out[14] -pin Branch_CU inst[14] -pin alu_cont_mod Inst[14] -pin cont_mod inst[14] -pin data_mem_mod func3[2] -pin immGen_mod IR[14] -pin inst_mem_mod data_out[14]
load net inst_out[19] -attr @rip data_out[19] -pin Branch_CU inst[19] -pin RF_mod readreg1[4] -pin alu_cont_mod Inst[19] -pin cont_mod inst[19] -pin immGen_mod IR[19] -pin inst_mem_mod data_out[19]
load net JALR_PC[7] -attr @rip O[7] -pin JALR_PC_i O[7] -pin next_pc_source In3[7]
load net ALU_2nd_in[7] -attr @rip out[7] -pin ALU_2nd_source_mod out[7] -pin alu_mod b[7]
load net pc_adder_branch_out[24] -attr @rip sum[24] -pin RF_write_src In4[24] -pin next_pc_source In2[24] -pin pc_adder_imm sum[24]
load net pc_adder_out[12] -attr @rip sum[12] -pin RF_write_src In5[12] -pin next_pc_source In1[12] -pin pc_adder_4 sum[12]
load net read_data1[21] -attr @rip readdata1[21] -pin RF_mod readdata1[21] -pin alu_mod a[21]
load net data_mem_out[19] -attr @rip data_out[19] -pin RF_write_src In2[19] -pin data_mem_mod data_out[19]
load net RF_write_data[21] -attr @rip Out[21] -pin RF_mod writedata[21] -pin RF_write_src Out[21]
load net data_mem_out[5] -attr @rip data_out[5] -pin RF_write_src In2[5] -pin data_mem_mod data_out[5]
load net ALU_sel[1] -attr @rip ALU_sel[1] -pin alu_cont_mod ALU_sel[1] -pin alu_mod alufn[1]
load net ALU_2nd_in[31] -attr @rip out[31] -pin ALU_2nd_source_mod out[31] -pin alu_mod b[31]
load net imm_out[23] -attr @rip out[23] -pin ALU_2nd_source_mod b[23] -pin RF_write_src In3[23] -pin immGen_mod out[23] -pin pc_adder_imm x[23]
load net data_mem_out[29] -attr @rip data_out[29] -pin RF_write_src In2[29] -pin data_mem_mod data_out[29]
load net imm_out[31] -attr @rip out[31] -pin ALU_2nd_source_mod b[31] -pin RF_write_src In3[31] -pin immGen_mod out[31] -pin pc_adder_imm x[31]
load net pc_out[23] -attr @rip out[23] -pin inst_mem_mod addr[23] -pin next_pc_source In4[23] -pin pc_adder_4 y[23] -pin pc_adder_imm y[23] -pin pc_mod out[23]
load net imm_out[20] -attr @rip out[20] -pin ALU_2nd_source_mod b[20] -pin RF_write_src In3[20] -pin immGen_mod out[20] -pin pc_adder_imm x[20]
load net pc_adder_out[31] -attr @rip sum[31] -pin RF_write_src In5[31] -pin next_pc_source In1[31] -pin pc_adder_4 sum[31]
load net pc_out[0] -attr @rip out[0] -pin inst_mem_mod addr[0] -pin next_pc_source In4[0] -pin pc_adder_4 y[0] -pin pc_adder_imm y[0] -pin pc_mod out[0]
load net read_data2[14] -attr @rip readdata2[14] -pin ALU_2nd_source_mod a[14] -pin RF_mod readdata2[14] -pin data_mem_mod data_in[14]
load net ALU_2nd_in[17] -attr @rip out[17] -pin ALU_2nd_source_mod out[17] -pin alu_mod b[17]
load net pc_adder_out[5] -attr @rip sum[5] -pin RF_write_src In5[5] -pin next_pc_source In1[5] -pin pc_adder_4 sum[5]
load netBundle @ALU_result 32 ALU_result[31] ALU_result[30] ALU_result[29] ALU_result[28] ALU_result[27] ALU_result[26] ALU_result[25] ALU_result[24] ALU_result[23] ALU_result[22] ALU_result[21] ALU_result[20] ALU_result[19] ALU_result[18] ALU_result[17] ALU_result[16] ALU_result[15] ALU_result[14] ALU_result[13] ALU_result[12] ALU_result[11] ALU_result[10] ALU_result[9] ALU_result[8] ALU_result[7] ALU_result[6] ALU_result[5] ALU_result[4] ALU_result[3] ALU_result[2] ALU_result[1] ALU_result[0] -autobundled
netbloc @ALU_result 1 1 9 290 350 720J 370 NJ 370 NJ 370 1480 270 1890 310 NJ 310 NJ 310 2780
load netBundle @ALU_2nd_in 32 ALU_2nd_in[31] ALU_2nd_in[30] ALU_2nd_in[29] ALU_2nd_in[28] ALU_2nd_in[27] ALU_2nd_in[26] ALU_2nd_in[25] ALU_2nd_in[24] ALU_2nd_in[23] ALU_2nd_in[22] ALU_2nd_in[21] ALU_2nd_in[20] ALU_2nd_in[19] ALU_2nd_in[18] ALU_2nd_in[17] ALU_2nd_in[16] ALU_2nd_in[15] ALU_2nd_in[14] ALU_2nd_in[13] ALU_2nd_in[12] ALU_2nd_in[11] ALU_2nd_in[10] ALU_2nd_in[9] ALU_2nd_in[8] ALU_2nd_in[7] ALU_2nd_in[6] ALU_2nd_in[5] ALU_2nd_in[4] ALU_2nd_in[3] ALU_2nd_in[2] ALU_2nd_in[1] ALU_2nd_in[0] -autobundled
netbloc @ALU_2nd_in 1 8 5 2570 510 NJ 510 NJ 510 NJ 510 3610
load netBundle @pc_adder_out 32 pc_adder_out[31] pc_adder_out[30] pc_adder_out[29] pc_adder_out[28] pc_adder_out[27] pc_adder_out[26] pc_adder_out[25] pc_adder_out[24] pc_adder_out[23] pc_adder_out[22] pc_adder_out[21] pc_adder_out[20] pc_adder_out[19] pc_adder_out[18] pc_adder_out[17] pc_adder_out[16] pc_adder_out[15] pc_adder_out[14] pc_adder_out[13] pc_adder_out[12] pc_adder_out[11] pc_adder_out[10] pc_adder_out[9] pc_adder_out[8] pc_adder_out[7] pc_adder_out[6] pc_adder_out[5] pc_adder_out[4] pc_adder_out[3] pc_adder_out[2] pc_adder_out[1] pc_adder_out[0] -autobundled
netbloc @pc_adder_out 1 2 5 640 550 NJ 550 NJ 550 NJ 550 1850
load netBundle @RF_write_data 32 RF_write_data[31] RF_write_data[30] RF_write_data[29] RF_write_data[28] RF_write_data[27] RF_write_data[26] RF_write_data[25] RF_write_data[24] RF_write_data[23] RF_write_data[22] RF_write_data[21] RF_write_data[20] RF_write_data[19] RF_write_data[18] RF_write_data[17] RF_write_data[16] RF_write_data[15] RF_write_data[14] RF_write_data[13] RF_write_data[12] RF_write_data[11] RF_write_data[10] RF_write_data[9] RF_write_data[8] RF_write_data[7] RF_write_data[6] RF_write_data[5] RF_write_data[4] RF_write_data[3] RF_write_data[2] RF_write_data[1] RF_write_data[0] -autobundled
netbloc @RF_write_data 1 7 1 2150
load netBundle @memToReg 3 memToReg[2] memToReg[1] memToReg[0] -autobundled
netbloc @memToReg 1 6 6 1870 610 2110J 530 NJ 530 NJ 530 NJ 530 3340
load netBundle @ALUOp 2 ALUOp[1] ALUOp[0] -autobundled
netbloc @ALUOp 1 7 5 2210 850 NJ 850 NJ 850 NJ 850 3360
load netBundle @imm_out 32 imm_out[31] imm_out[30] imm_out[29] imm_out[28] imm_out[27] imm_out[26] imm_out[25] imm_out[24] imm_out[23] imm_out[22] imm_out[21] imm_out[20] imm_out[19] imm_out[18] imm_out[17] imm_out[16] imm_out[15] imm_out[14] imm_out[13] imm_out[12] imm_out[11] imm_out[10] imm_out[9] imm_out[8] imm_out[7] imm_out[6] imm_out[5] imm_out[4] imm_out[3] imm_out[2] imm_out[1] imm_out[0] -autobundled
netbloc @imm_out 1 1 11 250 290 NJ 290 NJ 290 NJ 290 NJ 290 1850 290 NJ 290 NJ 290 NJ 290 NJ 290 NJ
load netBundle @JALR_PC 32 JALR_PC[31] JALR_PC[30] JALR_PC[29] JALR_PC[28] JALR_PC[27] JALR_PC[26] JALR_PC[25] JALR_PC[24] JALR_PC[23] JALR_PC[22] JALR_PC[21] JALR_PC[20] JALR_PC[19] JALR_PC[18] JALR_PC[17] JALR_PC[16] JALR_PC[15] JALR_PC[14] JALR_PC[13] JALR_PC[12] JALR_PC[11] JALR_PC[10] JALR_PC[9] JALR_PC[8] JALR_PC[7] JALR_PC[6] JALR_PC[5] JALR_PC[4] JALR_PC[3] JALR_PC[2] JALR_PC[1] JALR_PC[0] -autobundled
netbloc @JALR_PC 1 2 1 660J
load netBundle @inst_out 32 inst_out[31] inst_out[30] inst_out[29] inst_out[28] inst_out[27] inst_out[26] inst_out[25] inst_out[24] inst_out[23] inst_out[22] inst_out[21] inst_out[20] inst_out[19] inst_out[18] inst_out[17] inst_out[16] inst_out[15] inst_out[14] inst_out[13] inst_out[12] inst_out[11] inst_out[10] inst_out[9] inst_out[8] inst_out[7] inst_out[6] inst_out[5] inst_out[4] inst_out[3] inst_out[2] inst_out[1] inst_out[0] -autobundled
netbloc @inst_out 1 0 11 20 230 270 370 700J 390 NJ 390 NJ 390 1460 530 1790J 650 2170 330 2530 490 2800 110 NJ
load netBundle @pc_out 32 pc_out[31] pc_out[30] pc_out[29] pc_out[28] pc_out[27] pc_out[26] pc_out[25] pc_out[24] pc_out[23] pc_out[22] pc_out[21] pc_out[20] pc_out[19] pc_out[18] pc_out[17] pc_out[16] pc_out[15] pc_out[14] pc_out[13] pc_out[12] pc_out[11] pc_out[10] pc_out[9] pc_out[8] pc_out[7] pc_out[6] pc_out[5] pc_out[4] pc_out[3] pc_out[2] pc_out[1] pc_out[0] -autobundled
netbloc @pc_out 1 1 4 270 760 660 750 940J 630 1210
load netBundle @pc_src 2 pc_src[1] pc_src[0] -autobundled
netbloc @pc_src 1 2 1 680
load netBundle @read_data1 32 read_data1[31] read_data1[30] read_data1[29] read_data1[28] read_data1[27] read_data1[26] read_data1[25] read_data1[24] read_data1[23] read_data1[22] read_data1[21] read_data1[20] read_data1[19] read_data1[18] read_data1[17] read_data1[16] read_data1[15] read_data1[14] read_data1[13] read_data1[12] read_data1[11] read_data1[10] read_data1[9] read_data1[8] read_data1[7] read_data1[6] read_data1[5] read_data1[4] read_data1[3] read_data1[2] read_data1[1] read_data1[0] -autobundled
netbloc @read_data1 1 8 1 2510
load netBundle @read_data2 32 read_data2[31] read_data2[30] read_data2[29] read_data2[28] read_data2[27] read_data2[26] read_data2[25] read_data2[24] read_data2[23] read_data2[22] read_data2[21] read_data2[20] read_data2[19] read_data2[18] read_data2[17] read_data2[16] read_data2[15] read_data2[14] read_data2[13] read_data2[12] read_data2[11] read_data2[10] read_data2[9] read_data2[8] read_data2[7] read_data2[6] read_data2[5] read_data2[4] read_data2[3] read_data2[2] read_data2[1] read_data2[0] -autobundled
netbloc @read_data2 1 5 7 1520 490 1790J 330 2150J 350 2490 550 NJ 550 NJ 550 3400
load netBundle @data_mem_out 32 data_mem_out[31] data_mem_out[30] data_mem_out[29] data_mem_out[28] data_mem_out[27] data_mem_out[26] data_mem_out[25] data_mem_out[24] data_mem_out[23] data_mem_out[22] data_mem_out[21] data_mem_out[20] data_mem_out[19] data_mem_out[18] data_mem_out[17] data_mem_out[16] data_mem_out[15] data_mem_out[14] data_mem_out[13] data_mem_out[12] data_mem_out[11] data_mem_out[10] data_mem_out[9] data_mem_out[8] data_mem_out[7] data_mem_out[6] data_mem_out[5] data_mem_out[4] data_mem_out[3] data_mem_out[2] data_mem_out[1] data_mem_out[0] -autobundled
netbloc @data_mem_out 1 6 1 1830
load netBundle @pc_adder_branch_out 32 pc_adder_branch_out[31] pc_adder_branch_out[30] pc_adder_branch_out[29] pc_adder_branch_out[28] pc_adder_branch_out[27] pc_adder_branch_out[26] pc_adder_branch_out[25] pc_adder_branch_out[24] pc_adder_branch_out[23] pc_adder_branch_out[22] pc_adder_branch_out[21] pc_adder_branch_out[20] pc_adder_branch_out[19] pc_adder_branch_out[18] pc_adder_branch_out[17] pc_adder_branch_out[16] pc_adder_branch_out[15] pc_adder_branch_out[14] pc_adder_branch_out[13] pc_adder_branch_out[12] pc_adder_branch_out[11] pc_adder_branch_out[10] pc_adder_branch_out[9] pc_adder_branch_out[8] pc_adder_branch_out[7] pc_adder_branch_out[6] pc_adder_branch_out[5] pc_adder_branch_out[4] pc_adder_branch_out[3] pc_adder_branch_out[2] pc_adder_branch_out[1] pc_adder_branch_out[0] -autobundled
netbloc @pc_adder_branch_out 1 2 5 620 570 NJ 570 NJ 570 NJ 570 1830
load netBundle @pc_in 32 pc_in[31] pc_in[30] pc_in[29] pc_in[28] pc_in[27] pc_in[26] pc_in[25] pc_in[24] pc_in[23] pc_in[22] pc_in[21] pc_in[20] pc_in[19] pc_in[18] pc_in[17] pc_in[16] pc_in[15] pc_in[14] pc_in[13] pc_in[12] pc_in[11] pc_in[10] pc_in[9] pc_in[8] pc_in[7] pc_in[6] pc_in[5] pc_in[4] pc_in[3] pc_in[2] pc_in[1] pc_in[0] -autobundled
netbloc @pc_in 1 3 1 960
load netBundle @ALU_sel 4 ALU_sel[3] ALU_sel[2] ALU_sel[1] ALU_sel[0] -autobundled
netbloc @ALU_sel 1 8 1 2550
levelinfo -pg 1 0 90 450 800 1070 1290 1620 1970 2320 2660 2900 3110 3470 3630 -top 0 -bot 860
show
fullfit
#
# initialize ictrl to current module single_cycle_dp work:single_cycle_dp:NOFILE
ictrl init topinfo |
ictrl layer glayer install
ictrl layer glayer config ibundle 1
ictrl layer glayer config nbundle 0
ictrl layer glayer config pbundle 0
ictrl layer glayer config cache 1
