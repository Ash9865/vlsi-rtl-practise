`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 14:40:49
// Design Name: 
// Module Name: comb_deco_sim
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


module comb_deco_sim(

    );
     logic [1:0] sel;
     logic [3:0] y;
    comb_deco uut(.sel(sel),.y(y));
    initial 
    begin 
    sel=2'b00;//gives values to input at t=0
    #10
    sel=2'b01;//gives values to input at t=0
    #10
     sel=2'b10;//gives values to input at t=0
    #10
     sel=2'b11;//gives values to input at t=0
    #10
     $finish;
    end
endmodule
