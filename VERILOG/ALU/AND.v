`timescale 1ns / 1ps
module AND (A, B, Output3);
input [7:0]A,B;
output [15:0]Output3;
assign Output3 = A&B;
// This module performs a bitwise AND operation on two 8-bit inputs A and B
// and produces an 8-bit output Output3.
endmodule //AND