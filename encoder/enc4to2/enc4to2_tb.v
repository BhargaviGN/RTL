`include "enc4to2.v"
module enc4to2_tb();
reg [3:0] in;
reg en;
wire [1:0] y;
enc4to2 enc(in, en, y);
initial begin
    $dumpfile("enc4to2.vcd");
    $dumpvars(0, enc4to2_tb);
    en=0; in=0010;
    #2 en=1; in=0001;
    #2 in=1000;
    #2 in=0010;
    #2 in=0100;
    #2 in=1010;
end
endmodule