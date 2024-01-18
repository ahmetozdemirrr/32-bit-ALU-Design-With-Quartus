module mod_32bit(input[31:0] a, b, input clk, rst, start, output[31:0] mod_res);

	wire temp_less_than, save_command, substract_command, compare_command;

	mod_cu state_machine(clk, rst, start, temp_less_than, save_command, substract_command, compare_command);
	mod_dp data_path(clk, rst, substract_command, save_command, compare_command, a, b, temp_less_than, mod_res);
	
endmodule 