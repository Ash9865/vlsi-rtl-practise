`timescale 1ns / 1ps
module half_adder_tb(

    );
    logic a,b;
    logic c,sum;
    half_adder uut(.a(a),.b(b),.c(c),.sum(sum));
    initial 
    begin 
    a=0;b=0;
    #10
    a=0;b=1;
    #10
    a=1;b=0;
    #10
    a=1;b=1;
    #10
     $finish;
    end
endmodule
