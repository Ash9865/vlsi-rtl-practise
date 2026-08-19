`timescale 1ns / 1ps
module multiplexer_2to1_tb(

    );
    reg a,b,sel;
    wire y;
    multiplexer_2to1 uut(a,b,sel,y);
    initial 
    begin 
    a=0;b=0;sel=0;
    #10
    a=0;b=0;sel=1;
    #10 
    a=0;b=1;sel=0;
    #10
     a=0;b=1;sel=1;
    #10
     a=1;b=0;sel=0;
    #10
     a=1;b=0;sel=1;
    #10
     a=1;b=1;sel=0;
    #10
     a=1;b=1;sel=1;
    #10 $finish;
    end
endmodule
    
