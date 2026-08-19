`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 11:18:45
// Design Name: 
// Module Name: seq_dff_reset_asynch
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


module seq_dff_reset_asynch(
    input logic clk, logic reset, logic d,
    output logic q
    );
     always_ff @(posedge clk or posedge reset)begin
    if (reset)
    q<=1'b0;
    else
    q<=d;
    end
endmodule
