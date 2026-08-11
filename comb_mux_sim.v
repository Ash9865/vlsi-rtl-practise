`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 14:04:22
// Design Name: 
// Module Name: comb_mux_sim
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


module comb_mux_sim(

    );
    reg a,b,sel;
    wire y;
    comb_mux uut(a,b,sel,y);
    initial 
    begin 
    a=0;b=0;sel=0;//gives values to input at t=0
    #10
    a=0;b=0;sel=1;
    #10 
    a=0;b=1;sel=0;
    #10
     a=0;b=1;sel=1;
    #10
     a=1;b=0;sel=0;
    #10
     a=1;b=0;sel=1;
    #10
     a=1;b=1;sel=0;
    #10
     a=1;b=1;sel=1;
    #10 $finish;
    end
endmodule
    
