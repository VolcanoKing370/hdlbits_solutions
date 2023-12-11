// synthesis verilog_input_version verilog_2001
module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
    
    // Teh procedural version
    always @(*) begin
        if(sel_b1 == 1'b1 && sel_b2 == 1'b1) begin 
            out_always = b;
        end
        else begin
            out_always = a;
        end
    end 
    
    // Top G version
    assign out_assign = (sel_b1 == 1'b1 && sel_b2 == 1'b1) ? b : a;

endmodule