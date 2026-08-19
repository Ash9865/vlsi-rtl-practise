`timescale 1ns / 1ps
module full_adder_from_half_adders(
    input a,b,cin,
    output sum,cout
    );
    
    logic sum_0;
    logic c1,c2;
    assign sum_0=a^b;
    assign c1=a&b;
    assign c2=sum_0&cin;
    assign cout=c2|c1;
    assign sum=sum_0^cin;
endmodule
