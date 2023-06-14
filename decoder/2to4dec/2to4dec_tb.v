`include "2to4dec.v"
module two_to_four_dec_tb();
reg en;
reg [1:0] in;
wire [3:0] y;
two_to_four_dec td(en, in, y);
initial begin
    $dumpfile("2to4dec.vcd");
    $dumpvars(0, two_to_four_dec_tb);
    #1 en=0;
    #1 en=1;
    #2 in=2'b00;
    #2 in=2'b01;
    #2 in=2'b10;
    #2 in=2'b11;
end
endmodule