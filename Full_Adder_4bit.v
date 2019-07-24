module Full_Adder_4bit(a,b,cin,cout,sum);
	input [3:0] a,b;
	input cin;
	output cout;
	output [3:0] sum;
	
	wire c1,c2,c3;
	
	Full_Adder fa1(.a(a[0]),.b(b[0]),.cin(cin),.cout(c1),.sum(sum[0]));
	Full_Adder fa2(.a(a[1]),.b(b[1]),.cin(c1),.cout(c2),.sum(sum[1]));
	Full_Adder fa3(.a(a[2]),.b(b[2]),.cin(c2),.cout(c3),.sum(sum[2]));
	Full_Adder fa4(.a(a[3]),.b(b[3]),.cin(c3),.cout(cout),.sum(sum[3]));
endmodule