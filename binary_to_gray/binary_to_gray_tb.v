`include "binary_to_gray.v"
module binary_to_gray_tb();
reg [3:0] b;
wire [3:0] g;
binary_to_gray btog(b, g);
initial begin
    $dumpfile("btog.vcd");
    $dumpvars(0, binary_to_gray_tb);
    b=0000; #2;
    b=0001; #2;
    b=0010; #2;
    b=0011; #2;
    b=0100; #2;
    b=0101; #2;
    b=0110; #2;
end
endmodule