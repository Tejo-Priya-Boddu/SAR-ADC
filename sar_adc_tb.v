`timescale 1ns / 1ps
module tb_sar_adc();
reg clk=0;
reg rst=1;
reg [11:0]vin;
wire [11:0]dout;
wire done;

sar_adc uut(
    .clk(clk),
    .rst(rst),
    .vin(vin),
    .dout(dout),
    .done(done)
    );
    
always #5 clk= ~clk;

initial begin
    vin = 12'h055;  // 85 decimal
    #20 rst = 0;
    #2000;
    $finish;
end

endmodule
