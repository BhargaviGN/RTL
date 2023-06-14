`include "siso.v"
module siso_tb();
reg clk, si, clr;
wire so;
siso s(clk, si, clr, so);
initial begin
    $dumpfile("siso.vcd");
    $dumpvars(0, siso_tb);
end
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    clr=1;
    #10 clr=0; si=0;
    #10 si=1'b1;
    #2 si=1'b1;
    #1 si=1'b0;
    #1 si=1'b0;
    #1 si=1'b1;
    $finish;
end
endmodule