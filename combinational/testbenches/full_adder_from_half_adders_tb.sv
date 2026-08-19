`timescale 1ns / 1ps
module full_adder_from_half_adders_tb(

    );
    
    logic a,b,cin;
    logic cout,sum;
    full_adder_from_half_adders uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    initial 
    begin 
    a=0;b=0;cin=0;
    #10
    a=0;b=0;cin=1;
    #10 
    a=0;b=1;cin=0;
    #10
     a=0;b=1;cin=1;
    #10
     a=1;b=0;cin=0;
    #10
     a=1;b=0;cin=1;
    #10
     a=1;b=1;cin=0;
    #10
     a=1;b=1;cin=1;
    #10 $finish;
    end
endmodule
