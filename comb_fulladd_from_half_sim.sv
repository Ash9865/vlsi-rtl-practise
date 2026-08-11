`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 15:34:14
// Design Name: 
// Module Name: comb_fulladd_from_half_sim
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


module comb_fulladd_from_half_sim(

    );
    
    logic a,b,cin;
    logic cout,sum;
    comb_fulladd_from_half uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
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
