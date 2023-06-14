`include "tff.v"
module tff_tb();
reg t, clk, rst;
wire q, qbar;
tff df(t, clk, rst, q, qbar);
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    rst=1; #10;
    rst=0; t=1; #10;
    t=0; #10;
    $finish;
end
initial begin
    $dumpfile("tff.vcd");
    $dumpvars(0, tff_tb);
end
endmodule