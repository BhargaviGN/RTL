`include "ripple_carry_adder.v"
module ripple_carry_adder_tb();
reg [3:0] a, b;
reg cin;
wire [3:0] s;
wire c_out;
ripple_carry_adder rp(a, b, cin, s, c_out);
initial begin
    $dumpfile("rca.vcd");
    $dumpvars(0, ripple_carry_adder_tb);
    #2 a=4'b0011; b=4'b1100; cin=0;
    #2 a=4'b0000; b=4'b1111;
    #2 a=4'b0101; b=4'b1100;
    #2 a=4'b1010; b=4'b1101; cin=1;
    #2 a=4'b0111; b=4'b1011;
    #2 a=4'b1000; b=4'b1001;
end
endmodule