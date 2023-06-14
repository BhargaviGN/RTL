`include "ring_counter.v"
module ring_counter_tb();
reg clk, rst;
wire [3:0] q;
ring_counter rc(clk, rst, q);
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    rst=1;
    #10 rst=0;
    #30 rst=1;
    #20 rst=0;
    $finish;
end
initial begin
    $dumpfile("ring_counter.vcd");
    $dumpvars(0, ring_counter_tb);
end
endmodule