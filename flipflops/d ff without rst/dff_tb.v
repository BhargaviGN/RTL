`include "dff.v"
module dff_tb();
reg d, clk;
wire q, qbar;
dff df(d, clk, q, qbar);
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    d=1; #10;
    d=0; #10;
    $finish;
end
initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0, dff_tb);
end
endmodule