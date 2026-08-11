`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 14:52:22
// Design Name: 
// Module Name: comb_halfadd
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


module comb_halfadd(
    input a,b,
    output sum,c
    );
    
    assign sum=a^b;
    assign c=a&b;
    
endmodule
