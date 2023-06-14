`include "pipo.v"
module pipo_tb();
reg clk, rst;
reg [3:0] d;
wire [3:0] q;
pipo pr(clk, rst, d, q);
initial begin
    $dumpfile("pipo.vcd");
    $dumpvars(0, pipo_tb);
end
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    rst=1;
    #2 rst=1'b0;
    #2 d=4'b1100;
    #2 d=4'b1101;
    #2 d=4'b0100;
    #2 d=4'b0011;
    #2 d=4'b1111;
    #2 d=4'b1110;
    $finish;
end
endmodule