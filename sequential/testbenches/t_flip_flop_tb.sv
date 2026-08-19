`timescale 1ns / 1ps
module t_flip_flop_tb(

    );
    logic t;
    logic clk;
    logic reset;
    logic q;
    t_flip_flop uut(.t(t),.q(q),.clk(clk),.reset(reset));
    initial
    begin
    clk=0;
    reset=1;
    t=0;
    #10 reset=0;
    t=1;
    #30
    t=0;
    #20
    $finish;
    end
    always #5 clk=~clk; 
endmodule
