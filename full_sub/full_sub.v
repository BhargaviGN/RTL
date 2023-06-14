module full_sub (
    input a, input b, input cin, output bor, output diff
);
   assign diff = a ^ b ^ cin;
   assign bor = ((~a) & b) | (b & cin) | (cin & (~a));  
endmodule