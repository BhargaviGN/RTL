`include "srl.v"
module srl_tb();
reg s, r;
wire q, qbar;
srl s1(s, r, en, q);
initial begin
    $dumpfile("sr_latch.vcd");
    $dumpvars(0, srl_tb);
    #2 s=0; r=0;
    #2 s=0; r=1;
    #2 s=1; r=0;
    #2 s=1; r=1;
end
endmodule