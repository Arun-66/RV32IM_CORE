`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 14:28:02
// Design Name: 
// Module Name: Inst_Mem
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


module Inst_Mem#(parameter AddrSize = 32, Length = 2**AddrSize,Inst_Size = 32)(
    input clk,
    input [AddrSize-1:0] addr,
    output reg [Inst_Size-1:0] inst
    );

reg [Inst_Size-1:0]mem[0:1023];

initial begin
    $readmemh("C:/Users/arun/Desktop/program_dump.hex", mem);  // Load memory from hex file
end
always@(posedge clk)begin
    inst <= mem[addr];
end
endmodule