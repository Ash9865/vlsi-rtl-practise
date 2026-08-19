`timescale 1ns / 1ps
module comparator_2bit(
    input logic [1:0] a, logic [1:0] b ,
    output logic gr,logic eq,logic ls
    );
    assign eq=(a == b);
    assign gr=(a>b);
    assign ls=(a<b);
endmodule
