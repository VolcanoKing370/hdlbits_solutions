// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    
    /* Though I would use casez, but the next problem uses casez. Therefore we are going to do this THE LOUSY EXHAUSTIVE WAY! */
    always@(*) begin
        case(in[3:0])
            4'h0: pos = 0;  /* 0000 */
            4'h1: pos = 0;  /* 0001 */
            4'h2: pos = 1;  /* 0010 */
            4'h3: pos = 0;  /* 0011 */
            4'h4: pos = 2;  /* 0100 */
            4'h5: pos = 0;  /* 0101 */
            4'h6: pos = 1;  /* 0110 */
            4'h7: pos = 0;  /* 0111 */
            4'h8: pos = 3;  /* 1000 */
            4'h9: pos = 0;  /* 1001 */
            4'ha: pos = 1;  /* 1010 */
            4'hb: pos = 0;  /* 1011 */
            4'hc: pos = 2;  /* 1100 */
            4'hd: pos = 0;  /* 1101 */
            4'he: pos = 1;  /* 1110 */
            4'hf: pos = 0;  /* 1111 */
            default: pos = 0;
        endcase
        end

endmodule