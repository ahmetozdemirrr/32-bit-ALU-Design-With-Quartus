module alu_32bit (output [31:0] result, input [31:0] a, b, input [2:0] alu_op, input clk, rst);
	
	wire start;
   wire [31:0] result_and;
	wire [31:0] result_or;
	wire [31:0] result_xor;
	wire [31:0] result_nor;
	wire [31:0] result_lessthan;
	wire [31:0] result_add;
	wire [31:0] result_sub;
	wire [31:0] result_mod;
	
	and_32bit       ins1 (result_and, a, b);
	or_32bit        ins2 (result_or,  a, b);
	xor_32bit       ins3 (result_xor, a, b);
	nor_32bit       ins4 (result_nor, a, b);
	sub_add_32bit   ins5 (result_add, a, b, alu_op[1]);
	sub_add_32bit   ins6 (result_sub, a, b, alu_op[1]);
	less_than32bit  ins7 (result_lessthan, a, b);
	mod_32bit       ins8 (a, b, clk, rst, start, result_mod);
	
	//3 bitin tamamı sıfır olduğunda start'ı ayarlıyrouz
	and and1 (temp1, alu_op[0], alu_op[1]);
	and and2 (start, temp1, alu_op[2]);

	mux_8x1_32bit m1 (result, result_and, result_or, result_xor, result_nor, result_lessthan, result_add, result_sub, result_mod, alu_op);

endmodule  