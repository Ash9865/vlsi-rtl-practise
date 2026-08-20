`timeascale 1ns / 1ps
module traffic_fsm(
    input logic clk, logic reset,
    output logic r,logic y,logic g
    );
    logic [1:0] state;
    logic [1:0]next_state;
    localparam s0=2'b00;
    localparam s1=2'b01;
    localparam s2=2'b10;
    always_comb 
    begin
     case(state)
     s0:next_state=s2;
     s1:next_state=s0;
     s2:next_state=s1;
     default: next_state=s0;
     endcase
    end
    always_comb
    begin
    case(state)
    s0: begin
    r=1;y=0;g=0; 
    end 
    s1: begin
    r=0;y=1;g=0; 
    end 
    s2: begin
    r=0;y=0;g=1; 
    end 
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
