`timescale 1ns / 1ps

module tb_k2red();

    reg  [29:0] A;
    reg  [29:0] B;
    wire [29:0] Y_out;

    // K2RED Modulunun Cagrilmasi
    k2red_multiplier #(
        .K(479),
        .M(21)
    ) uut (
        .A(A),
        .B(B),
        .Y_out(Y_out)
    );

    localparam P = 479 * (2 ** 21) + 1;
    reg [59:0] classic_X;
    reg [29:0] classic_result;

    integer i;
    integer success_count = 0;

    initial begin
        $display("K2RED DONANIM TEST RAPORU");
        $display("Modulus (P) : %0d", P);
        
        for (i = 0; i < 1000; i = i + 1) begin
            // 28 ile 30-bit araliginda rastgele sayilar
            A = ( $urandom % (1 << 30) ) | (1 << 28);
            B = ( $urandom % (1 << 30) ) | (1 << 28);

            #10; 

            classic_X = A * B;
            classic_result = classic_X % P;

            if (Y_out === classic_result) begin
                success_count = success_count + 1;
                if (i < 5) begin
                    $display("[Test %0d] Basarili. Klasik: %0d, K2Red: %0d", i+1, classic_result, Y_out);
                end
            end else begin
                $display("HATA! Test %0d basarisiz.", i+1);
            end
        end

        $display("TEST SONUCU: 1000 islemin %0d tanesi basariyla donanimda indirgendi.", success_count);
        $finish;
    end
endmodule