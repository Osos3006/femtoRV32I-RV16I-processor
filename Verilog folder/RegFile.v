`timescale 1ns / 1ps
/*******************************************************************
*
* Module: RegFile.v
* Project: femtoRV32
* Author(s): Abdelhakim Badawy  - abdelhakimbadawy@aucegypt.edu
*            Marwan Eid         - marwanadel99@aucegypt.edu
*            Mohammed Abuelwafa - mohammedabuelwafa@aucegypt.edu
* Description: A verilog module for the Register File
*
* Change history: 10/23/19 - Added to the project
*
**********************************************************************/

module RegFile(
    input clk,
    input rst,
    input regwrite,
    input [4:0] readreg1,
    input [4:0] readreg2,
    input [4:0] writereg,
    input [31:0] writedata,
    output [31:0] readdata1,
    output [31:0] readdata2
);

    reg [31:0]load;
    wire [31:0] outData [0:31];
    genvar i;
    generate 
        for (i = 0; i < 32; i = i + 1)
            begin: gen1
                Register register_mod(.clk(clk), .rst(rst), .load(load[i]), .D(writedata), .Q(outData[i]));
            end
    endgenerate
    // reading 
    assign readdata1 = outData[readreg1];
    assign readdata2 = outData[readreg2];
    //writing
    always @*
        begin
            load = 0;
            if (regwrite && (writereg !=0))
                    load[writereg] = 1'b1;
            else 
                    load = 0;
        end
endmodule
