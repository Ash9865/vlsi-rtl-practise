`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 11:55:17
// Design Name: 
// Module Name: comb_1_simula
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


module comb_1_simula(

    );
    
    reg a,b,c;
    wire y;
    comb_1 uut(a,b,c,y);
    initial 
    begin 
    a=0;b=0;c=0;//gives values to input at t=0
    #10
    a=0;b=0;c=1;
    #10 
    a=0;b=1;c=0;
    #10
     a=0;b=1;c=1;
    #10
     a=1;b=0;c=0;
    #10
     a=1;b=0;c=1;
    #10
     a=1;b=1;c=0;
    #10
     a=1;b=1;c=1;
    #10 $finish;
    end
endmodule
