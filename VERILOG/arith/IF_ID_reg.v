module IF_ID_reg (
    input wire clk,rst,
    input wire IF_ID_Write,
    input wire IF_ID_Flush,

    input wire [31:0] Instruction_In,
    input wire [31:0] PC_Plus_4_in,

    output reg [31:0] Instruction_out,
    output reg [31:0] PC_Plus_4_out
);
    always @(posedge clk or negedge rst) begin
        if (!rst || IF_ID_Flush) begin
            Instruction_out <= 32'h00000013;
            PC_Plus_4_out <= 32'h0;
        end else if (IF_ID_Write) begin
          Instruction_out <= Instruction_In;
          PC_Plus_4_out   <= PC_Plus_4_in;
        end
    end
endmodule