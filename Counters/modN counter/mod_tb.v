`include "mod.v"
module mod_tb();
reg clk, rst;
wire [2:0] q;
mod m1(clk, rst, q);
initial begin
    $dumpfile("modn.vcd");
    $dumpvars(0, mod_tb);
end
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    rst=1;
    #2 rst=0;
    #2 rst=1;
    #4 $finish;
end
endmodule