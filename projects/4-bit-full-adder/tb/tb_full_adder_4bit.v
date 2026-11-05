`timescale 1ns / 1ps

module tb_full_adder_4bit();

    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    
    wire [3:0] Sum;
    wire Cout;

    // DUT (Device Under Test) Bağlantısı
    full_adder_4bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        // Başlangıç durumu
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;

        // Test 1: Normal Toplama (5 + 3 = 8)
        A = 4'b0101; B = 4'b0011; Cin = 0; #20;

        // Test 2: Cin (Gelen Elde) ile Toplama (5 + 3 + 1 = 9)
        A = 4'b0101; B = 4'b0011; Cin = 1; #20;

        // Test 3: Sınır Değer (15 + 0 = 15) - Taşma Yok
        A = 4'b1111; B = 4'b0000; Cin = 0; #20;

        // Test 4: Taşma (Carry) Durumu (15 + 1 = 16)
        // 16 sayısı 4 bite sığmaz. Bu yüzden Cout=1, Sum=0000 olmalıdır.
        A = 4'b1111; B = 4'b0001; Cin = 0; #20;

        // Test 5: Maksimum Uç Nokta (15 + 15 + 1 = 31)
        // 31 sayısı binary'de 11111'dir. Cout=1, Sum=1111 olmalıdır.
        A = 4'b1111; B = 4'b1111; Cin = 1; #20;

        $finish;
    end

endmodule
