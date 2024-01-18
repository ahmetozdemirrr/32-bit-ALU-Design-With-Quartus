module cla_adder4bit(output [3:0] res_sum, output c_out, input [3:0] a, b, input c_in);

	wire [3:1]C;
	wire [0:3]P; 
	wire [0:3]G;

	/// Making Ps
	xor p0(P[0], a[0], b[0]);
	xor p1(P[1], a[1], b[1]);
	xor p2(P[2], a[2], b[2]);
	xor p3(P[3], a[3], b[3]);

	/// Making Gs 
	and g0(G[0], a[0], b[0]);
	and g1(G[1], a[1], b[1]);
	and g2(G[2], a[2], b[2]);
	and g3(G[3], a[3], b[3]);

	/// Making C1
	wire tmp1;
	and c11(tmp1, P[0], c_in);
	or c12(C[1], G[0], tmp1);

	/// Making C2
	wire tmp2;
	wire tmp3;
	wire tmp4;
	wire tmp5;

	and c21(tmp2, P[1], G[0]);
	and c22(tmp3, P[1], P[0]);
	and c23(tmp4, tmp3, c_in);

	or c24(tmp5, tmp2, tmp4);
	or c25(C[2], tmp5, G[1]);

	/// Making C3
	wire tmp6;
	wire tmp7;
	wire tmp8;
	wire tmp9;
	wire tmp10;
	wire tmp11;
	wire tmp12;
	wire tmp13;

	and c31(tmp6, P[2], G[1]);
	and c32(tmp7, P[2], P[1]);
	and c33(tmp8, tmp7, G[0]);
	and c34(tmp9, P[2], P[1]);
	and c35(tmp10, P[0], c_in);
	and c36(tmp11, tmp9, tmp10);

	or c37(tmp12, tmp6, tmp8);
	or c38(tmp13, tmp11, G[2]);
	or c39(C[3], tmp12, tmp13);

	/// Making Cout (C4)
	wire tmp14;
	wire tmp15;
	wire tmp16;
	wire tmp17;
	wire tmp18;
	wire tmp19;
	wire tmp20;
	wire tmp21;
	wire tmp22;
	wire tmp23;
	wire tmp24;
	wire tmp25;

	and c41(tmp14, P[3], G[2]);
	and c42(tmp15, P[3], P[2]);
	and c43(tmp16, tmp15, G[1]);
	and c44(tmp17, P[3], P[2]);
	and c45(tmp18, P[1], G[0]);
	and c46(tmp19, tmp17, tmp18);
	and c47(tmp20, P[3], P[2]);
	and c48(tmp21, P[1], P[0]);
	and c49(tmp22, tmp21, c_in);

	or c50(tmp23, tmp14, tmp16);
	or c51(tmp24, tmp19, tmp22);
	or c52(tmp25, tmp23, tmp24);
	or c53(c_out, tmp25, G[3]);

	/// Making Sums
	xor s0(res_sum[0], P[0], c_in);
	xor s1(res_sum[1], P[1], C[1]);
	xor s2(res_sum[2], P[2], C[2]);
	xor s3(res_sum[3], P[3], C[3]);
  
endmodule 