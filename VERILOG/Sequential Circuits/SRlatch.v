module SRlatch();
input wire S, R;
output wire Q, Qb;
assign Q = ~(R | Qb);
assign Qb = ~(S | Q);

endmodule