module mux4to1(in1,in2,in3,in4,sel,out);
	input in1,in2,in3,in4;
	input [1:0] sel;
	output out;
	
	wire Mid_Val1,Mid_val2;
	
	mux2to1 mux2to1_1(.a(in1),.b(in2),.out(Mid_val1),.sel(sel[1]));
	mux2to1 mux2to1_2(.a(in3),.b(in4),.out(Mid_val2),.sel(sel[1]));
	mux2to1 mux2to1_3(.a(Mid_val1),.b(Mid_val2),.out(out),.sel(sel[0]));
endmodule