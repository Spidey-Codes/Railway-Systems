module Cntrl_Unit(
    input wire [6:0] opcode,
    output reg PC_Write,
    output reg [1:0] PCSource,
    output reg Jump,
    output reg [2:0]imm_sel,
    output reg RegWrite,
    output reg ALUSrc,
    output reg [2:0] ALUOp,
    output reg MemRead,
    output reg MemWrite,
    output reg MemToReg,
    output reg Branch
);

    localparam OP_R_Type = 7'b0110011;
    localparam OP_I_Type = 7'b0010011;
    localparam OP_LOAD   = 7'b0000011;
    localparam OP_STORE  = 7'b0100011;
    localparam OP_BRANCH = 7'b1100011;
    localparam OP_JAL    = 7'b111011;
    localparam PC_PLUS_4 = 2'b00;
    localparam PC_BRANCH = 2'b01;
    localparam PC_JUMP   = 2'b10;

    always @(*) begin
        PC_Write = 1'b1;
        imm_sel  = 3'b000;
        RegWrite = 1'b0;
        ALUSrc   = 1'b0;
        ALUOp    = 3'b000;
        MemRead  = 1'b0;
        MemWrite = 1'b0;
        MemToReg = 1'b0;
        Branch   = 1'b0;
        PCSource = PC_PLUS_4;
        Jump     = 1'b0;

    case(opcode)
        OP_R_Type: begin
            RegWrite = 1'b1;
            ALUSrc   = 1'b0;
            ALUOp    = 3'b000;
        end
        OP_I_Type: begin
            RegWrite = 1'b1;
            ALUSrc   = 1'b1;
            ALUOp    = 3'b000;
            imm_sel  = 3'b001;
        end
        OP_LOAD: begin
            RegWrite = 1'b1;
            ALUSrc   = 1'b1;
            ALUOp    = 3'b000;
            imm_sel  = 3'b001;
            MemRead  = 1'b1;
            MemToReg = 1'b1;
        end
        OP_STORE: begin
            ALUSrc   = 1'b1;
            ALUOp    = 3'b000;
            imm_sel  = 3'b010;
            MemWrite = 1'b1;
        end
        OP_BRANCH: begin
            Branch = 1'b1;
            imm_sel = 3'b011;
            PCSource = PC_BRANCH;
            PC_Write = 1'b1;
        end

        OP_JAL: begin
            Jump  = 1'b1;
            imm_sel = 3'b101;
            PCSource = PC_JUMP;
            RegWrite = 1'b1;
        end
        default: begin
            PC_Write = 1'b1;
            RegWrite = 1'b0;
        end
    endcase
end
endmodule
