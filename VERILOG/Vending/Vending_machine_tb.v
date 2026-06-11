module Vending_machine_tb ();
reg clk, reset;
reg [4:0] money_in, item_price;
reg [1:0] item_select;
wire [4:0] money_out;
wire [1:0]item_dispensed;
wire chocolates, flowers, drinks;
Vending_machine vm (
    .clk(clk),
    .reset(reset),
    .money_in(money_in),
    .item_price(item_price),
    .item_select(item_select),
    .money_out(money_out),
    .item_dispensed(item_dispensed),
    .chocolates(chocolates),
    .flowers(flowers),
    .drinks(drinks)
);
initial begin
    clk = 0;
    reset = 1;
    money_in = 5'b00000;
    item_price = 5'b00000;
    item_select = 2'b00;
    $display("Starting Vending Machine Testbench");
    
    #10 reset = 0; // Release reset
    #10 money_in = 5'b00101; // Insert $5
    item_price = 5'b00010; // Item price $2
    item_select = 2'b00; // Select chocolates
    
    #10 clk = ~clk; // Clock pulse
    #10 clk = ~clk; // Another clock pulse
    
    #20 money_in = 5'b00011; // Insert $3
    item_price = 5'b00011; // Item price $3
    item_select = 2'b01; // Select flowers
    
    #10 clk = ~clk; // Clock pulse
    #10 clk = ~clk; // Another clock pulse
    
    #20 money_in = 5'b00100; // Insert $4
    item_price = 5'b00101; // Item price $5 (error case)
    item_select = 2'b10; // Select drinks
    
    #10 clk = ~clk; // Clock pulse
    #10 clk = ~clk; // Another clock pulse
    
    #20 $finish; // End simulation
end
endmodule //Vending_machine_tb