`timescale 1ns / 1ps

module tb_full_adder_1bit();

    // Girişler reg, çıkışlar wire olarak tanımlanır
    reg A;
    reg B;
    reg Cin;
    
    wire Sum;
    wire Cout;

    // DUT (Device Under Test) Bağlantısı
    full_adder_1bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        // Doğruluk tablosunun 8 ihtimali sırasıyla test ediliyor
        
        A = 0; B = 0; Cin = 0; #10; // Toplam: 0, Elde: 0
        A = 0; B = 0; Cin = 1; #10; // Toplam: 1, Elde: 0
        A = 0; B = 1; Cin = 0; #10; // Toplam: 1, Elde: 0
        A = 0; B = 1; Cin = 1; #10; // Toplam: 0, Elde: 1 (1+1=2 yani 10)
        A = 1; B = 0; Cin = 0; #10; // Toplam: 1, Elde: 0
        A = 1; B = 0; Cin = 1; #10; // Toplam: 0, Elde: 1
        A = 1; B = 1; Cin = 0; #10; // Toplam: 0, Elde: 1
        A = 1; B = 1; Cin = 1; #10; // Toplam: 1, Elde: 1 (1+1+1=3 yani 11)
        
        $finish;
    end

endmodule
