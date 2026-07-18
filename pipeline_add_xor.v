`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2026 04:55:19 PM
// Design Name: 
// Module Name: pipeline_add_xor
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


module pipeline_add_xor(clk, a,b,c,d,result);

    input clk;
    input [7:0] a, b, c, d;
    output reg [8:0] result;
    reg [8:0] r1, r2;
    
    wire [7:0] s1, s2;
    wire c1, c2;
    wire [8:0] t1, t2;
        
    sumator ex1(a, b, s1, c1);
    sumator ex2 (c, d, s2, c2);
    
    assign t1 = {c1, s1};
    assign t2 = {c2, s2};
        
    always @(posedge clk) begin
        
        r1 <= t1;
        r2 <= t2;
        result <= r1 ^ r2;
        
    end
endmodule
