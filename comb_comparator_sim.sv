`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 15:52:27
// Design Name: 
// Module Name: comb_comparator_sim
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


module comb_comparator_sim(

    );
    logic [1:0] a;
    logic [1:0] b;
    logic gr;
    logic eq;
    logic ls;
    comb_comparator uut(.a(a),.b(b),.eq(eq),.gr(gr),.ls(ls));
    initial
    begin 
    a=2'b00;b=2'b00;
    #10
    a=2'b00;b=2'b01;
    #10
    a=2'b00;b=2'b10;
    #10
    a=2'b00;b=2'b11;
    #10
    a=2'b01;b=2'b00;
    #10
    a=2'b01;b=2'b01;
    #10
    a=2'b01;b=2'b10;
    #10
    a=2'b01;b=2'b11;
    #10
    a=2'b10;b=2'b00;
    #10
    a=2'b10;b=2'b01;
    #10
    a=2'b10;b=2'b10;
    #10
    a=2'b10;b=2'b11;
    #10
    a=2'b11;b=2'b00;
    #10
    a=2'b11;b=2'b01;
    #10
    a=2'b11;b=2'b10;
    #10
    a=2'b11;b=2'b11;
    #10
     $finish;
    end
endmodule
