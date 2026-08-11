`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 11:33:13
// Design Name: 
// Module Name: simula
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


module simula(

    );
    reg a,b;
    wire y0,y1,y2;
    basic_gates uut(a,b,y0,y1,y2);
    initial 
    begin 
    a=0;b=0;
    #10
    a=0;b=1;
    #10
    a=1;b=0;
    #10
    a=1;b=1;
    #10 $finish;
    end
endmodule
