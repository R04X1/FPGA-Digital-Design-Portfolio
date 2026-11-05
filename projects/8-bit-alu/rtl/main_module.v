`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2026 18:43:37
// Design Name: 
// Module Name: main_module
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


module main_module(
    input s0, s1,              // Seçici girişler
    input [7:0] a, b,          // 8-bit giriş verileri
    output [7:0] s_as,         // Toplama/Çıkarma sonucu
    output carry_as,           // Elde çıkışı
    output a_bgr_b, a_eq_b, a_less_b, // Karşılaştırma sonuçları
    output [7:0] ab_and        // AND sonucu
);

    
endmodule
