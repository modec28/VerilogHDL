module mux2to1(a,b,out,sel);
	input a,b,sel;
	output out;
	reg temp_out;
	
	always @(sel)
	begin
		temp_out = (sel==1'b0)?a:b;
	end
	assign out = temp_out;
endmodule