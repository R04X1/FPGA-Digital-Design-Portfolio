`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2026 17:12:20
// Design Name: 
// Module Name: comparator
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


module comparator_module(input [7:0] a, input [7:0] b, output[7:0] out );

assign a_eq_b = ( a == b);
assign a_bgr_b = ( a > b );
assign a_lss_b = ( a < b );

endmodule
