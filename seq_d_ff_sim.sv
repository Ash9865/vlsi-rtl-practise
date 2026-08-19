`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 10:34:16
// Design Name: 
// Module Name: seq_d_ff_sim
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


module seq_d_ff_sim(

    );
    logic clk;
    logic d;
    logic q;
    seq_d_ff uut(.clk(clk),.q(q),.d(d));
    initial
    begin
     clk=0;
     d=0;
     #7 d=1;
     #10 d=0;
     #10 d=1;
     #10 $finish;
    end
    
    always #5 clk=~clk; 
endmodule
