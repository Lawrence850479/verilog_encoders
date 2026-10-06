`timescale 1ns/1ps
`include "encoder.v"

module tb_encoder;

reg [3:0]  a_tb;
reg        en_tb;
wire [1:0] y_tb;

encoder dut (.a(a_tb), .en(en_tb), .y(y_tb));

initial begin
    $dumpfile("encoder.vcd");
    $dumpvars(0, tb_encoder);
    $monitor ("%t, %b, %b, | %b", $time, en_tb, a_tb, y_tb);
    en_tb = 1'b0; a_tb = 4'b0000; #10
    en_tb = 1'b1; a_tb = 4'b0001; #10
    en_tb = 1'b1; a_tb = 4'b0010; #10
    en_tb = 1'b1; a_tb = 4'b0100; #10
    en_tb = 1'b1; a_tb = 4'b1000; #10
    $finish;
end 
endmodule 
