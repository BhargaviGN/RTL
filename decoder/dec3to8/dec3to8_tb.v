`include "dec3to8.v"
module dec3to8_tb();
reg [2:0] in;
reg en;
wire [7:0] y;
dec3to8 dc(in, en, y);
initial begin
    $dumpfile("dec3to8.vcd");
    $dumpvars(0, dec3to8_tb);
    en = 0;
    #2 en=1;
    #1 in=3'b000;
    #1 in=3'b001;
    #1 in=3'b010;
    #1 in=3'b011;
    #1 in=3'b100;
    #1 in=3'b101;
    #1 in=3'b110;
    #1 in=3'b111;
end
endmodule