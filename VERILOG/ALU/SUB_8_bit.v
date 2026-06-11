`timescale 1ns / 1ps
module SUB_8_bit(A,B,Borrow,Diff,Output6);
input [7:0]A,B;
output [7:0]Diff;
output Borrow;
output [8:0]Output6;
assign {Borrow,Diff} = A - B;
assign Output6 = Diff[7:0]; 
endmodule






// module 2s (B,B_2s);
// input [7:0]B;
// output [7:0]B_2s;
// assign B_2s = ~B + 1;
// endmodule

// module Halfadder (S,C,x,y);
// input x,y;
// output S, C;
// xor (S,x,y);
// or (C,x,y);
// endmodule

// module FullAdder (S,C,x,y,z);
// input x,y,z;
// output S,C;
// wire S1, D1,D2;
// Halfadder H1(S1,D1,x,y);
// Halfadder H2(S,D2,S1,z);
// or g1(C,D1,D2);
// endmodule

// module SUB_8_bit (S,C,A,B_2s,C0);
// input [7:0]A,B_29s;
// input C0;
// output [7:0]S;
// output C;
// wire C1,C2,C3,C4,C5,C6,C7,C8;
// FullAdder FA1 (S[0],C1,A[0],B_2s[0],C0);
// FullAdder FA2 (S[1],C2,A[1],B_2s[1],C1);
// FullAdder FA3 (S[2],C3,A[2],B_2s[2],C2);
// FullAdder FA4 (S[3],C4,A[3],B_2s[3],C3);
// FullAdder FA5 (S[4],C5,A[4],B_2s[4],C4);
// FullAdder FA6 (S[5],C6,A[5],B_2s[5],C5);
// FullAdder FA7 (S[6],C7,A[6],B_2s[6],C6);
// FullAdder FA8 (S[7],C8,A[7],B_2s[7],C7);
// assign C = C8;
// endmodule

