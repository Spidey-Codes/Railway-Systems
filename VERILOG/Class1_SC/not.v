`timescale 1ns / 1ps
module NOT ( A, Output3 );
input [15:0] A;
output [15:0] Output3;
assign Output3 = ~A;
endmodule 