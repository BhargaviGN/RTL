`include "async.v"
module async_tb();
reg clk, rst, UpOrDown;
wire [3:0] count;
async as(clk, rst, UpOrDown, count);
initial begin
    $dumpfile("updown.vcd");
    $dumpvars(0, async_tb);
end
initial begin
    clk=0;
    forever #5 clk=~clk;
    UpOrDown=0;
    forever #10 UpOrDown=~UpOrDown;
end
initial begin
    rst=0;
    #20 $finish;
end
endmodule