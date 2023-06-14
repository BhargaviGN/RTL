`include "async_count.v"
module async_count_tb();
reg j, k, clk, rst;
wire [3:0] q;
async_count as(j, k, clk, rst, q);
initial begin
    $dumpfile("async_count.vcd");
    $dumpvars(0, async_count_tb);
end
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    j<=1'b0; k<=1'b0; rst=1;
    #20 j<=1'b1; k<=1'b1; rst=0;
    #10 rst=1;
    #10 rst=0;
    $finish;
end
endmodule