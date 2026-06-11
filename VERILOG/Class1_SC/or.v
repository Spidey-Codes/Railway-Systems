`timescale 1ns / 1ps
module OR ( A, B, Output2 );
input [15:0] A, B;
output [15:0] Output2;
assign Output2 = A | B;
endmodule 