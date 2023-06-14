`include "parallel_adder.v"
module parallel_adder_tb();
reg [3:0] a, b;
reg cin;
wire [3:0] s;
wire cout;
parallel_adder pa(a, b, cin, s, cout);
initial begin
    $dumpfile("parallel_adder.vcd");
    $dumpvars(0, parallel_adder_tb);
    a=4'b0001; b=1010; cin=0; #2;
    a=4'b0011; b=1100; #2;
    cin=1; #2;
    a=1111; b=0101; #2;
end
endmodule