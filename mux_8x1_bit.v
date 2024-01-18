module mux_8x1_1bit(output result, input op_and, op_or, op_xor, op_nor, op_lessthan, op_add, op_sub, op_mod, input [2:0]sel);

	wire [2:0]selection_not;
	
	not not1 (selection_not[0], sel[0]);
	not not2 (selection_not[1], sel[1]);
	not not3 (selection_not[2], sel[2]);
	
	wire [7:0]temp;
	wire [7:0]r;
	wire [7:0]x;
	wire [5:0]or_;

	and a1 (temp[0], selection_not[0], selection_not[1]);
	and a2 (r[0], temp[0], selection_not[2]);
	and a3 (x[0], r[0], op_and);

	and a4 (temp[1],sel[0],selection_not[1]);
	and a5 (r[1],temp[1],selection_not[2]);
	and a6 (x[1],r[1],op_or);

	and a7 (temp[2],selection_not[0],sel[1]);
	and a8 (r[2],temp[2],selection_not[2]);
	and a9 (x[2],r[2],op_xor);

	and a10 (temp[3],sel[0],sel[1]);
	and a11 (r[3],temp[3],selection_not[2]);
	and a12 (x[3],r[3],op_nor);

	and a13(temp[4],selection_not[0],selection_not[1]);
	and a14(r[4],temp[4],sel[2]);
	and a15(x[4],r[4],op_lessthan);

	and a16(temp[5],sel[0],selection_not[1]);
	and a17(r[5],temp[5],sel[2]);
	and a18(x[5],r[5],op_add);

	and a19(temp[6],selection_not[0],sel[1]);
	and a20(r[6],temp[6],sel[2]);
	and a21(x[6],r[6],op_sub);

	and a22(temp[7],sel[0],sel[1]);
	and a23(r[7],temp[7],sel[2]);
	and a24(x[7],r[7],op_mod);

	or b1(or_[0],x[0],x[1]);
	or b2(or_[1],x[2],x[3]);
	or b3(or_[2],x[4],x[5]);
	or b4(or_[3],x[6],x[7]);
	or b5(or_[4],or_[0],or_[1]);
	or b6(or_[5],or_[2],or_[3]);
	
	or b7(result,or_[4],or_[5]);

endmodule 