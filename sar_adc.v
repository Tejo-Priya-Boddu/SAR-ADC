`timescale 1ns / 1ps
module sar_adc (
    input clk,
    input rst,
    input [11:0] vin,
    output reg [11:0] dout,
    output reg done
);

    reg [11:0] sar;
    reg [11:0] trial;
    reg [3:0] bit_index;  // 4 bits to count 0 to 11

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            sar <= 0;
            trial <= 0;
            bit_index <= 11;  // start from MSB
            done <= 0;
            dout <= 0;
        end else if (!done) begin
            trial = sar | (1 << bit_index);  // try setting current bit
            if (vin >= trial)
                sar = trial;  // keep the bit
            // else: bit remains 0

            if (bit_index == 0) begin
                dout <= sar;
                done <= 1;
            end else begin
                bit_index <= bit_index - 1;
            end
        end
    end
endmodule
