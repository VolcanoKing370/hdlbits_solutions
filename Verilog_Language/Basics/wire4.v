module top_module(
	input a, b, c,
	output w, x, y, z);

	assign w = a;
	assign y = b;
	assign z = c;
	assign x = b;

endmodule