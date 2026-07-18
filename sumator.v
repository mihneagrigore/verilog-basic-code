`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2026 08:41:18 PM
// Design Name: 
// Module Name: sumator
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


module sumator(a, b, cin, result, cout);

    input a, b, cin;
    output result, cout;
    
    assign result = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule
