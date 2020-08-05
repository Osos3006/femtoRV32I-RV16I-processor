`include "defines.v"
`timescale 1ns / 1ps

/*******************************************************************
*
* Module: memory.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
*            Marwan Eid         - marwanadel99@aucegypt.edu
*            Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for the single ported memory used for both data and instructions
*
* Change history: 11/6/19 - Added to the project
*
**********************************************************************/
module memory(
    input clk,
    input sClk,
    input mem_Read,
    input mem_write,
    input [31:0] addr_inst,
    input [31:0] addr,
    input [2:0] func3,
    input [31:0] data_in,
    output reg [31:0] data_out,
        output reg is_regular_inst

);
        reg [7:0] mem [0:255];
        initial begin 
            $readmemh("Compressed.mem", mem); //load the instructions
            {mem[203], mem[202], mem[201], mem[200]}=32'd1;//data start at address 200
            {mem[207], mem[206], mem[205], mem[204]}=32'd2;
            {mem[211], mem[210], mem[209], mem[208]}=32'd3;
        end
        always @(*) //instruction read
            begin
                if(sClk)
                begin
                     data_out <= { mem[addr+3] , mem[addr+2], mem[addr+1] ,mem[addr]};
                     if (mem[addr][1:0] == 2'b11)
                         is_regular_inst <= 1;
                     else
                         is_regular_inst <=0;
                  end                  
                else
                begin 
                    if (mem_Read)
                    begin
                        case (func3)
                            `LB: data_out = {{24{mem[addr+200][7]}},mem[addr+200]};
                            `LBU: data_out = {24'b0 ,mem[addr+200][7:0]};
                            `LH: data_out = {{16{mem[addr+200][7]}}, mem[addr+1+200]  , mem[addr+200]};
                            `LHU: data_out = {16'b0 , mem[addr+1+200]  , mem[addr+200]};
                            `LW :  data_out = {mem[addr+3+200],mem[addr+2+200],mem[addr+1+200],mem[addr+200]};
                            default : data_out = {mem[addr+3+200],mem[addr+2+200],mem[addr+1+200],mem[addr+200]};  // This case is not supposed to occur ever
                        endcase
                    end
                    else
                        data_out = 0;
                end
            end

        always @(*) //data process    
            begin
            if(~sClk)
                if (mem_write) //store case
                   begin
                   
                         case(func3)
                            `SB: mem[addr+200] =  data_in[7:0]  ; 
                            `SH: 
                                begin
                                    mem[addr+200] =  data_in[7:0] ;
                                    mem[addr+1+200] =  data_in[15:8] ;
                                end
                            `SW:  
                                begin
                                   mem[addr+200] = data_in[7:0];
                                   mem[addr+1+200] = data_in[15:8] ;
                                   mem[addr+2+200] = data_in[23:16] ;
                                   mem[addr+3+200] = data_in[31:24] ;
                                end
                           endcase      
                   end 
                
            end            
endmodule
