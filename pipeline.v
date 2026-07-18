`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2026 10:04:00 PM
// Design Name: 
// Module Name: pipeline
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


module pipeline(clk, a, b, c, d, result);

    input clk;
    input [7:0] a, b, c, d;
    output reg [8:0] result;
    
    wire [7:0] t1, t2;
    wire [7:0] t3, t4;
    reg [8:0] r1, r2;
    wire c1, c2;
    
    assign t1 = a ^ b;
    assign t2 = c & d;
    
    sumator8biti s1(a, c, t3, c1);
    sumator8biti s2(t1, t2, t4, c2);
    
    always @(posedge clk) begin
        r1 <= {c1, t3};
        r2 <= {c2, t4};
        result <= r1 ^ r2;       
    end

endmodule
