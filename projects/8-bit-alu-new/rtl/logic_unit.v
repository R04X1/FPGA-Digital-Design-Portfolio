`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 21:46:13
// Design Name: 
// Module Name: logic_unit
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


module logic_unit(      
    input [7:0] A , B,
    input a_o,
    output reg [7:0] l_u_o
    );
  always @(*) begin
     if (a_o == 1'b0)
        l_u_o = A & B;
     else 
        l_u_o = A | B;
     end
endmodule
