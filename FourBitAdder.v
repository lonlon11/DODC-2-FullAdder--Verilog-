module FourBitAdder (	input 	[3:0] a,
						input 	[3:0] b,
						output 	[4:0] s);
	wire [2:0] w;

	FullAdder first ( 	.a(a[0]), 		// assign input a0 to a
						.b(b[0]),		// assign input b0 to b
						.cin(0),		// assign input  0 to cin
						.s(s[0]),		// assign output s to s0
						.cout(w[0]));	// assign output cout to w0

	FullAdder second ( 	.a(a[1]),		// assign input a1 to a
						.b(b[1]),		// assign input b1 to b
						.cin(w[0]),		// assign input w0 to cin
						.s(s[1]),		// assign output s1 to s
						.cout(w[1]));	// assign output cout to w1

	FullAdder third ( 	.a(a[2]),		// assign input a2 to a
						.b(b[2]),		// assign input b2 to b
						.cin(w[1]),		// assign input w1 to cin
						.s(s[2]),		// assign output s2 to s
						.cout(w[2]));	// assign output cout to w2

	FullAdder fourth ( 	.a(a[3]),		// assign input a3 to a
						.b(b[3]),		// assign input b3 to b
						.cin(w[2]),		// assign input w2 to cin
						.s(s[3]),		// assign output s3 to s
						.cout(s[4]));	// assign output s4 to cout
	
endmodule