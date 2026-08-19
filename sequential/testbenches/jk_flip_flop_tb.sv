`timescale 1ns / 1ps
module jk_flip_flop_tb(

    );
    logic clk;
    logic q;
    logic j;
    logic k;
    jk_flip_flop uut(.clk(clk),.q(q),.j(j),.k(k));
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
