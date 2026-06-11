module Comparator_12bit (
   /* input [11:8]A,
    input [11:8]B,
    input [7:4]A,
    input [7:4]B,*/
    input [11:0]A,
    input [11:0]B,
    input e,g,l,
    output AEqualB1,
    output AGreatB1,
    output ALessB1,
    output AEqualB2,
    output AGreatB2,
    output ALessB2,
    output AEqualB3,
    output AGreatB3,
    output ALessB3
);
wire x0,x1,x2,x3,x4,x5,x6,x7,x8, x9, x10, x11;
assign x0 = (A[0]& B[0])|(~A[0] & ~B[0]);
assign x1 = (A[1]& B[1])|(~A[1] & ~B[1]);
assign x2 = (A[2]& B[2])|(~A[2] & ~B[2]);
assign x3 = (A[3]& B[3])|(~A[3] & ~B[3]);
assign x4 = (A[4]& B[4])|(~A[4] & ~B[4]);
assign x5 = (A[5]& B[5])|(~A[5] & ~B[5]);
assign x6 = (A[6]& B[6])|(~A[6] & ~B[6]);
assign x7 = (A[7]& B[7])|(~A[7] & ~B[7]);
assign x8 = (A[8]& B[8])|(~A[8] & ~B[8]);
assign x9 = (A[9]& B[9])|(~A[9] & ~B[9]);
assign x10 = (A[10]& B[10])|(~A[10] & ~B[10]);
assign x11 = (A[11]& B[11])|(~A[11] & ~B[11]);

assign AEqualB1 = x11&x10&x9&x8;
assign AGreatB1 = (A[11]& ~B[11]) | (x11 & A[10]& ~B[10]) | (x11 & x10 & A[9] & ~B[9]) | (x11 & x10 & x9 & A[8]& ~B[8]);
assign ALessB1 = (~A[11]& B[11]) | (x11 & ~A[10]& B[10]) | (x11 & x10 & ~A[9] & B[9]) | (x11 & x10 & x9 & ~A[8]& B[8]);
assign AEqualB2 = x7&x6&x5&x4&AEqualB1;
assign AGreatB2 = (A[7]& ~B[7]) | (x7 & A[6]& ~B[6]) | (x7 & x6 & A[5] & ~B[5]) | (x7 & x6 & x5 & A[4]& ~B[4]) | AGreatB1;
assign ALessB2 = (~A[7]& B[7]) | (x7 & ~A[6]& B[6]) | (x7 & x6 & ~A[5] & B[5]) | (x7 & x6 & x5 & ~A[4]& B[4]) | ALessB1;
assign AEqualB3 = x3&x2&x1&x0&AEqualB2;
assign AGreatB3 = (A[3]& ~B[3]) | (x3 & A[2]& ~B[2]) | (x3 & x2 & A[1] & ~B[1]) | (x3 & x2 & x1 & A[0]& ~B[0]) | AGreatB2;
assign ALessB3 = (~A[3]& B[3]) | (x3 & ~A[2]& B[2]) | (x3 & x2 & ~A[1] & B[1]) | (x3 & x2 & x1 & ~A[0]& B[0]) | ALessB2;
endmodule //Comparator_12bit