module xor_32bit (output [31:0]result, input [31:0] a, b);

	xor xor1  (result[0],  a[0],   b[0]);
	xor xor2  (result[1],  a[1],   b[1]);
	xor xor3  (result[2],  a[2],   b[2]);
	xor xor4  (result[3],  a[3],   b[3]);
	xor xor5  (result[4],  a[4],   b[4]);
	xor xor6  (result[5],  a[5],   b[5]);
	xor xor7  (result[6],  a[6],   b[6]);
	xor xor8  (result[7],  a[7],   b[7]);
	xor xor9  (result[8],  a[8],   b[8]);
	xor xor10 (result[9],  a[9],   b[9]);
	xor xor11 (result[10], a[10], b[10]);
	xor xor12 (result[11], a[11], b[11]);
	xor xor13 (result[12], a[12], b[12]);
	xor xor14 (result[13], a[13], b[13]);
	xor xor15 (result[14], a[14], b[14]);
	xor xor16 (result[15], a[15], b[15]);
	xor xor17 (result[16], a[16], b[16]);
	xor xor18 (result[17], a[17], b[17]);
	xor xor19 (result[18], a[18], b[18]);
	xor xor20 (result[19], a[19], b[19]);
	xor xor21 (result[20], a[20], b[20]);
	xor xor22 (result[21], a[21], b[21]);
	xor xor23 (result[22], a[22], b[22]);
	xor xor24 (result[23], a[23], b[23]);
	xor xor25 (result[24], a[24], b[24]);
	xor xor26 (result[25], a[25], b[25]);
	xor xor27 (result[26], a[26], b[26]);
	xor xor28 (result[27], a[27], b[27]);
	xor xor29 (result[28], a[28], b[28]);
	xor xor30 (result[29], a[29], b[29]);
	xor xor31 (result[30], a[30], b[30]);
	xor xor32 (result[31], a[31], b[31]);

endmodule 