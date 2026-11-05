`timescale 1ns / 1ps

module k2red_multiplier #(
    parameter K = 479,
    parameter M = 21
)(
    input  [29:0] A,
    input  [29:0] B,
    output [29:0] Y_out
);

    // Asal sayının (P) içeride üslü formatta hesaplanması
    localparam P = K * (2 ** M) + 1; 

    // K_INV hesaplaması: Matematiksel olarak P - 2^M değerine eşittir
    localparam K_INV = P - (1 << M);

    // 1. A * B Çarpımı 
    // Sentezleyiciye DSP kullanmaması için özellik tanımlıyoruz
    (* use_dsp = "no" *) 
    wire [59:0] X = A * B;

    // 2. Mod ve Bölme işlemlerinin sıfır maliyetli Shift/Mask karşılıkları
    // X_L = X & mask (Sadece ilk M biti alıyoruz)
    wire [M-1:0] X_L = X[M-1:0];
    
    // X_H = X >> M (M'inci bitten sonrasını alıyoruz)
    wire [59-M:0] X_H = X[59:M];

    // 3. Y = (k * X_L) - X_H
    // K = 479 için DSP kullanmadan Shift-Add hilesi (X_L*512 - X_L*32 - X_L)
    wire [40:0] K_XL = (X_L << 9) - (X_L << 5) - X_L;
    
    // Çıkarma işlemi negatif olabileceği için işaretli (signed) tanımlıyoruz
    wire signed [41:0] Y = K_XL - X_H;

    // 4. Düzeltme Adımı: (Y * K_INV) % P
    (* use_dsp = "no" *)
    wire signed [80:0] Y_mul = Y * K_INV;
    
    wire signed [80:0] Y_mod = Y_mul % P;
    
    // Verilog'da modulo işlemi negatif sonuç verebileceği için son düzeltme
    assign Y_out = (Y_mod < 0) ? (Y_mod + P) : Y_mod;

endmodule