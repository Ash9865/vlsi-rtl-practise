`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 15:26:25
// Design Name: 
// Module Name: comb_fulladd_from_half
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


module comb_fulladd_from_half(
    input a,b,cin,
    output sum,cout
    );
    
    logic sum_0;
    logic c1,c2;
    assign sum_0=a^b;
    assign c1=a&b;
    assign c2=sum_0&cin;
    assign cout=c2|c1;
    assign sum=sum_0^cin;
endmodule
