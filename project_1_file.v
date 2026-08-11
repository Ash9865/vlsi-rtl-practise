`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 11:27:48
// Design Name: 
// Module Name: basic_gates
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


module basic_gates(
    input a,b,
    output y0,y1,y2
    );
    
    assign y0=~a;
    assign y1= a&b;
    assign y2=a|b;
endmodule
