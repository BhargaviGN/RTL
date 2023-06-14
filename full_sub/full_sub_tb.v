`include "full_sub.v"
module full_sub_tb();
reg a, b, cin;
wire bor, diff;
full_sub fs(a, b, cin, bor, diff);
initial begin
    $dumpfile("full_sub.vcd");
    $dumpvars(0, full_sub_tb);
    a=0; b=0; cin=0; #2;
    a=0; b=0; cin=1; #2;
    a=0; b=1; cin=0; #2;
    a=0; b=1; cin=1; #2;
    a=1; b=0; cin=0; #2;
    a=1; b=0; cin=1; #2;
    a=1; b=1; cin=0; #2;
    a=1; b=1; cin=1; #2;
end
endmodule