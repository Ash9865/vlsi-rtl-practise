`timescale 1ns / 1ps

module traffic_light_controller(
    input  logic clk,
    input  logic reset,
    output logic NS_G,
    output logic NS_Y,
    output logic NS_R,
    output logic EW_G,
    output logic EW_Y,
    output logic EW_R
    );

    typedef enum logic [2:0] {
        NS_GREEN,
        NS_YELLOW,
        ALL_RED_1,
        EW_GREEN,
        EW_YELLOW,
        ALL_RED_2
    } state_t;

    state_t state, next_state;
    logic [2:0] counter;

    always_comb begin
        next_state = state;
        case (state)
            NS_GREEN:   next_state = NS_YELLOW;
            NS_YELLOW:  next_state = ALL_RED_1;
            ALL_RED_1:  next_state = EW_GREEN;
            EW_GREEN:   next_state = EW_YELLOW;
            EW_YELLOW:  next_state = ALL_RED_2;
            ALL_RED_2:  next_state = NS_GREEN;
            default:     next_state = NS_GREEN;
        endcase
    end

    always_comb begin
        NS_G = 1'b0;
        NS_Y = 1'b0;
        NS_R = 1'b0;
        EW_G = 1'b0;
        EW_Y = 1'b0;
        EW_R = 1'b0;

        case (state)
            NS_GREEN: begin
                NS_G = 1'b1;
                EW_R = 1'b1;
            end
            NS_YELLOW: begin
                NS_Y = 1'b1;
                EW_R = 1'b1;
            end
            ALL_RED_1, ALL_RED_2: begin
                NS_R = 1'b1;
                EW_R = 1'b1;
            end
            EW_GREEN: begin
                NS_R = 1'b1;
                EW_G = 1'b1;
            end
            EW_YELLOW: begin
                NS_R = 1'b1;
                EW_Y = 1'b1;
            end
            default: begin
                NS_R = 1'b1;
                EW_R = 1'b1;
            end
        endcase
    end

    always_ff @(posedge clk) begin
        if (reset) begin
            state   <= NS_GREEN;
            counter <= 3'd0;
        end else if ((state == NS_GREEN) || (state == EW_GREEN)) begin
            if (counter == 3'd4) begin
                state   <= next_state;
                counter <= 3'd0;
            end else begin
                counter <= counter + 3'd1;
            end
        end else begin
            if (counter == 3'd1) begin
                state   <= next_state;
                counter <= 3'd0;
            end else begin
                counter <= counter + 3'd1;
            end
        end
    end

endmodule
