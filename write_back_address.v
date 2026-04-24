`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/04/15 11:58:44
// Design Name: 
// Module Name: write_back_address
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


module write_back_address(
    input        RegDst,
    input [31:0] instr,
    output reg [4:0] WriteReg
    );
    
    always@(*)
    begin
        if (RegDst)
            WriteReg = instr[15:11]; // rd
        else
            WriteReg = instr[20:16]; // rt
    end
endmodule
