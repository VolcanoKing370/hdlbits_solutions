module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    // Signals
    wire cout_alph;
    wire[31:0] b_input = b^{32{sub}};
    
    // The modules
    add16 alpha(.a(a[15:0]), .b(b_input[15:0]), .cin(sub), .cout(cout_alph), .sum(sum[15:0]));
    add16 beta(.a(a[31:16]), .b(b_input[31:16]), .cin(cout_alph), .sum(sum[31:16]));

endmodule