`include "jkff.v"
module jkff_tb();
reg clk, rst, j, k;
wire q, qbar;
jkff jf(j, k, clk, rst, q, qbar);
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    rst=1; #10;
    rst=0; j=1'b0; k=1'b0; #10;
    j=1'b0; k=1'b1; #10;
    j=1'b1; k=1'b0; #10;
    j=1'b1; k=1'b1; #10;
    $finish;
end
initial begin
    $dumpfile("jkff.vcd");
    $dumpvars(0, jkff_tb);
end
endmodule