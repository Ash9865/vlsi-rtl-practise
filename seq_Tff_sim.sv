`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 12:08:58
// Design Name: 
// Module Name: seq_Tff_sim
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


module seq_Tff_sim(

    );
    logic t;
    logic clk;
    logic q;
    seq_Tff uut(.t(t),.q(q),.clk(clk));
    initial
    begin
    clk=0; q=0;
    t=0;
    #10
    t=1;
    #30
    t=0;
    #20
    $finish;
    end
    always #5 clk=~clk; 
endmodule
