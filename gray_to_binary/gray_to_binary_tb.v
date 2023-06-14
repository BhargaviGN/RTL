`include "gray_to_binary.v"
module gray_to_binary_tb();
reg [3:0] g;
wire [3:0] b;
gray_to_binary gtob(g, b);
initial begin
    $dumpfile("gtob.vcd");
    $dumpvars(0, gray_to_binary_tb);
    g=0000; #2;
    g=0001; #2;
    g=0010; #2;
end
endmodule