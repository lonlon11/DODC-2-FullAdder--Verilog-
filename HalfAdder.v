module HalfAdder (	input a,
					input b,
					output s,
					output cout);

	assign cout = (a & b);
	assign s = (a ^ b);
	
endmodule