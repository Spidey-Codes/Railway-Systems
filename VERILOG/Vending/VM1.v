module VM1(
    output reg newspaper, cadbury_bar, topicana_juice,
    input clk, reset,
    output reg [4:0] balance,
    input [4:0] money,
    input [1:0] item_select,
    input [4:0] extra_cash
);
reg [2:0] ps,ns;
parameter [4:0] money_5 = 5'd05;
parameter [4:0] money_10 = 5'd10;
parameter [4:0] money_15 = 5'd15;

parameter [1:0] select_newspaper = 2'b01;
parameter [1:0] select_cadbury_bar = 2'b10;
parameter [1:0] select_topicana_juice = 2'b11;

parameter [2:0] void = 3'b000;
parameter [4:0] five = 3'b001;
parameter [4:0] ten = 3'b010;
parameter [4:0] fifteen = 3'b011;

initial begin
    ps <= void;
    ns <= void;
end

always @(posedge clk) begin
    if (reset) 
        ns<= void;
    else
        case(ps)
        void: if(money==money_5 &&item_select ==select_newspaper)
        ns <= five;
        else if(money==money_5 && item_select == select_cadbury_bar)
            ns <= ten;
        else if(money==money_5 && item_select == select_topicana_juice)
            ns <= fifteen;
        else if(money==money_10 && item_select == select_newspaper)
            ns <= five;
        else if(money==money_10 && item_select == select_cadbury_bar)
            ns <= ten;
        else if(money==money_10 && item_select == select_topicana_juice)
            ns <= fifteen;
        else if(money==money_15 && item_select == select_newspaper)
            ns <= five;
        else if(money==money_15 && item_select == select_cadbury_bar)
            ns <= ten;
        else if(money==money_15 && item_select == select_topicana_juice)
            ns <= fifteen;
        five: if(money==money_5 && item_select == select_newspaper)
            ns <= five;
        else if(money==money_5 && item_select == select_cadbury_bar)
            ns <= ten;
        else if(money==money_5 && item_select == select_topicana_juice)
            ns <= fifteen;
        else if(money==money_10 && item_select == select_newspaper)
            ns <= five;
        else if(money==money_10 && item_select == select_cadbury_bar)
            ns <= ten;
        else if(money==money_10 && item_select == select_topicana_juice)
            ns <= fifteen;
        else if(money==money_15 && item_select == select_newspaper)
            ns <= five;
        else if(money==money_15 && item_select == select_cadbury_bar)
            ns <= ten;
        else if(money==money_15 && item_select == select_topicana_juice)
            ns <= fifteen;
        ten: if(money==money_5 && item_select == select_newspaper)
            ns <= five;
        else if(money==money_5 && item_select == select_cadbury_bar)
            ns <= ten;
        else if(money==money_5 && item_select == select_topicana_juice)
            ns <= fifteen;
        else if(money==money_10 && item_select == select_newspaper)
            ns <= five;
        else if(money==money_10 && item_select == select_cadbury_bar)
            ns <= ten;
        else if(money==money_10 && item_select == select_topicana_juice)
            ns <= fifteen;
        else if(money==money_15 && item_select == select_newspaper)
            ns <= five;
        else if(money==money_15 && item_select == select_cadbury_bar)
            ns <= ten;
        else if(money==money_15 && item_select == select_topicana_juice)
            ns <= fifteen;
        fifteen: if(money==money_5 && item_select == select_newspaper)
            ns <= five;
        else if(money==money_5 && item_select == select_cadbury_bar)
            ns <= ten;
        else if(money==money_5 && item_select == select_topicana_juice)
            ns <= fifteen;
        else if(money==money_10 && item_select == select_newspaper)
            ns <= five;
        else if(money==money_10 && item_select == select_cadbury_bar)
            ns <= ten;
        else if(money==money_10 && item_select == select_topicana_juice)
            ns <= fifteen;
        else if(money==money_15 && item_select == select_newspaper)
            ns <= five;
        else if(money==money_15 && item_select == select_cadbury_bar)
            ns <= ten;
        else if(money==money_15 && item_select == select_topicana_juice)
            ns <= fifteen;
        default: ns <= void;
        endcase
        ps <= ns;
