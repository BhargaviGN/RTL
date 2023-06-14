`include "uni_s_r.v"
module uni_s_r_tb();
reg [3:0] i;
reg [1:0] s;
reg sr, sl;
reg clk, rst;
wire [3:0] a;
wire sr_out, sl_out;
uni_s_r un(i, s, sr, sl, clk, rst, a, sr_out, sl_out);
initial begin
    $dumpfile("usr.vcd");
    $dumpvars(0, uni_s_r_tb);
end
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    i=0; s=0; sr=0; sl=0; rst=1;
    #10 rst=1;
end
always begin
    i=$random;
    sr=$random;
    sl=$random;
    #21;
end
always begin
    s=2'b00; #2;
    s=2'b01; #2;
    s=2'b10; #2;
    s=2'b11; #2;
    $finish;
end
endmodule