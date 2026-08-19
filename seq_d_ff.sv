`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 10:32:02
// Design Name: 
// Module Name: seq_d_ff
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


module seq_d_ff(
    input logic clk, input logic d,
    output logic q
    );
    always_ff@(posedge clk)begin
    q<=d;
    end
endmodule
