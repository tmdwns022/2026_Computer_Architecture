`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/04/15 12:07:54
// Design Name: 
// Module Name: write_back_data
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
module write_back_data(
    input       MemtoReg,
    input [31:0] ALUResult,
    input [31:0] ReadData,
    output reg [31:0] Result
    );
    
    always@(*)
        begin
            if(MemtoReg)
                Result = ReadData[31:0];
            else
                Result = ALUResult[31:0];          
        end
                
endmodule
