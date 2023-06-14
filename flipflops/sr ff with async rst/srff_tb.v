`include "srff.v"
module srff_tb();
reg clk, rst, s, r;
wire q, qbar;
srff sr1(s, r, clk, rst, q, qbar);
initial begin
    clk=0; 
    forever #5 clk=~clk;
end
initial begin
    rst=0;
    #10; rst=1;
    #10; s=1'b0; r=1'b0;
    #10; s=1'b0; r=1'b1;
    #10; s=1'b1; r=1'b0;
    #10; s=1'b1; r=1'b1;
    #10; $finish;
end
initial begin
    $dumpfile("srff.vcd");
    $dumpvars(0, srff_tb);
end

endmodule