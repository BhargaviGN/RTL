module half_sub (
    input a, input b, output bor, output diff
);
    assign diff = a ^ b;
    assign bor = (~a) & b;
endmodule