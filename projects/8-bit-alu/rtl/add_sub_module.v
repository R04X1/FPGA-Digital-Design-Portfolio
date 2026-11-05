`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2026 18:44:47
// Design Name: 
// Module Name: add_sub_module
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


module add_sub_module(input M, input [7:0] a, input [7:0] b, output [7:0] s, output carry);

wire [7:0] t;             
wire [7:1] c;             

xor(t, b, M);

full_adder_module block0(a[0], t[0], M, s[0], c[1]);
full_adder_module block1(a[1], t[1], c[1], s[1], c[2]);
full_adder_module block2(a[2], t[2], c[2], s[2], c[3]);
full_adder_module block3(a[3], t[3], c[3], s[3], c[4]);
full_adder_module block4(a[4], t[4], c[4], s[4], c[5]);
full_adder_module block5(a[5], t[5], c[5], s[5], c[6]);
full_adder_module block6(a[6], t[6], c[6], s[6], c[7]);
full_adder_module block7(a[7], t[7], c[7], s[7], carry);
    
 endmodule
