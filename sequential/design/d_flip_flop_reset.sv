`timescale 1ns / 1ps

module d_flip_flop_reset(
    input  logic clk,
    input  logic reset,
    input  logic d,
    output logic q
    );

    always_ff @(posedge clk) begin
        if (reset)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule
