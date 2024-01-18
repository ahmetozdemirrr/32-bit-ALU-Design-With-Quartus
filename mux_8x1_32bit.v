module mux_8x1_32bit (output [31:0]result, input [31:0]op_and, op_or, op_xor, op_nor, op_lessthan, op_add, op_sub, op_mod, input [2:0]sel);

	mux_8x1_4bit m1 (result[3:0],   op_and[3:0],   op_or[3:0],   op_xor[3:0],   op_nor[3:0],   op_lessthan[3:0],   op_add[3:0],   op_sub[3:0],   op_mod[3:0],   sel);
	mux_8x1_4bit m2 (result[7:4],   op_and[7:4],   op_or[7:4],   op_xor[7:4],   op_nor[7:4],   op_lessthan[7:4],   op_add[7:4],   op_sub[7:4],   op_mod[7:4],   sel);
	mux_8x1_4bit m3 (result[11:8],  op_and[11:8],  op_or[11:8],  op_xor[11:8],  op_nor[11:8],  op_lessthan[11:8],  op_add[11:8],  op_sub[11:8],  op_mod[11:8],  sel);
	mux_8x1_4bit m4 (result[15:12], op_and[15:12], op_or[15:12], op_xor[15:12], op_nor[15:12], op_lessthan[15:12], op_add[15:12], op_sub[15:12], op_mod[15:12], sel);
	
	mux_8x1_4bit m5 (result[19:16], op_and[19:16], op_or[19:16], op_xor[19:16], op_nor[19:16], op_lessthan[19:16], op_add[19:16], op_sub[19:16], op_mod[19:16], sel);
	mux_8x1_4bit m6 (result[23:20], op_and[23:20], op_or[23:20], op_xor[23:20], op_nor[23:20], op_lessthan[23:20], op_add[23:20], op_sub[23:20], op_mod[23:20], sel);
	mux_8x1_4bit m7 (result[27:24], op_and[27:24], op_or[27:24], op_xor[27:24], op_nor[27:24], op_lessthan[27:24], op_add[27:24], op_sub[27:24], op_mod[27:24], sel);
	mux_8x1_4bit m8 (result[31:28], op_and[31:28], op_or[31:28], op_xor[31:28], op_nor[31:28], op_lessthan[31:28], op_add[31:28], op_sub[31:28], op_mod[31:28], sel);

endmodule 
 