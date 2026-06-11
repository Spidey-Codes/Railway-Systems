`timescale 1ns / 1ps
module MUL_8_bit (
    input      [7:0] A, // Input A
    input      [7:0] B,   // Input B
    output reg [15:0] Output7      // Output A * B
);

    // This single line describes the multiplication.
    // It's combinational, so any change in inputs immediately changes the output.
    always @(*) begin
        Output7 = A * B;
    end

endmodule