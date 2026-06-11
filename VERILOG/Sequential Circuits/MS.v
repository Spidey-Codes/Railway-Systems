module d_latch(en,d,q);
input en, d;
output reg q;
always@(*)
begin
    if(en)
        q = d;
    else
        q = q; // Hold state when enable is low
end
endmodule

module MS (clk,D,Q,Qb);   
input clk, D;
output Q, Qb;
wire W1;
d_latch d1(~clk, D, W1);
d_latch d2(clk, W1, Q);
assign Qb = ~Q; // Complement of Q
endmodule //MS