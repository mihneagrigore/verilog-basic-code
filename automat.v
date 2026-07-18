`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2026 04:19:37 PM
// Design Name: 
// Module Name: automat
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module automat(clk, reset, coin, select, coffe, tea);

    input clk, reset, coin, select;
    output reg coffe, tea;
    reg [1:0] state, nextState;
    
    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b11;
    parameter S3 = 2'b10;
    
    always @(posedge clk, posedge reset) begin
        if(reset) begin state <= S0; coffe <= 0; tea <= 0; end
        else state <= nextState;
    end
    
    always @(*) begin
        case({state,coin})
            3'b000: nextState <= S0;
            3'b001: nextState <= S1;
            3'b010: nextState <= S1;
            3'b011: nextState <= S2;
            3'b110: nextState <= S2;
            3'b111: begin
                        if(select == 0) begin nextState <= S0; tea <= 1; end
                        else nextState <= S3;
                    end
            3'b100: nextState <= S3;
            3'b101: begin
                        if(select == 0) begin nextState <= S1; tea <= 1; end
                        else if(select == 1) begin nextState <= S0; coffe <= 1; end
                                else nextState <= S3;
                    end
            default: nextState <= S0;   
       endcase
    end

endmodule
