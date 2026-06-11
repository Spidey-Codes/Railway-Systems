module halfadder(S,C,x,y);
input x,y;                                                                //Half Adder
output S,C;
xor (S,x,y);
and (C,x,y);
endmodule

module carrygenerator(Cin,p0,p1,p2,p3,g0,g1,g2,g3,c0,c1,c2,c3,c4);
input Cin,p0,p1,p2,p3,g0,g1,g2,g3;
output c0,c1,c2,c3,c4;                                                    //Carry Generator
assign c0 = Cin;
assign c1 = g0 | (p0&Cin);
assign c2 = g1 | (p1&g0) | (p1&p0&Cin);
assign c3 = g2 | (p2&g1) | (p2&p1&g0) | (p2&p1&p0&Cin);
assign c4 = g3 | (p3&g2) | (p3&p2&g1) | (p3&p2&p1&g0) | (p3&p2&p1&p0&Cin);
endmodule

module CLA (a,b,cin,Sum,Cout);
input [3:0]a,b;
input cin;                                                                //Carry Look Ahead Adder
output [3:0]Sum;
output Cout;
wire p0,p1,p2,p3,g0,g1,g2,g3,c0,c1,c2,c3,c4;

halfadder HA1(p0,g0,a[0],b[0]);
halfadder HA2(p1,g1,a[1],b[1]);
halfadder HA3(p2,g2,a[2],b[2]);
halfadder HA4(p3,g3,a[3],b[3]);

carrygenerator CG(cin,p0,p1,p2,p3,g0,g1,g2,g3,c0,c1,c2,c3,c4);
assign Sum[0]= p0^c0;
assign Sum[1]= p1^c1;
assign Sum[2]= p2^c2;
assign Sum[3]= p3^c3;
assign Cout = c4;

endmodule //CLA
