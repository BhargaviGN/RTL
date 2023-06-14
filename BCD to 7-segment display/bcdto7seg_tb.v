`include "bcdto7seg.v"
module bcdto7seg_tb();
reg [3:0] bcd;
wire [6:0] seg;
integer i;
bcdto7seg bc(bcd, seg);
initial begin
    $dumpfile("bcdto7seg.vcd");
    $dumpvars(0, bcdto7seg_tb);
    for(i=0; i<10; i++) begin
        #10 bcd=i;
    end
end
endmodule