`timescale 1ns / 1ps
module d_flip_flop_async_reset_tb(

    );
logic clk;
    logic q;
    logic d;
    logic reset;
    d_flip_flop_async_reset uut(.clk(clk),.q(q),.d(d),.reset(reset));
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
