module mod_cu(input clk, rst, start, temp_less_than, output reg save_command, substract_command, compare_command);

	reg[1:0] current_state, next_state;
	
   parameter state1 = 2'b00, state2 = 2'b01, state3 = 2'b10;
	
	always @(posedge clk or negedge rst) begin
      
		if(!rst)begin
		
         current_state <= state1;
			
      end else begin
		
         current_state <= next_state;
			
      end
		
   end  

	always @(posedge clk or negedge rst) begin
      
		case(current_state) 
			
			state1 :begin
				
				if(start) begin
				
					next_state <= state2;
				
				end else begin
				
					next_state <= state1;
					
				end
				
			end
			
			state2:begin
				
				if(temp_less_than) begin
				
					next_state <= state3;
					
				end else begin
				
					next_state <= state2;
					
				end
				
			end
			
			state3:begin	
			
				next_state <= state3;
				
			end
			
		endcase
		
	end

	always @(current_state) begin
      
		case(current_state)
         
			state1: begin
			
				save_command <= 0;
				substract_command <= 0;
				compare_command <= 0;
				
   		end
			
			state2: begin
			
				save_command <= 0;
				substract_command <= 1;
				compare_command <= 1;
				
			end
			
			state3: begin
			
				save_command <= 1;
				substract_command <= 0;					 
				compare_command <= 0;
				
			end
			
		endcase
		
	end

endmodule 