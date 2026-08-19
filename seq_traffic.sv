`timescale 1ns / 1ps

module seq_traffic_sim(

    );
    logic y;
    logic r;
    logic g;
    logic clk;
    logic reset;
    seq_traffic uut(.clk(clk),.reset(reset),.g(g),.y(y),.r(r));
   always #5 clk=~clk;
    initial begin
     clk=0;
     reset=1;
     #10;
     reset=0;
     #100
     $finish;
    end 
endmodule
