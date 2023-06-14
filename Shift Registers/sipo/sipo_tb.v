`include "sipo.v"
module sipo_tb();
reg clk, d;
wire [3:0] q;
sipo s1(d, clk, q);
initial begin
    $dumpfile("sipo.vcd");
    $dumpvars(0, sipo_tb);
end
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    #1 d=1;
    #2 d=0;
    #2 d=0;
    #2 d=1;
    $finish;
end
endmodule