`include "comparator4bit.v"
module comparator_tb();
reg [3:0] a, b;
wire l, g, e;
comparator comp(a, b, l, g, e);
initial begin
    $dumpfile("comparator.vcd");
    $dumpvars(0, comparator_tb);
    a=0000; b=0000; #2;
    a=0101; b=1010; #2;
    a=1100; b=0100; #2;
end
endmodule