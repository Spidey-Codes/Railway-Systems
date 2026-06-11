module VM1_tb;
wire newspaper, cadbury_bar, topicana_juice;
reg clk =1'b1; reg reset = 1'b0;
reg [4:0] money;
reg [1:0] item_select;
reg [4:0] extra_cash;
wire [4:0] balance;
VM1 v2 (
    .newspaper(newspaper),
    .cadbury_bar(cadbury_bar),
    .topicana_juice(topicana_juice),
    .clk(clk),
    .reset(reset),
    .balance(balance),
    .money(money),
    .item_select(item_select),
    .extra_cash(extra_cash)
);
always #5 clk = ~clk; // Clock generation
initial
begin
#10 money =5'd0;
#30 money = 5'd5; item_select = 2'b01; 
#30 money = 5'd5; item_select = 2'b10; 
//#30 money = 5'd5; item_select = 2'b11; // Select topicana_juice
#30 money = 5'd10; item_select = 2'b10; 
#30 money = 5'd15; item_select = 2'b10;
#30 money = 5'd15; item_select = 2'b11;
#30 money = 5'd5; item_select = 2'b10;
#30 extra_cash = 5'd5;
#30 extra_cash = 5'd0;
#30 money =5'd10; item_select = 2'b01;
#30 money = 5'd15; item_select = 2'b10; 
end
endmodule