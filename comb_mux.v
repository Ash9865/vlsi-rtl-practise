
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 12:51:26
// Design Name: 
// Module Name: comb_mux
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


module comb_mux(
    input logic a,
    input logic b,
    input logic sel,
    output logic y
    );
    always_comb
    begin
    if(sel==0)
    y=a;
    else
    y=b;
    end

endmodule
