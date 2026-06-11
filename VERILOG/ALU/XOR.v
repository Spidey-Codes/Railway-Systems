`timescale 1ns / 1ps
module XOR ( A, B, Output4 );
input [15:0] A, B;
output [15:0] Output4;
assign Output4 = A ^ B;
endmodule 