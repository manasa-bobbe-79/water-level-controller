module water_level_controller (
    input        clk,
    input        reset,

    input        level_25,
    input        level_50,
    input        level_75,
    input        level_100,

    output reg   pump
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        pump <= 1'b0;
    end
    else begin
        // Turn pump ON when water level is below 25%
        if (!level_25)
            pump <= 1'b1;

        // Turn pump OFF when tank reaches 100%
        else if (level_100)
            pump <= 1'b0;
    end
end

endmodules