// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    
    always@(*) begin
        /* By predefining our outputs, we don't need to add a default case in our case statement*/
        right=1'b0; up=1'b0; left=1'b0; down=1'b0;					/* Teh default case*/
        case(scancode[15:0])
			16'he074: right=1'b1;	/* Right Arrow */
            16'he075: up=1'b1;		/* Up Arrow*/
            16'he06b: left=1'b1;	/* Left Arrow */
            16'he072: down=1'b1;	/* Down Arrow */
        endcase
    end

endmodule