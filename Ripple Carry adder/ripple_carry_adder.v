module ripple_carry_adder (
    input [3:0] a, b, input cin, output [3:0] s, output c_out
);
    wire c1, c2, c3, x0, x1, x2, x3;
    xor(x0, b[0], cin);
    xor(x1, b[1], cin);
    xor(x2, b[2], cin);
    xor(x3, b[3], cin);
    full_adder f1(.a(a[0]), .b(x0), .cin(cin), .sum(s[0]), .cout(c1));
    full_adder f2(.a(a[1]), .b(x1), .cin(c1), .sum(s[1]), .cout(c2));
    full_adder f3(.a(a[2]), .b(x2), .cin(c2), .sum(s[2]), .cout(c3));
    full_adder f4(.a(a[3]), .b(x3), .cin(c3), .sum(s[3]), .cout(c_out));
endmodule

module full_adder (
    input a, input b, input cin, output sum, output cout
);
   assign sum = a ^ b ^ cin;
   assign cout = (a & b) | (b & cin) | (cin & a); 
endmodule