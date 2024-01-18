module cla_32bit(output [31:0]res_sum, input [31:0] a, b, input c_in); 
   
  wire [7:1]C;
  
  cla_adder4bit F0_3   (res_sum[3:0],   C[1],  a[3:0],   b[3:0],   c_in);
  cla_adder4bit F4_7   (res_sum[7:4],   C[2],  a[7:4],   b[7:4],   C[1]);
  cla_adder4bit F8_11  (res_sum[11:8],  C[3],  a[11:8],  b[11:8],  C[2]);
  cla_adder4bit F12_15 (res_sum[15:12], C[4],  a[15:12], b[15:12], C[3]);
  
  cla_adder4bit F16_19 (res_sum[19:16], C[5],  a[19:16], b[19:16], C[4]);
  cla_adder4bit F20_23 (res_sum[23:20], C[6],  a[23:20], b[23:20], C[5]);
  cla_adder4bit F24_27 (res_sum[27:24], C[7],  a[27:24], b[27:24], C[6]);
  cla_adder4bit F28_31 (res_sum[31:28], c_out, a[31:28], b[31:28], C[7]);
  
endmodule 