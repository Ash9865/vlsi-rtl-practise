`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 10:53:17
// Design Name: 
// Module Name: seq_mealy
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seq_mealy(
    input logic clk,logic reset,logic x,
    output logic y
    );
    logic [1:0] state;
    logic [1:0] next_state;
    localparam logic [1:0] s0=2'b00;
    localparam logic [1:0] s1=2'b01;
    localparam logic [1:0] s2=2'b10;
    localparam logic [1:0] s3=2'b11;
    always_comb
    begin 
    case (state)
    s0:begin
    if(x)
    next_state=s1;
    else 
    next_state=s0;
    end
    s1:begin
    if(x)
    next_state=s1;
    else 
    next_state=s2;
    end
    s2:begin
    if(x)
    next_state=s1;
    else 
    next_state=s0;
    end
    default: next_state=s0;
    endcase
    end
    always_comb begin
    case (state)
        s0: y = 1'b0;
        s1: y = 1'b0;
        s2: begin
            if (x)
                y = 1'b1;
            else
                y = 1'b0;
        end
        default:
            y = 1'b0;
    endcase
end
    always_ff @(posedge clk)
    begin 
    if(reset)
    state<=s0;
    else 
    state<=next_state;
    end
endmodule
