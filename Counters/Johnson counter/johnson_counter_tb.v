`include "johnson_counter.v"
module johnson_counter_tb();
reg clk, rst;
wire [3:0] q;
johnson_counter jc(clk, rst, q);
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    rst=1;
    #10 rst=0;
    #10 rst=1;
    $finish;
end
initial begin
    $dumpfile("jc.vcd");
    $dumpvars(0, johnson_counter_tb);
end
endmodule