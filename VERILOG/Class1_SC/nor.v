`timescale 1ns / 1ps
module NOR ( A, B, Output6 );
input [15:0] A, B;
output [15:0] Output6;
assign Output6 = ~(A | B);
endmodule 