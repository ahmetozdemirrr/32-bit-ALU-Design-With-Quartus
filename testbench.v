module testbench();
	
	wire [31:0] S, S1;
	
	reg [31:0] A, A1, B, B1;
	reg [2:0] alu_op, alu_op1;
	reg clk, clk1, rst, rst1;
	
	alu_32bit ALUinstance (S, A, B, alu_op, clk, rst);
	alu_32bit ALUinstance1 (S1, A1, B1, alu_op1, clk1, rst1); //For mod operation		
	
	initial begin
	
		//MOD initial values
		#5 A1 = 32'b00000000000000000000000000001100; B1 = 32'b00000000000000000000000000000101; alu_op1 = 3'b111;
		#5 clk1 = 0; rst1 = 0;
		#5 rst1 = 1;
		
		//AND
		#5 A = 32'b01111000000000000000000000001100; B = 32'b01100000000000000000000000000101; alu_op = 3'b000;
		#5 $display("AND result: %b",S);
		
		//OR
		#5 A = 32'b01100000000000000000000000001100; B = 32'b00000000000000000000000000000101; alu_op = 3'b001;
		#5 $display("OR result: %b",S);
		
		//XOR
		#5 A = 32'b01100000000000000000000000001111; B = 32'b00000000000000000000000000000101; alu_op = 3'b010;
		#5 $display("XOR result: %b",S);
		
		//NOR
		#5 A = 32'b00000000000000000000000000001100; B = 32'b00000000000000000000000000000101; alu_op = 3'b011;
		#5 $display("NOR result: %b",S);
		
		//LESS THAN
		#5 A = 32'b00000000000000000000000000001100; B = 32'b00000000000000000000000000000101; alu_op = 3'b100;
		#5 $display("LESS THAN result (ex1): %b",S);
		
		#5 A = 32'b00000000000000000000000000000101; B = 32'b00000000000000000000000000001100; alu_op = 3'b100;
		#5 $display("LESS THAN result (ex2): %b",S);
		
		//ADD
		#5 A = 32'b00000000000000000000000000001100; B = 32'b00000000000000000000000000000101; alu_op = 3'b101;
		#5 $display("ADD result: %b",S);
		
		//SUB
		#5 A = 32'b00000000000000000000000000001100; B = 32'b00000000000000000000000000000101; alu_op = 3'b110;
		#5 $display("SUB result (ex1): %b",S);
		
		#5 A = 32'b00000000000000000000000000000101; B = 32'b00000000000000000000000000001100; alu_op = 3'b110;
		#5 $display("SUB result (ex2): %b",S);
		
		//MOD
		
		#999 $display("MOD result: %b",S1);
		#5 $display("FINISH");
		$stop;
		
	end
	
	always @* begin
		
		#5 clk1 <= ~clk1;
		
	end

endmodule 