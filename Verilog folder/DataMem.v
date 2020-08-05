`timescale 1ns / 1ps
`include "defines.v"
/*******************************************************************
*
* Module: DataMem.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
             Marwan Eid         - marwanadel99@aucegypt.edu
             Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for the Data Memory which 
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module DataMem(
    input clk,
    input MemRead,
    input MemWrite,
    input [2:0] func3, // func3 to determine the type of load/store instruction
    input [7:0] addr,
    input [31:0] data_in,
    output reg [31:0] data_out
);

    reg [31:0] mem [0:255];
    always @(posedge clk)
        begin
            if (MemWrite)
            begin
                    case(func3)
                    `SB: mem[addr] <=  data_in[7:0]  ; 
                    `SH: 
                        begin
                    mem[addr] <=  data_in[7:0] ;
                    mem[addr+1] <=  data_in[15:8] ;
                        end
                    `SW: 
                    begin
                    mem[addr] <= data_in[7:0];
                    mem[addr+1] <= data_in[15:8] ;
                    mem[addr+2] <= data_in[23:16] ;
                    mem[addr+3] <= data_in[31:24] ;
                    end
                    default : mem[addr] <= data_in[7:0]; // This case is not supposed to occur ever
                    endcase
                
             end
        end
    always @(*)
     begin 

  if (MemRead) 
            begin
            case (func3)
                `LB: data_out = {{24{mem[addr][7]}},mem[addr]};
                `LBU: data_out = {24'b0 ,mem[addr][7:0]};
                `LH: data_out = {{16{mem[addr+1][7]}}, mem[addr+1]  , mem[addr]};
                `LHU: data_out = {16'b0 , mem[addr+1]  , mem[addr]};
                `LW :  data_out = {mem[addr+3],mem[addr+2],mem[addr+1],mem[addr]};
                default : data_out = {mem[addr+3],mem[addr+2],mem[addr+1],mem[addr]};  // This case is not supposed to occur ever
             endcase
            end
    end

    initial begin
        mem[0]=8'd17;
        mem[1]=8'd9;
        mem[2]=8'd25;
        mem[3]=8'd15;
        mem[4]=8'd16;
        mem[5]=8'd17;
        mem[6]=8'd18;
        mem[7]=8'd19;
        mem[8]=8'd20;
        mem[9]=8'd21;
        mem[10]=8'd22;
        mem[11]=8'd23;
    end
endmodule
