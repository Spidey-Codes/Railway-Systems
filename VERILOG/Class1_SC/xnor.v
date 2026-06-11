`timescale 1ns / 1ps
module XNOR ( A, B, Output7 );
input [15:0] A, B;
output [15:0] Output7;
assign Output7 = ~(A ^ B);
endmodule 