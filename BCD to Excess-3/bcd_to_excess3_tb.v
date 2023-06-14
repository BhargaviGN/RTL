`include "bcd_to_excess3.v"
module bcd_to_excess3_tb();
reg [3:0] b;
wire [3:0] e;
bcd_to_excess3 be(b, e);
initial begin
    $dumpfile("bcd_to_excess3.vcd");
    $dumpvars(0, bcd_to_excess3_tb);
    #1 b=4'b0000;
    #1 b=4'b0001;
    #1 b=4'b0010;
    #1 b=4'b0011;
    #1 b=4'b0100;
    #1 b=4'b0101;
    #1 b=4'b0111;
    #1 b=4'b1000;
    #1 b=4'b1001;
    #1 b=3'b000;
end
endmodule