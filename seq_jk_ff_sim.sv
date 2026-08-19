`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 11:43:53
// Design Name: 
// Module Name: seq_jk_ff_sim
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


module seq_jk_ff_sim(

    );
    logic clk;
    logic q;
    logic j;
    logic k;
    seq_jk_ff uut(.clk(clk),.q(q),.j(j),.k(k));
    initial 
    begin
    clk=0;
    j=0;k=1;
    #10 
    j=0;k=0;
    #10
    j=1;k=0;
    #10
    j=1;k=1;
    #10
    #10 $finish; 
    end
    always #5 clk=~clk;
endmodule
