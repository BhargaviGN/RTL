`include "bcd_to_bin.v"
module bcd_to_bin_tb();
reg [7:0] bcd;
wire [3:0] bin;
bcd_to_bin bd(bcd, bin);
initial begin
    $dumpfile("bcd_to_bin.vcd");
    $dumpvars(0, bcd_to_bin_tb);
    #1 bcd=8'b0;
    #1 bcd=8'b10;
    #1 bcd=8'b100;
    #1 bcd=8'b111;
    #1 bcd=8'b1000;
    #1 bcd=8'b10001;
    #1 bcd=8'b10011;
    #1 bcd=8'b10101;
end
endmodule