`timescale 1ns / 1ps
module Halfadder (S,C,x,y);
    input x,y;
    output S, C;
    xor (S,x,y);
    and (C,x,y); 
endmodule

module FullAdder (S,C,x,y,z);
    input x,y,z;
    output S,C;
    wire S1, D1,D2;
    Halfadder H1(S1,D1,x,y);
    Halfadder H2(S,D2,S1,z);
    or g1(C,D1,D2);
endmodule

module Adder (S,C8,A,B,C0,Output5);
    input [7:0]A,B;
    input C0;
    output [7:0]S;
    output [15:0]Output5;
    output C8; // Carry out
    wire C1,C2,C3,C4,C5,C6,C7;

    FullAdder FA1 (S[0],C1,A[0],B[0],C0);
    FullAdder FA2 (S[1],C2,A[1],B[1],C1);
    FullAdder FA3 (S[2],C3,A[2],B[2],C2);
    FullAdder FA4 (S[3],C4,A[3],B[3],C3);
    FullAdder FA5 (S[4],C5,A[4],B[4],C4);
    FullAdder FA6 (S[5],C6,A[5],B[5],C5);
    FullAdder FA7 (S[6],C7,A[6],B[6],C6);
    FullAdder FA8 (S[7],C8,A[7],B[7],C7);
    assign Output5 = {C8,S[7:0]}; 

// module 8_bit_Adder ();

// endmodule //8_bit_Adder