`timescale 1ns/1ps

module encoder
(
    input wire [1:0] sel, 
    input wire       en,    //en stands for enable not encoder 
    output reg [3:0] y
);

always @(*) begin 

    if   (en == 1'b0)      y = 4'b0000;
    else begin    
    case(sel)
    2'b00: y = 4'b0001;
    2'b01: y = 4'b0010;
    2'b10: y = 4'b0100;
    2'b11: y = 4'b1000;
    endcase 
end 
end

endmodule 