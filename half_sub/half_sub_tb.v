`include "half_sub.v"
module half_sub_tb();
reg a, b;
wire bor, diff;
half_sub sub(a, b, bor, diff);
initial begin
    $dumpfile("half_sub.vcd");
    $dumpvars(0, half_sub_tb);
    a=0; b=0; #2;
    a=0; b=1; #2;
    a=1; b=0; #2;
    a=1; b=1; #2;
end
endmodule