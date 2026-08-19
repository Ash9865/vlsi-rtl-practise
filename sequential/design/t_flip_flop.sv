`timescale 1ns / 1ps
module t_flip_flop(
    input logic t,
    input logic clk,
    input logic reset,
    output logic q
    );
    always_ff @(posedge clk) begin
    if (reset)
        q <= 1'b0;
    else if (t)
        q <= ~q;
    end
endmodule
