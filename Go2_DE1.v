module Go2_DE1(a,b,_and,_or,_xor);
	input a,b;
	output _and,_or,_xor;

	assign _and = a&b;
	assign _or = a|b;
	assign _xor = a^b;

endmodule