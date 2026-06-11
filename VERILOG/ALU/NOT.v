`timescale 1ns / 1ps
module NOT (A,B,Output1,Output8);
input [7:0]A,B;
output [15:0]Output1,Output8;
assign Output1 = ~A;
assign Output8 = ~B;
endmodule //NOT