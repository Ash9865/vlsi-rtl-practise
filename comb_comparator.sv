`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 15:46:21
// Design Name: 
// Module Name: comb_comparator
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


module comb_comparator(
    input logic [1:0] a, logic [1:0] b ,
    output logic gr,logic eq,logic ls
    );
    assign eq=(a == b);
    assign gr=(a>b);
    assign ls=(a<b);
endmodule
