module Vending_machine (
    input clk,reset,
    input [4:0] money_in,
    input [4:0] item_price,
    input [1:0] item_select,
    output reg [4:0] money_out,
    output reg [1:0] item_dispensed,
    output reg chocolates,flowers,drinks
    );
    reg [2:0] state, next_state;
    parameter [4:0] 
        IDLE = 3'b000,
        CHECK_PRICE = 3'b001,
        DISPENSE_ITEM = 3'b010,
        RETURN_MONEY = 3'b011,
        ERROR = 3'b100;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
        end else begin
            state <= next_state;
        end
    end
    always @(*) begin
        case (state)
            IDLE: begin
                if (money_in >= item_price) begin
                    next_state = CHECK_PRICE;
                end else begin
                    next_state = ERROR;
                end
            end
            
            CHECK_PRICE: begin
                if (item_select == 2'b00) begin
                    chocolates = 1;
                    item_dispensed = 2'b01;
                    next_state = DISPENSE_ITEM;
                end else if (item_select == 2'b01) begin
                    flowers = 1;
                    item_dispensed = 2'b10;
                    next_state = DISPENSE_ITEM;
                end else if (item_select == 2'b10) begin
                    drinks = 1;
                    item_dispensed = 2'b11;
                    next_state = DISPENSE_ITEM;
                end else begin
                    next_state = ERROR;
                end
            end
            
            DISPENSE_ITEM: begin
                next_state = RETURN_MONEY;
            end
            
            RETURN_MONEY: begin
                money_out <= money_in - item_price; // Return change logic
                next_state = IDLE;
            end
            
            ERROR: begin
                // Handle error state, could be a reset or alert mechanism.
                next_state = IDLE; // Reset to idle after error.
            end
            
            default: next_state = IDLE; // Default case to avoid latches.
        endcase
    end
    // Initialize outputs
    initial begin
        chocolates = 0;
        flowers = 0;
        drinks = 0;
        item_dispensed = 2'b00; // No item dispensed initially
    end
    // Ensure outputs are reset on state change
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            chocolates <= 0;
            flowers <= 0;
            drinks <= 0;
            item_dispensed <= 2'b00;
        end else begin
            if (state == DISPENSE_ITEM) begin
                // Outputs are set in the CHECK_PRICE state
            end else if (state == RETURN_MONEY) begin
                // Reset outputs after returning money
                chocolates <= 0;
                flowers <= 0;
                drinks <= 0;
            end
        end
    end


endmodule //Vending_machine