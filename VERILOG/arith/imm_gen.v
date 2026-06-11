module imm_gen(
    input wire [31:0]instruction,
    input wire [2:0]imm_sel,
    output wire [31:0]immediate_out
);
localparam I_Type = 3'b001;
localparam S_Type = 3'b010;
localparam B_Type = 3'b011;
localparam U_Type = 3'b100;
localparam J_Type = 3'b101;

wire [31:0] i_imm, s_imm, b_imm, u_imm, j_imm;
reg [31:0] out_imm;

assign i_imm = {{20{instruction[31]}}, instruction[31:20]};
assign s_imm = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]};
assign b_imm = {{19{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
assign u_imm = {instruction[31:12], 12'b0};
assign j_imm = {{11{instruction[31]}}, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0};

always @(*) begin
    case(imm_sel)
        I_Type: out_imm = i_imm;
        S_Type: out_imm = s_imm;
        B_Type: out_imm = b_imm;
        U_Type: out_imm = u_imm;
        J_Type: out_imm = j_imm;
        default: out_imm = 32'h0;
    endcase
end

assign immediate_out = out_imm;
endmodule