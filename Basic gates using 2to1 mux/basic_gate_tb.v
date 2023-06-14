`include "basic_gates.v"
module basic_gates_tb();
reg a, b;
wire [6:0] y;
basic_gates ba(a, b, y);
initial begin
    $dumpfile("basic_gates.vcd");
    $dumpvars(0, basic_gates_tb);
end
initial begin
    #1 a=0; b=0;
    #1 a=0; b=1;
    #1 a=1; b=0;
    #1 a=1; b=1;
end
endmodule