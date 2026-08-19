`timescale 1ns / 1ps
module d_flip_flop_reset_tb(

    );
    logic clk;
    logic q;
    logic d;
    logic reset;
    d_flip_flop_reset uut(.clk(clk),.q(q),.d(d),.reset(reset));
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
