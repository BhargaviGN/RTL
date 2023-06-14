`include "piso.v"
module piso_tb();
reg [3:0] pi;
reg clk, load;
wire so;
piso p1(pi, clk, load, so);
initial begin
    $dumpfile("piso.vcd");
    $dumpvars(0, piso_tb);
end
initial begin
    clk=0;
    #5 clk=~clk;
end
initial begin
    #10 pi=4'b1010; load=1'b1;
    #10 load=1'b0;
    #10 load=1'b1;
    #10 pi=4'b0101; load=1'b0;
    $finish;
end
endmodule