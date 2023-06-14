`include "bcd_counter.v"
module bcd_counter_tb();
reg clk, rst;
wire [3:0] q;
bcd_counter bc(clk, rst, q);
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    rst=1;
    #10 rst=0;
    #10 rst=1;
    #10 rst=0;
    #10 rst=1;
    #10 $finish;
end
initial begin
    $dumpfile("bcd_counter.vcd");
    $dumpvars(0, bcd_counter_tb);
end
endmodule