module cpu_core(
    input wire clk,
    input wire rst
);

    wire [31:0] PC_out, PC_plus_4;
    reg  [31:0] Next_PC_Mux_out;
    wire [31:0] instruction;
    wire [31:0] branch_target_addr = PC_out + immediate_value;
    wire [31:0] jump_target_addr = PC_out + immediate_value;
    
    localparam PC_PLUS_4 = 2'b00;
    localparam PC_BRANCH = 2'b01;
    localparam PC_JUMP   = 2'b10;

    wire [4:0]  rs1_addr, rs2_addr;
    wire [31:0] read_data1, read_data2;
    wire [31:0] write_data_mux_out;
    wire [4:0]  reg_dest_addr;

    wire [31:0] alu_input_A, alu_input_B;
    wire [31:0] immediate_value;
    wire [31:0] alu_result;
    wire [31:0] mem_read_data;
    wire        zero_flag;

    wire PC_Write_ctrl;
    reg  PCSource_ctrl;
    wire [2:0] imm_sel_ctrl;
    wire RegWrite_ctrl;
    wire ALUSrc_ctrl;
    wire [2:0] ALUOp_ctrl;
    wire MemRead_ctrl;
    wire MemWrite_ctrl;
    wire MemToReg_ctrl;
    wire Branch_ctrl;
    wire Jump_ctrl;
    always @(*) begin
        PCSource_ctrl = PC_PLUS_4;
        if (Jump_ctrl) begin
            PCSource_ctrl = PC_JUMP;
        end else if (Branch_ctrl && zero_flag) begin
            PCSource_ctrl = PC_BRANCH;
        end
    end

    always @(*) begin
        case(PCSource_ctrl)
            PC_PLUS_4: Next_PC_Mux_out = PC_plus_4;
            PC_BRANCH: Next_PC_Mux_out = branch_target_addr;
            PC_JUMP:   Next_PC_Mux_out = jump_target_addr;
            default:   Next_PC_Mux_out = PC_plus_4;
        endcase
    end

    assign PC_plus_4 = PC_out + 4;
    assign PC_Write_in = PC_Write_ctrl;

    ProgCntr PC_U (.clk(clk), .rst(rst), .PC_Write(PC_Write_in), .Next_PC(Next_PC_Mux_out), .PC(PC_out));
    
    Instruction_Mem IM_U (.address_i(PC_out), .instruction_o(instruction));
    
    Cntrl_Unit CU_U (.opcode(instruction[6:0]), .PC_Write(PC_Write_ctrl), .imm_sel(imm_sel_ctrl), .RegWrite(RegWrite_ctrl),
                     .ALUSrc(ALUSrc_ctrl), .ALUOp(ALUOp_ctrl), .MemRead(MemRead_ctrl), .MemWrite(MemWrite_ctrl), .MemToReg(MemToReg_ctrl), .Branch(Branch_ctrl));

    imm_gen IMM_U(.instruction(instruction), .imm_sel(imm_sel_ctrl), .immediate_out(immediate_value));

    assign rs1_addr = instruction[19:15];
    assign rs2_addr = instruction[24:20];
    assign reg_dest_addr = instruction[11:7];

    register_file RF_U (.clk(clk), .rst(rst), .we(RegWrite_ctrl), .rd_adr1(rs1_addr), .rd_adr2(rs2_addr), .w_adr(reg_dest_addr), .w_data(write_data_mux_out),
                        .rd_data1(read_data1), .rd_data2(read_data2));
    data_memory DMEM_U (.clk(clk), .MemRead(MemRead_ctrl), .MemWrite(MemWrite_ctrl), .addr(alu_result),
                        .wr_data(read_data2), .rd_data(mem_read_data));
    
    assign alu_input_A = read_data1;
    assign alu_input_B = ALUSrc_ctrl ? immediate_value : read_data2;

    alu_32_bit ALU_U (.A(alu_input_A), .B(alu_input_B), .OpCode(ALUOp_ctrl), .Result(alu_result), .Flag(zero_flag));

    assign write_data_mux_out = MemToReg_ctrl ? mem_read_data : alu_result;

endmodule

