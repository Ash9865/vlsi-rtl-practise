`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 12:05:56
// Design Name: 
// Module Name: seq_Tff
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


module seq_Tff(
    input logic t,
    input logic clk,
    output logic q
    );
    always_ff @(posedge clk)begin
    if(t)
    q <= ~q;//why error
    end
endmodule
