`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 21:59:03
// Design Name: 
// Module Name: main
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


module main(
    input [15:0] sw,     // sw[7:0] = A, sw[15:8] = B
    input btn_a_l_s,          // Ünite seçimi (Aritmetik mi Mantık mı?)
    input btn_t_c,          // t_c (Topla/Çıkar) kontrolü
    input btn_a_o,          // a_o (AND/OR) kontrolü
    output [7:0] led     // 8-bit sonuç
);

endmodule
