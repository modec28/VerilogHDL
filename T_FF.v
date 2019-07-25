module T_FF(clk,d,q);
	input clk, d;
	output reg q;
	
	initial
	begin
		q = 1'b0;
	end
	
	always @(posedge clk)
	begin
		q<= d^q;
	end
	
endmodule