`timescale 1ns / 1ps
module comparator_2bit_tb(

    );
    logic [1:0] a;
    logic [1:0] b;
    logic gr;
    logic eq;
    logic ls;
    comparator_2bit uut(.a(a),.b(b),.eq(eq),.gr(gr),.ls(ls));
    initial
    begin 
    a=2'b00;b=2'b00;
    #10
    a=2'b00;b=2'b01;
    #10
    a=2'b00;b=2'b10;
    #10
    a=2'b00;b=2'b11;
    #10
    a=2'b01;b=2'b00;
    #10
    a=2'b01;b=2'b01;
    #10
    a=2'b01;b=2'b10;
    #10
    a=2'b01;b=2'b11;
    #10
    a=2'b10;b=2'b00;
    #10
    a=2'b10;b=2'b01;
    #10
    a=2'b10;b=2'b10;
    #10
    a=2'b10;b=2'b11;
    #10
    a=2'b11;b=2'b00;
    #10
    a=2'b11;b=2'b01;
    #10
    a=2'b11;b=2'b10;
    #10
    a=2'b11;b=2'b11;
    #10
     $finish;
    end
endmodule
