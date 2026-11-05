`timescale 1ns / 1ps

module full_adder_1bit (
    input A,       // 1. Sayı (1 bit)
    input B,       // 2. Sayı (1 bit)
    input Cin,     // Gelen Elde (Carry in - 1 bit)
    output Sum,    // Toplam Sonucu (1 bit)
    output Cout    // Çıkan Elde (Carry out - 1 bit)
);

    // A, B ve Cin toplanır. 
    // Çıkan sonucun 0. biti Sum'a, taşan 1. biti Cout'a atanır.
    assign {Cout, Sum} = A + B + Cin;

endmodule