module parallel_adder (
    input [3:0] a, b, input cin, output [3:0] s, output cout
);
  wire c1, c2, c3;
  full_adder f1(.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(c1));
  full_adder f2(.a(a[1]), .b(b[1]), .cin(c1), .s(s[1]), .cout(c2));
  full_adder f3(.a(a[2]), .b(b[2]), .cin(c2), .s(s[2]), .cout(c3));
  full_adder f4(.a(a[3]), .b(b[3]), .cin(c3), .s(s[3]), .cout(cout));
endmodule

module full_adder (
    input a, input b, input cin, output s, output cout
);
   assign s = a ^ b ^ cin;
   assign cout = (a & b) | (b & cin) | (cin & a); 
endmodule