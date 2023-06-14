module bin_to_bcd (
    input [7:0] bin, output [11:0] bcd
);
    reg [3:0] h, t, o;
    reg [6:0] temp;
    
    always @(*) begin
        h = bin/100;
        temp = bin%100;
        t = temp/10;
        o = temp%10;
    end

    assign bcd = {h, t, o};
endmodule