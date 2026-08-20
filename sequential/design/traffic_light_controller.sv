`timescale 1ns / 1ps

module seq_traffic_controller(
    input  logic clk,
    input  logic reset,
    output logic NS_G,
    output logic NS_Y,
    output logic NS_R,
    output logic EW_G,
    output logic EW_Y,
    output logic EW_R
);

    logic [2:0] state;
    logic [2:0] next_state;
    integer counter;

    always_comb
    begin
        case (state)
            3'b000: next_state <= 3'b001;
            3'b001: next_state <= 3'b010;
            3'b010: next_state <= 3'b011;
            3'b011: next_state <= 3'b100;
            3'b100: next_state <= 3'b101;
            3'b101: next_state <= 3'b000;
        endcase
    end

    always_comb
    begin
        case (state)

            3'b000: begin
                NS_G <= 1;
                NS_Y <= 0;
                NS_R <= 0;
                EW_G <= 0;
                EW_Y <= 0;
                EW_R <= 1;
            end

            3'b001: begin
                NS_G <= 0;
                NS_Y <= 1;
                NS_R <= 0;
                EW_G <= 0;
                EW_Y <= 0;
                EW_R <= 1;
            end

            3'b010: begin
                NS_G <= 0;
                NS_Y <= 0;
                NS_R <= 1;
                EW_G <= 0;
                EW_Y <= 0;
                EW_R <= 1;
            end

            3'b011: begin
                NS_G <= 0;
                NS_Y <= 0;
                NS_R <= 1;
                EW_G <= 1;
                EW_Y <= 0;
                EW_R <= 0;
            end

            3'b100: begin
                NS_G <= 0;
                NS_Y <= 0;
                NS_R <= 1;
                EW_G <= 0;
                EW_Y <= 1;
                EW_R <= 0;
            end

            3'b101: begin
                NS_G <= 0;
                NS_Y <= 0;
                NS_R <= 1;
                EW_G <= 0;
                EW_Y <= 0;
                EW_R <= 1;
            end

        endcase
    end

    initial counter = 0;

    always_ff @(posedge clk)
    begin
        if (reset)
            state <= 3'b000;

        else
        begin
            counter += 1;

            if ((state == 3'b000) || (state == 3'b011))
            begin
                if (counter == 5)
                begin
                    counter = 0;
                    state <= next_state;
                end
            end

            if ((state == 3'b001) ||
                (state == 3'b100) ||
                (state == 3'b010) ||
                (state == 3'b101))
            begin
                if (counter == 2)
                begin
                    counter = 0;
                    state <= next_state;
                end
            end
        end
    end

endmodule
