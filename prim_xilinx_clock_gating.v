module prim_xilinx_clock_gating (
	clk_i,
	test_en_i,
	clk_o
);
	input clk_i;
	input test_en_i;
	output wire clk_o;
	BUFGCE u_bufgce(
		.I(clk_i),
		.CE(test_en_i),
		.O(clk_o)
	);
endmodule
