module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    // Signals
    wire cout_selector;
    wire [15:0] sum_alpha, sum_beta;
    
    // The modules
    add16 select(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .cout(cout_selector), .sum(sum[15:0]));
    add16 alpha(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sum_alpha));
    add16 beta(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(sum_beta));

    // 16-bit 2-1 MUX
    always@(*)
        begin
            case(cout_selector)
                1'b0: sum[31:16] = sum_alpha;
                1'b1: sum[31:16] = sum_beta;
            endcase
        end
endmodule