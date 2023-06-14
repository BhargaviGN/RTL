`include "seq_detector.v"
module seq_detector_tb();
reg in, clk, rst;
wire out;
seq_detector se(in, clk, rst, out);
initial begin
    $dumpfile("seq_detect.vcd");
    $dumpvars(0, seq_detector_tb);
end
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    rst=0; in=0;
    #10 in=1;
    #10 in=0;
    #10 in=0;
    #10 in=1;
    #10 in=0;
    #10 in=1;
    #10 in=1;
    #10 in=0;
    #10 in=0;
    #10 in=1;
    $finish;
end
endmodule