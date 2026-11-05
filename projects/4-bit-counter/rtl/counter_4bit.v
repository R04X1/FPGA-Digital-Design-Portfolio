`timescale 1ns / 1ps

module counter_4bit #(parameter MAX_COUNT = 100_000_000) (
    input clk,
    input rst,
    input en,
    output reg [6:0] seg,
    output reg [3:0] an
);

    reg [3:0] count = 0;       // Asıl sayacımız (0-15 arası sayar)
    reg [26:0] clk_div = 0;    // 1 saniyelik yavaş saat için
    reg [19:0] refresh_counter = 0; // Ekranı taramak için çok hızlı saat!

    // --- 1. ADIM: 1 Saniyelik Sayıcı ---
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            clk_div <= 0;
            count <= 0;
        end else begin
            if (clk_div == MAX_COUNT - 1) begin
                clk_div <= 0;
                if (en) begin
                    count <= count + 1; // 15'ten sonra otomatik 0'a döner (4-bit olduğu için)
                end
            end else begin
                clk_div <= clk_div + 1;
            end
        end
    end

    // --- 2. ADIM: Sayıyı Onlar ve Birler Basamağına Ayırma (Binary to BCD) ---
    // 15'e kadar saydığımız için matematik çok kolay:
    // Eğer sayı 10 veya büyükse onlar basamağı 1'dir, birler basamağı sayıdan 10 çıkarılarak bulunur.
    wire [3:0] onlar = (count >= 10) ? 4'd1 : 4'd0;
    wire [3:0] birler = (count >= 10) ? (count - 4'd10) : count;


    // --- 3. ADIM: Göz Yanılması Yaratan Hızlı Ekran Tarayıcı (Multiplexer) ---
    // 100 MHz saati doğrudan kullanarak çok hızlı sayan ayrı bir sayaç yapıyoruz.
    always @(posedge clk) begin
        refresh_counter <= refresh_counter + 1;
    end

    // 19. ve 18. bitler ortalama 400 Hz hızında değişir (Göz bunu kırpışma olarak göremez)
    wire [1:0] led_activation = refresh_counter[19:18];
    reg [3:0] current_digit; // O an ekrana basılacak rakam

    always @(*) begin
        case(led_activation)
            2'b00: begin 
                // BİRLER BASAMAĞINI YAK
                an = 4'b1110; 
                current_digit = birler;
            end
            2'b01: begin 
                // ONLAR BASAMAĞINI YAK (Ama eğer "0" ise ekranı tamamen söndür, "05" yerine "5" yazsın)
                if (onlar == 0)
                    an = 4'b1111; // Hepsini kapat
                else
                    an = 4'b1101; // Sağdan 2. haneyi aç
                    
                current_digit = onlar;
            end
            default: begin 
                // DİĞER DURUMLARDA KAPALI TUT (Titreşimi önler)
                an = 4'b1111; 
                current_digit = 4'b0000;
            end
        endcase
    end

    // --- 4. ADIM: Rakamları 7-Segment Çizgilerine Çeviren Decoder ---
    always @(*) begin
        case(current_digit)
            4'h0: seg = 7'b1000000; // 0
            4'h1: seg = 7'b1111001; // 1
            4'h2: seg = 7'b0100100; // 2
            4'h3: seg = 7'b0110000; // 3
            4'h4: seg = 7'b0011001; // 4
            4'h5: seg = 7'b0010010; // 5
            4'h6: seg = 7'b0000010; // 6
            4'h7: seg = 7'b1111000; // 7
            4'h8: seg = 7'b0000000; // 8
            4'h9: seg = 7'b0010000; // 9
            default: seg = 7'b1111111; // Hata durumunda ekranı kapat (A,b,C,d,E,F'yi sildik)
        endcase
    end

endmodule