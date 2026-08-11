`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 14:35:48
// Design Name: 
// Module Name: comb_deco
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


module comb_deco(
    input logic [1:0] sel,
    output logic [3:0] y
    );
    
    always_comb begin
    y=4'b0000;
    case(sel)
    2'b00:y=4'b0001;
    2'b01:y=4'b0010;
    2'b10:y=4'b0100;
    2'b11:y=4'b1000;
    default:y=4'b0000;
    endcase 
    end
endmodule
