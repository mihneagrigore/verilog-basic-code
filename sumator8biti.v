`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2026 08:41:37 PM
// Design Name: 
// Module Name: sumator8biti
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


module sumator8biti(a, b, result, cout);

    input [7:0] a, b;
    output [7:0] result;
    output cout;
    
    wire c1, c2, c3, c4, c5, c6, c7;
    
    sumator s1(a[0], b[0], 1'b0, result[0], c1);
    sumator s2(a[1], b[1], c1, result[1], c2);
    sumator s3(a[2], b[2], c2, result[2], c3);
    sumator s4(a[3], b[3], c3, result[3], c4);
    sumator s5(a[4], b[4], c4, result[4], c5);
    sumator s6(a[5], b[5], c5, result[5], c6);
    sumator s7(a[6], b[6], c6, result[6], c7);
    sumator s8(a[7], b[7], c7, result[7], cout);

endmodule
