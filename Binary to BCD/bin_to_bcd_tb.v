`include "bin_to_bcd.v"
module bin_to_bcd_tb();
reg [7:0] bin;
wire [11:0] bcd;
integer i;
bin_to_bcd b1(bin, bcd);
initial begin
    $dumpfile("bin2bcd.vcd");
    $dumpvars(0, bin_to_bcd_tb);
    for(i=0; i<256; i++) begin
        #2 bin=i;
    end
end
endmodule