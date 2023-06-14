`include "enc8to3.v"
module enc8to3_tb();
reg [7:0] in;
reg en;
wire [2:0] y;
enc8to3 ens(in, en, y);
initial begin
    $dumpfile("enc8to3.vcd");
    $dumpvars(0, enc8to3_tb);
    en=0; in=00000100;
    #2 en=1; in=00010000;
    #2 in=00000000;
    #2 in=10000000;
    #2 in=00000010;
    #2 in=00100000;
    #2 in=01000100;
end
endmodule