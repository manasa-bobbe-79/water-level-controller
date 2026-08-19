`timescale 1ns/1ps

module water_level_controller_tb;

reg clk;
reg reset;

reg level_25;
reg level_50;
reg level_75;
reg level_100;

wire pump;

water_level_controller uut (
    .clk(clk),
    .reset(reset),
    .level_25(level_25),
    .level_50(level_50),
    .level_75(level_75),
    .level_100(level_100),
    .pump(pump)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $monitor("Time=%0t | 25%%=%b | 50%%=%b | 75%%=%b | 100%%=%b | Pump=%b",
             $time,
             level_25,
             level_50,
             level_75,
             level_100,
             pump);

    clk = 1'b0;
    reset = 1'b1;

    level_25  = 1'b0;
    level_50  = 1'b0;
    level_75  = 1'b0;
    level_100 = 1'b0;

    #10;
    reset = 1'b0;

    // Tank below 25%
    #10;
    level_25 = 1'b0;

    // Tank reaches 25%
    #10;
    level_25 = 1'b1;

    // Tank reaches 50%
    #10;
    level_50 = 1'b1;

    // Tank reaches 75%
    #10;
    level_75 = 1'b1;

    // Tank becomes full
    #10;
    level_100 = 1'b1;

    #10;

    $finish;

end

endmodule