end
always @(posedge clk) begin
    if (reset)
        ps <= void;
    else begin
    case(ps)
    void:begin
        newspaper <= 1'b0;
        cadbury_bar <= 1'b0;
        topicana_juice <= 1'b0;
        balance <= money; 
        $display("You have cancelled the transaction. Your balance is %d", balance);
    end
        five : begin
        if (money == money_5)
        begin
            newspaper <= 1'b1;
            cadbury_bar <= 1'b0;
            topicana_juice <= 1'b0;
            balance <= money - money_5; 
            $display("You have purchased a newspaper. Your balance is %d -5= %d", money,balance);
        end
        else if (money == money_10)
        begin
            newspaper <= 1'b1;
            cadbury_bar <= 1'b0;
            topicana_juice <= 1'b0;
            balance <= money - money_5; 
            $display("You have purchased a newspaper. Your balance is %d -5= %d", money,balance);
        end
        else if (money == money_15)
        begin
            newspaper <= 1'b1;
            cadbury_bar <= 1'b0;
            topicana_juice <= 1'b0;
            balance <= money - money_5; 
            $display("You have purchased a newspaper. Your balance is %d -5= %d", money,balance);
        end
        else begin
            newspaper <= 1'b0;
            cadbury_bar <= 1'b0;
            topicana_juice <= 1'b0;
            balance <= money; 
            $display("Invalid selection. Your balance remains %d", balance);
        end
        end
        ten : begin
        if (money == money_5)
        begin
        newspaper <= 1'b0;
        cadbury_bar <= 1'b0;
        topicana_juice <= 1'b0;
        $display("Not sufficient funds for Cadbury Bar or Topicana Juice. Your balance is %d", money);
        if (extra_cash == money_5)
        begin
            newspaper <= 1'b0;
            cadbury_bar <= 1'b1;
            topicana_juice <= 1'b0;
            $display("You have purchased a Cadbury Bar with extra cash. Your balance is %d -10= %d", money, money - money_10);
        end
        else if (money == money_10)
        begin
            newspaper <= 1'b0;
            cadbury_bar <= 1'b1;
            topicana_juice <= 1'b0;
            balance <= money - money_10; 
            $display("You have purchased a Cadbury Bar. Your balance is %d -10= %d", money,balance);
        end
        else if (money == money_15)
        begin
            newspaper <= 1'b0;
            cadbury_bar <= 1'b1;
            topicana_juice <= 1'b0;
            balance <= money - money_10; 
            $display("You have purchased a Cadbury Bar. Your balance is %d -10= %d", money,balance);
        end
        else begin
            newspaper <= 1'b0;
            cadbury_bar <= 1'b0;
            topicana_juice <= 1'b0;
            balance <= money; 
            $display("Invalid selection. Your balance remains %d", balance);
        end
        end
    fifteen : begin
        if (money == money_5)
        begin
            newspaper <= 1'b0;
            cadbury_bar <= 1'b0;
            topicana_juice <= 1'b0;
            $display("Not sufficient funds for Cadbury Bar or Topicana Juice. Your balance is %d", money);
        end
        else if (extra_cash == money_10)
        begin
            newspaper <= 1'b0;
            cadbury_bar <= 1'b0;
            topicana_juice <= 1'b1;
            $display("You have purchased a Topicana Juice with extra cash. Your balance is %d -15= %d", money, money - money_15);
        end
        else 
        balance = 5'd5;
        $display("You have insufficient funds for Cadbury Bar or Topicana Juice. Your balance is %d", money);
    end
    else if (money == money_10)
        begin
            newspaper <= 1'b0;
            cadbury_bar <= 1'b0;
            topicana_juice <= 1'b0;
            $display("Not sufficient funds for Topicana Juice. Your balance is %d", money);
            if (extra_cash == money_5)
            begin
                newspaper <= 1'b0;
                cadbury_bar <= 1'b0;
                topicana_juice <= 1'b1;
                $display("You have purchased a Topicana Juice with extra cash. Your balance is %d -15= %d", money, money - money_15);
            end
            else 
             balance = 5'd10;
                $display("You can't purchase a Cadbury Bar" );
            end
        else if (money == money_15)
        begin
            newspaper <= 1'b0;
            cadbury_bar <= 1'b0;
            topicana_juice <= 1'b1;
            balance <= money - money_15; 
            $display("You have purchased a Topicana Juice. Your balance is %d -15= %d", money,balance);
        end
        else begin
            newspaper <= 1'b0;
            cadbury_bar <= 1'b0;
            topicana_juice <= 1'b0;
            balance <= money; 
            $display("Invalid selection. Your balance remains %d", balance);
        end
    endcase
end
end
endmodule // VM1