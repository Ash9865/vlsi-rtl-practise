`timescale 1ns / 1ps
module mealy_fsm_tb(

    );
    logic clk;
    logic reset;
    logic x;
    logic y;
    mealy_fsm uut (.clk(clk),.reset(reset),.x(x),.y(y)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        x = 0;
        #10;
        reset = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10;
        $finish;
    end

endmodule
