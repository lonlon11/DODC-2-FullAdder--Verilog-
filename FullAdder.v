module FullAdder (	input a,
					input b,
					input cin,
					output s,
					output cout);

	//This code segments are for you decide implement the full-adder directly
	//assign cout = ((a ^ b) & cin) | (a & b);
	//assign s = (cin ^ (a ^ b));

	wire [2:0] w;

	HalfAdder one (	.a(a),
					.b(b),
					.s(w[0]),
					.cout(w[1]));

	HalfAdder two (	.a(w[0]),
					.b(cin),
					.s(s),
					.cout(w[2]));

	assign cout = (w[1] | w[2]);
	//assign cout = (&w[2:1]);
	
endmodule