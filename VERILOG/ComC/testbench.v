// A proper testbench for the FIFO module
module testbench;

    // Parameters
    localparam Data_Width = 8;
    localparam FIFO_Depth = 8;

    // Testbench signals: regs for inputs, wires for outputs
    reg  clk;
    reg  reset;
    reg  rd_en;
    reg  wr_en;
    reg  [Data_Width-1:0] data_in; // Changed name for clarity

    wire Full;
    wire Empty;
    wire [Data_Width-1:0] data_out;

    // 1. Instantiate the DUT (Device Under Test) ONCE
    FIFO #(
        .Data_Width(Data_Width),
        .FIFO_Depth(FIFO_Depth)
    ) DUT (
        .clk(clk),
        .reset(reset),
        .rd_en(rd_en),
        .wr_en(wr_en),
        .Data_in(data_in),
        .Full(Full),
        .Empty(Empty),
        .Data_out(data_out)
    );

    // 2. Generate the clock signal
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Create a clock with a 10ns period
    end

    // 3. Generate reset and stimulus
    initial begin
        // Reset Phase
        $display("Starting Test...");
        reset = 1;
        wr_en = 0;
        rd_en = 0;
        data_in = 0;
        #20;
        reset = 0;
        #10;

        // Test Phase: Write 3 values
        $display("Writing 3 values to FIFO...");
        wr_en = 1;
        repeat (3) begin
            data_in = $random;
            @(posedge clk);
        end
        wr_en = 0;

        #20; // Wait some time

        // Test Phase: Read 3 values
        $display("Reading 3 values from FIFO...");
        rd_en = 1;
        repeat (3) begin
            @(posedge clk);
            $display("Read data: %h", data_out);
        end
        rd_en = 0;

        #20;
        $display("Test Finished.");
        $finish;
    end

endmodule