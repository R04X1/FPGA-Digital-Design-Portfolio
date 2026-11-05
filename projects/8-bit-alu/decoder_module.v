`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2026 18:00:46
// Design Name: 
// Module Name: decoder_module
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


module decoder_module(input [2:0] s, output [7:0] d);

assign d = (1 << s); //s kadar sola kaydır. s'in decimal değeri kadar sola kaydırıp d değerinin 8 bit binary değeri çıkışını verir.

endmodule
