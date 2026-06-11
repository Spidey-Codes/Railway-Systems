module Halfadder (S,C,x,y);
input x,y;
output S, C;
xor (S,x,y);
or (C,x,y);
endmodule

module FullAdder (S,C,x,y,z);
input x,y,z;
output S,C;
wire S1, D1,D2;
Halfadder H1(S1,D1,x,y);
Halfadder H2(S,D2,S1,z);
or g1(C,D1,D2);
endmodule

module RippleCarryAdder (S,C4,A,B,C0);
input [3:0]A,B;
input C0;
output [3:0]S;
output C4;
wire C1,C2,C3;

FullAdder FA1 (S[0],C1,A[0],B[0],C0);
FullAdder FA2 (S[1],C2,A[1],B[1],C1);
FullAdder FA3 (S[2],C3,A[2],B[2],C2);
FullAdder FA4 (S[3],C4,A[3],B[3],C3);
endmodule
