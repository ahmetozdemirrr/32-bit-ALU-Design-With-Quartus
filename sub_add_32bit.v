module sub_add_32bit (output [31:0] res_sub, input [31:0] a, b, input alu_op);
	
	wire [31:0] twos_complement;
	wire [31:0] signal_number;
	
	//32 bit sayı oluşturuyoruz
	and and1  (signal_number[0],  alu_op, alu_op);
	and and2  (signal_number[1],  alu_op, alu_op);
	and and3  (signal_number[2],  alu_op, alu_op);
	and and4  (signal_number[3],  alu_op, alu_op);
	and and5  (signal_number[4],  alu_op, alu_op);
	and and6  (signal_number[5],  alu_op, alu_op);
	and and7  (signal_number[6],  alu_op, alu_op);
	and and8  (signal_number[7],  alu_op, alu_op);
	and and9  (signal_number[8],  alu_op, alu_op);
	and and10 (signal_number[9],  alu_op, alu_op);
	and and11 (signal_number[10], alu_op, alu_op);
	and and12 (signal_number[11], alu_op, alu_op);
	and and13 (signal_number[12], alu_op, alu_op);
	and and14 (signal_number[13], alu_op, alu_op);
	and and15 (signal_number[14], alu_op, alu_op);
	and and16 (signal_number[15], alu_op, alu_op);
	and and17 (signal_number[16], alu_op, alu_op);
	and and18 (signal_number[17], alu_op, alu_op);
	and and19 (signal_number[18], alu_op, alu_op);
	and and20 (signal_number[19], alu_op, alu_op);
	and and21 (signal_number[20], alu_op, alu_op);
	and and22 (signal_number[21], alu_op, alu_op);
	and and23 (signal_number[22], alu_op, alu_op);
	and and24 (signal_number[23], alu_op, alu_op);
	and and25 (signal_number[24], alu_op, alu_op);
	and and26 (signal_number[25], alu_op, alu_op);
	and and27 (signal_number[26], alu_op, alu_op);
	and and28 (signal_number[27], alu_op, alu_op);
	and and29 (signal_number[28], alu_op, alu_op);
	and and30 (signal_number[29], alu_op, alu_op);
	and and31 (signal_number[30], alu_op, alu_op);
	and and32 (signal_number[31], alu_op, alu_op);
	
	xor_32bit xor1 (twos_complement, signal_number, b);
	
	cla_32bit cla1 (res_sub, a, twos_complement, alu_op); //res_sub'a tersi alınan sayı ve 1 sayısı gönderiliyor. Bu sayede 1 ekleme işini de burada yapmış olduk

endmodule  