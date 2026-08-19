`timescale 1ns / 1ps
module traffic_light_controller_tb(

    );
    logic clk;
    logic reset;
     logic NS_G;logic NS_Y;logic NS_R;logic EW_G;logic EW_Y;logic EW_R;
     traffic_light_controller uut(.clk(clk),.reset(reset),.NS_G(NS_G),
     .NS_Y(NS_Y),.NS_R(NS_R),.EW_G(EW_G),.EW_Y(EW_Y),.EW_R(EW_R));
     initial begin
     reset =1;
     clk=0;
     #10
     reset=0;
     #1000
     $finish;
     end 
     always #5 clk=~clk;
endmodule
