`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 11:18:45
// Design Name: 
// Module Name: seq_mealy_sim
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


module seq_mealy_sim(

    );
    logic clk;
    logic reset;
    logic x;
    logic y;
    seq_mealy uut (.clk(clk),.reset(reset),.x(x),.y(y)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        x = 0;
        #10;
        reset = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10;
        $finish;
    end

endmodule
