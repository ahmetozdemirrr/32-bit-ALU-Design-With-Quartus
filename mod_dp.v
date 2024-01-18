module mod_dp(input clk, rst, substract_command, save_command, compare_command, input wire [31:0] a, b, output reg temp_less_than, output reg[31:0] mod_res);

	reg[31:0] temp, res_s_t, res_s_t1;
	wire[31:0] res_c, res_s;

	less_than32bit compare_ALU (res_c, res_s, b);
	
	sub_add_32bit substract_ALU (res_s, res_s_t, b, 1'b1);
	
	always @(posedge clk or negedge rst) begin
		
		if (!rst) begin
		
			temp <= a;
			temp_less_than <= 0 ;
			res_s_t <= a ;
			res_s_t1 <= a ;
		
		end else begin		
		
			if(compare_command) begin
			
				temp_less_than <= res_c[0];
				
			end if(substract_command) begin
			
				res_s_t <= res_s;
				res_s_t1 <= res_s_t;
				temp <= res_s_t1 ;
				
			end if(save_command) begin	
			
				mod_res <= temp;
				
			end
			
		end
		
	end
	
endmodule 