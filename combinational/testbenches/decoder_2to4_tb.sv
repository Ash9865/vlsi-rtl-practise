`timescale 1ns / 1ps
module decoder_2to4_tb(

    );
     logic [1:0] sel;
     logic [3:0] y;
    decoder_2to4 uut(.sel(sel),.y(y));
    initial 
    begin 
    sel=2'b00;
    #10
    sel=2'b01;
    #10
     sel=2'b10;
    #10
     sel=2'b11;
    #10
     $finish;
    end
endmodule
