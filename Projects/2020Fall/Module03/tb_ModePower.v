`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:39:15 01/23/2021
// Design Name:   ModePower
// Module Name:   D:/Semester 3/Logic Design szamani/Az Mohammadpour/Final Project/Projects/smart-home/tb_ModePower.v
// Project Name:  smart-home
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ModePower
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ModePower;

	// Inputs
	reg [7:0] chs_conf;

	// Outputs
	wire [3:0] chs_power;
	wire chs_mode;

	// Instantiate the Unit Under Test (UUT)
	ModePower uut (
		.chs_conf(chs_conf), 
		.chs_power(chs_power), 
		.chs_mode(chs_mode)
	);
	
	initial begin
		// Initialize Inputs
		chs_conf = 0;
		#100;
      chs_conf = 8'b10101010;
		#100;
      chs_conf = 8'b10101011;
		#100;
      chs_conf = 8'b10111110;
		#100;
      chs_conf = 8'b11111110;
		#100;
      chs_conf = 8'b11111111;
		#100;
		// Add stimulus here

	end

	/*initial begin
		// Initialize Inputs
		chs_conf = 8'b11100010;

		// Wait 100 ns for global reset to finish
		#100;
		
		chs_conf = 8'b00010110;
		#100
		
		chs_conf = 8'b10101010;
		
		#100
		chs_conf = 8'b0;
		
		#100
		chs_conf = 8'b10000000;
		
		#100
		chs_conf = 8'b11000000;
		
		#100
		chs_conf = 8'b11100000;
		
		#100
		chs_conf = 8'b11110000;
		
		#100
		chs_conf = 8'b11111000;
		
		#100
		chs_conf = 8'b11111100;
		
		#100
		chs_conf = 8'b11111110;
		
		#100
		chs_conf = 8'b11111111;
		
        
		// Add stimulus here

	end*/
      
endmodule

