`timescale 1ns / 1ps

module full_adder_4bit (
    input [3:0] A,      // 4-bitlik 1. Sayı
    input [3:0] B,      // 4-bitlik 2. Sayı
    input Cin,          // Gelen Elde (Sadece 1 bit)
    output [3:0] Sum,   // 4-bitlik Toplam Sonucu
    output Cout         // Çıkan Elde (Taşma - Sadece 1 bit)
);

    // A, B ve Cin toplanır. 
    // 4 bit ile 4 bitin toplamı, elde ile birlikte maksimum 5 bitlik bir sonuç üretir (Örn: 15+15+1 = 31 -> 11111).
    // Çıkan bu 5 bitlik sonucun en soldaki 4. biti Cout'a, sağdaki 3-0 bitleri Sum'a atanır.
    assign {Cout, Sum} = A + B + Cin;

endmodule