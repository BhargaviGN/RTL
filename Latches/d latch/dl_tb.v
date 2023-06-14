`include "dl.v"
module dl_tb();
reg d, en, rst;
wire q;
dl d1(d, en, q);
initial begin
    $dumpfile("dlatch.vcd");
    $dumpvars(0, dl_tb);
    #2 d=0; en=1;
    #2 d=1; 
    #2 d=0; en=0;
end
endmodule