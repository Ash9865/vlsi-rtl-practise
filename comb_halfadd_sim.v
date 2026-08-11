`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 14:55:27
// Design Name: 
// Module Name: comb_halfadd_sim
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


module comb_halfadd_sim(

    );
    logic a,b;
    logic c,sum;
    comb_halfadd uut(.a(a),.b(b),.c(c),.sum(sum));
    initial 
    begin 
    a=0;b=0;
    #10
    a=0;b=1;
    #10
    a=1;b=0;
    #10
    a=1;b=1;
    #10
     $finish;
    end
endmodule
