`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 11:20:47
// Design Name: 
// Module Name: seq_dff_reset_asynch_sim
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


module seq_dff_reset_asynch_sim(

    );
logic clk;
    logic q;
    logic d;
    logic reset;
    seq_dff_reset_asynch uut(.clk(clk),.q(q),.d(d),.reset(reset));
    initial 
    begin
    clk=0; d=0;reset=1;
    #12 reset=0; 
    #7 d=1;
    #10 reset=1;
    #10 reset=0;
    #10 $finish;
     
    end
    always #5 clk=~clk;
endmodule
