`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2026 08:40:04 PM
// Design Name: 
// Module Name: alu_3
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


module alu_3(clk, a, b, c, d, result);
    
    input clk;
    input [7:0] a, b, c, d;
    output reg [8:0] result;
    
    reg [7:0] r1, r2;
    wire [7:0] r3;
    
    wire [7:0] t1, t2, t3, t4;
    wire c1, c2, c3, c4;
    wire cout;
    
    sumator8biti s1(a, b, t1, c1);
    sumator8biti s2(c, d, t2, c2);
    sumator8biti s3(r1, r2, r3, cout);
    
    always @(posedge clk) begin 
                
        r1 <= t1 ^ t2;
        r2 <= a & d;
        result <= {cout, r3};
        
    end
    

endmodule
