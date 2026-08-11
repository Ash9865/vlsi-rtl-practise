`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 15:10:57
// Design Name: 
// Module Name: comb_fulladd
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


module comb_fulladd_sim(

    );
    logic a,b,cin;
    logic cout,sum;
    comb_fulladd uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    initial 
    begin 
    a=0;b=0;cin=0;
    #10
    a=0;b=0;cin=1;
    #10 
    a=0;b=1;cin=0;
    #10
     a=0;b=1;cin=1;
    #10
     a=1;b=0;cin=0;
    #10
     a=1;b=0;cin=1;
    #10
     a=1;b=1;cin=0;
    #10
     a=1;b=1;cin=1;
    #10 $finish;
    end
endmodule
