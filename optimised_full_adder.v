module full_adder (
    input  wire a,
    input  wire b,
    input  wire cin,
    output wire sum,
    output wire cout
);
    wire a_xor_b;
    assign a_xor_b = a ^ b;
    assign sum = a_xor_b ^ cin;
  assign cout = (a & b) | (a_xor_b & cin);
endmodule
