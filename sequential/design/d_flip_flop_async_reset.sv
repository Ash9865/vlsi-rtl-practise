`timescale 1ns / 1ps
module d_flip_flop_async_reset(
    input logic clk, logic reset, logic d,
    output logic q
    );
     always_ff @(posedge clk or posedge reset)begin
    if (reset)
    q<=1'b0;
    else
    q<=d;
    end
endmodule
