`timescale 1ns / 1ps
module ALU (
    input [15:0] in0, in1, in2, in3, in4, in5, in6, in7,
    input [2:0]  Sel,
    output reg [15:0] Y // Output must be 16 bits wide
);
    always @(*) begin
        case (Sel)
            3'b000: Y = in0; // NOT A
            3'b001: Y = in1; // A OR B
            3'b010: Y = in2; // A AND B
            3'b011: Y = in3; // A XOR B
            3'b100: Y = in4; // Adder (A + B)
            3'b101: Y = in5; // Subtractor (A - B)
            3'b110: Y = in6; // Multiplier (A * B)
            3'b111: Y = in7; // NOT B
            default: Y = 16'hXXXX; // Default to 'X' for safety
        endcase
    end

endmodule


















// module ALU ( input [7:0]Output1, Output2, Output3, Output4,Output8,
//              input [8:0]Output5, Output6, 
//              input [15:0]Output7,
//     input [2:0] Sel,
//     output y);
// // This module implements an ALU that selects one of the eight outputs based on the 3-bit selector input Sel.
// // Each Output corresponds to a different operation, such as addition, subtraction, multiplication, etc.
// assign y = (Output1& ~Sel[2]& ~Sel[1]& ~Sel[0]) |(Output2& ~Sel[2]& ~Sel[1]& Sel[0])|
//            (Output3& ~Sel[2]& Sel[1]& ~Sel[0]) | (Output4& ~Sel[2]& Sel[1]& Sel[0])|
//            (Output5&  Sel[2]& ~Sel[1]& ~Sel[0]) |(Output6& Sel[2]& ~Sel[1]& Sel[0])|
//            (Output7& Sel[2]& Sel[1]& ~Sel[0]) |(Output8& Sel[2]& Sel[1]& Sel[0]);
// endmodule //ALU
