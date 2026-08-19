`timescale 1ns / 1ps
module d_flip_flop_tb(

    );
    logic clk;
    logic d;
    logic q;
    d_flip_flop uut(.clk(clk),.q(q),.d(d));
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
