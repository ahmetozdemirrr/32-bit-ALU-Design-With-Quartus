module mux_8x1_4bit (output [3:0]result, input [3:0]op_and, op_or, op_xor, op_nor, op_lessthan, op_add, op_sub, op_mod, input [2:0]sel);

	mux_8x1_1bit m1 (result[0], op_and[0], op_or[0], op_xor[0], op_nor[0], op_lessthan[0], op_add[0], op_sub[0], op_mod[0], sel);
	mux_8x1_1bit m2 (result[1], op_and[1], op_or[1], op_xor[1], op_nor[1], op_lessthan[1], op_add[1], op_sub[1], op_mod[1], sel);
	mux_8x1_1bit m3 (result[2], op_and[2], op_or[2], op_xor[2], op_nor[2], op_lessthan[2], op_add[2], op_sub[2], op_mod[2], sel);
	mux_8x1_1bit m4 (result[3], op_and[3], op_or[3], op_xor[3], op_nor[3], op_lessthan[3], op_add[3], op_sub[3], op_mod[3], sel);

endmodule 
