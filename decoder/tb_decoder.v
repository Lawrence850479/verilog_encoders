`timescale 1ns/1ps
`include "encoder.v"

module tb_encoder;

reg [1:0] sel_tb;
reg [1:0] en_tb;
wire [3:0] y_tb;

encoder dut (.sel(sel_tb), .en(en_tb), .y(y_tb));

initial begin
    $dumpfile("encoder.vcd");
    $dumpvars(0, tb_encoder);
    $monitor ("%t, %b, %b, | %b", $time, en_tb, sel_tb, y_tb);
    en_tb = 0; sel_tb = 00; #10
    en_tb = 1; sel_tb = 00; #10
    en_tb = 1; sel_tb = 01; #10
    en_tb = 1; sel_tb = 10; #10
    en_tb = 1; sel_tb = 11; #10
    $finish;
end 
endmodule 