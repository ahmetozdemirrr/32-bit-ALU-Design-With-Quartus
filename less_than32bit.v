module less_than32bit (output [31:0] result, input [31:0] a, b);
	
	wire [31:0] sub;
	
	sub_add_32bit ins1 (sub, a, b, 1'b1);
	
	//32 bit sayı oluşturuyoruz
	
	or  or1   (result[0],  0, sub[31]); //En sağ bite ilk bitin değerini koyuyoruz (4. pdfteki devreleri referans alarak)
	and and2  (result[1],  0, sub[31]);
	and and3  (result[2],  0, sub[31]);
	and and4  (result[3],  0, sub[31]);
	and and5  (result[4],  0, sub[31]);
	and and6  (result[5],  0, sub[31]);
	and and7  (result[6],  0, sub[31]);
	and and8  (result[7],  0, sub[31]);
	and and9  (result[8],  0, sub[31]);
	and and10 (result[9],  0, sub[31]);
	and and11 (result[10], 0, sub[31]);
	and and12 (result[11], 0, sub[31]);
	and and13 (result[12], 0, sub[31]);
	and and14 (result[13], 0, sub[31]);
	and and15 (result[14], 0, sub[31]);
	and and16 (result[15], 0, sub[31]);
	and and17 (result[16], 0, sub[31]);
	and and18 (result[17], 0, sub[31]);
	and and19 (result[18], 0, sub[31]);
	and and20 (result[19], 0, sub[31]);
	and and21 (result[20], 0, sub[31]);
	and and22 (result[21], 0, sub[31]);
	and and23 (result[22], 0, sub[31]);
	and and24 (result[23], 0, sub[31]);
	and and25 (result[24], 0, sub[31]);
	and and26 (result[25], 0, sub[31]);
	and and27 (result[26], 0, sub[31]);
	and and28 (result[27], 0, sub[31]);
	and and29 (result[28], 0, sub[31]);
	and and30 (result[29], 0, sub[31]);
	and and31 (result[30], 0, sub[31]);
	and and32 (result[31], 0, sub[31]);	

endmodule 