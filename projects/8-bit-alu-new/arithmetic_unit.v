`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 21:36:59
// Design Name: 
// Module Name: arithmetic_unit
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


module arithmetic_unit(
    input[7:0] A,B,
    input t_c,
    output reg [7:0] a_u_o
 ); 
 always @(*) begin
    if ( t_c == 1'b0)
        a_u_o =   A + B;
    else
        a_u_o =   A - B;
    end
endmodule
