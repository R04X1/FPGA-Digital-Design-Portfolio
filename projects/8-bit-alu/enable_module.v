`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2026 18:22:47
// Design Name: 
// Module Name: enable_module
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


module enable_module(input E,[7:0] a, b, output [7:0] a_new, b_new);

assign a_new = E & a;
assign b_new = E & b;

endmodule
