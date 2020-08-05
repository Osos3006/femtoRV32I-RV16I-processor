`timescale 1ns / 1ps
/*******************************************************************
*
* Module: InstMem.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for the Instruction Memory
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module InstMem(
    input [7:0] addr,
    output [31:0] data_out
);

    reg [7:0] mem [0:255];
    assign data_out = { mem[addr+3] , mem[addr+2], mem[addr+1] ,mem[addr]};
    initial begin
         mem[0]=8'b10000011 ; //lw x1, 0(x0)
         mem[1]=8'b00100000;
         mem[2]=8'b00000000 ;
         mem[3]=8'b00000000 ;
      
         mem[4]=8'b00000011 ; //lw x2, 4(x0)
         mem[5]=8'b00100001 ;
         mem[6]=8'b01000000;
         mem[7]=8'b00000000;
      
         
         mem[8]=8'b10000011 ; //lw x3, 8(x0)
         mem[9]=8'b00100001;
         mem[10]=8'b10000000;
         mem[11]=8'b00000000;
    
         
         mem[12]=8'b0_0110011 ; //or x4, x1, x2
         mem[13]=8'b1_110_0010;
         mem[14]=8'b0010_0000;
         mem[15]=8'b00000000;
         
         mem[16]=8'b01100011; //beq x4, x3, 4
         mem[17]=8'b0_000_0100;
         mem[18] = 8'b0011_0010;
         mem[19]=8'b00000000; 
         
         
         mem[20]=8'b1_0110011 ; //add x3, x1, x2
         mem[21]=8'b1_000_0001; 
         mem[22]=8'b0010_0000; 
         mem[23]=8'b00000000; 
         
         
         
         mem[24]=8'b1_0110011 ; //add x5, x3, x2
         mem[25]=8'b1_000_0010;
         mem[26]=8'b0010_0001;
         mem[27]=8'b0000000_0;
         
         
         
         mem[28]=8'b0_0100011; //sw x5, 12(x0)
         mem[29]=8'b0_010_0110;
         mem[30]=8'b0101_0000;
         mem[31]=8'b0000000_0;
         
         
         
         mem[32]=8'b0_0000011 ; //lw x6, 12(x0)
         mem[33]=8'b0_010_0011;
         mem[34]=8'b1100_0000;
         mem[35]=8'b00000000;
         
         
         mem[36]=8'b1_0110011 ; //and x7, x6, x1
         mem[37]=8'b0_111_0011;
         mem[38]=8'b0001_0011;
         mem[39]=8'b0000000_0;
         
         
         mem[40]=8'b0_0110011 ; //sub x8, x1, x2
         mem[41]=8'b1_000_0100;
         mem[42]=8'b0010_0000;
         mem[43]=8'b0100000_0;
         
         
         mem[44]=8'b0_0110011 ; //add x0, x1, x2
         mem[45]=8'b1_000_0000;
         mem[46]=8'b0010_0000;
         mem[47]=8'b0000000_0;
         
         
         mem[48]=8'b1_0110011 ; //add x9, x0, x1
         mem[49]=8'b0_000_0100;
         mem[50]=8'b0001_0000;
         mem[51]=8'b0000000_0;
         
    end
endmodule
