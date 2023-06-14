`include "sync4bit.v"
module sync4bit_tb();
reg clk, rst, load, up_down;
reg [3:0] data;
wire [3:0] count;
sync4bit sn(clk, rst, load, up_down, data, count);
initial begin
    $dumpfile("sync4bit.vcd");
    $dumpvars(0, sync4bit_tb);
end
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    rst=0; load=0; up_down=0; data=4'b1010;
    #2 rst=1; load=0; up_down=0; data=4'b1100;
    #2 rst=0; load=1; up_down=0; data=4'b000;
    #2 rst=0; load=1; up_down=1; data=4'b1111;
    #2 rst=0; load=0; up_down=1; data=4'b1110;
    #2 $finish;
end
endmodule