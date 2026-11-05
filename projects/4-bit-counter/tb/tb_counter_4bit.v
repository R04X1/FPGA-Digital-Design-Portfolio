`timescale 1ns / 1ps

module tb_counter_4bit();

    reg clk;
    reg rst;
    reg en;
    wire [6:0] seg;
    wire [3:0] an;

    // Simülasyon hızlandırması için MAX_COUNT'u 5 yapıyoruz
    counter_4bit #(.MAX_COUNT(5)) uut (
        .clk(clk),
        .rst(rst),
        .en(en),
        .seg(seg),
        .an(an)
    );

    // 100 MHz Clock Üretimi
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1; 
        en  = 0;

        #20;
        rst = 0; 

        #20;
        en = 1;  // Saymayı başlat

        // Sayıcının 0'dan F'e kadar ilerlemesi için yeterli süreyi tanı
        #500;

        $finish;
    end

endmodule
