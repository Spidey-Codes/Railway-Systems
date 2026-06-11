module FIFO #(
    parameter Data_Width = 8,
    parameter FIFO_Depth = 32
) (
    // Outputs
    output reg [Data_Width-1:0] Data_out,
    output reg Full,
    output reg Empty,
    // Inputs
    input [Data_Width-1:0] Data_in,
    input wr_en,
    input rd_en,
    input clk,
    input reset
);

    // Use $clog2 for efficient, scalable pointer and counter sizing
    localparam ADDR_WIDTH = $clog2(FIFO_Depth);

    // Internal FIFO memory
    reg [Data_Width-1:0] memory [FIFO_Depth-1:0];

    // Pointers and counter with correct bit widths
    reg [ADDR_WIDTH-1:0] wr_ptr, rd_ptr;
    reg [ADDR_WIDTH:0]   depth_cnt; // Needs to count from 0 to FIFO_Depth

    // Full and Empty signal logic based on the counter
    always @(*) begin
        Empty = (depth_cnt == 0);
        Full = (depth_cnt == FIFO_Depth);
    end

    // Write Logic (PUSH)
    always @(posedge clk) begin
        if (reset) begin
            wr_ptr <= 'h0;
        end else if (wr_en && !Full) begin
            memory[wr_ptr] <= Data_in;
            // Pointer wrap-around logic
            wr_ptr <= (wr_ptr == FIFO_Depth - 1) ? 'h0 : wr_ptr + 1;
        end
    end

    // Read Logic (POP)
    always @(posedge clk) begin
        if (reset) begin
            rd_ptr <= 'h0;
            Data_out <= 'h0;
        end else if (rd_en && !Empty) begin
            Data_out <= memory[rd_ptr];
            // Pointer wrap-around logic
            rd_ptr <= (rd_ptr == FIFO_Depth - 1) ? 'h0 : rd_ptr + 1;
        end
    end

    // Depth Counter Logic
    always @(posedge clk) begin
        if (reset) begin
            depth_cnt <= 'h0;
        end else begin
            // Correctly handle all 4 read/write scenarios
            case ({wr_en && !Full, rd_en && !Empty})
                2'b10: depth_cnt <= depth_cnt + 1;  // Write only
                2'b01: depth_cnt <= depth_cnt - 1;  // Read only
                // For 2'b11 (simultaneous read/write) and 2'b00 (no-op), count is unchanged.
                default: depth_cnt <= depth_cnt;
            endcase
        end
    end

endmodule //FIFO