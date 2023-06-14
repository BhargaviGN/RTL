`include "full_adder.v"
module full_adder_tb();
reg a, b, cin;
wire s, cout;
full_adder fa(a, b, cin, s, cout);
initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0, full_adder_tb);
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