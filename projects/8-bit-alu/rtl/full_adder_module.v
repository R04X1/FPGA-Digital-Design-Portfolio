`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2026 18:44:09
// Design Name: 
// Module Name: full_adder_module
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


module full_adder_module(
    input  a,
    input  b,
    input  carry_in,
    output sum,
    output carry_out
);

    assign {carry_out, sum} = a + b + carry_in;

endmodule
