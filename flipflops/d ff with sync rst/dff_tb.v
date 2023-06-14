`include "dff.v"
module dff_tb();
reg d, clk, rst;
wire q, qbar;
dff df(d, clk, rst, q, qbar);
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    rst=1; #10;
    rst=0; d=1; #10;
    d=0; #10;
    $finish;
end
initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0, dff_tb);
end
endmodule