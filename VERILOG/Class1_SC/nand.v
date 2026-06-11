`timescale 1ns / 1ps
module NAND ( A, B, Output5 );
input [15:0] A, B;
output [15:0] Output5;
assign Output5 = ~(A & B);
endmodule 