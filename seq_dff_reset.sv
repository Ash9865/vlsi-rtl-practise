`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 11:08:39
// Design Name: 
// Module Name: seq_dff_reset
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


module seq_dff_reset_sim(

    );
    logic clk;
    logic q;
    logic d;
    logic reset;
    seq_dff_reset uut(.clk(clk),.q(q),.d(d),.reset(reset));
    initial 
    begin
    clk=0; d=1;reset=1;
    #12 reset=0; 
    #8 d=0;
    #10 reset=1;
    #10 reset=0;
    #10 $finish;
     
    end
    always #5 clk=~clk;
endmodule
