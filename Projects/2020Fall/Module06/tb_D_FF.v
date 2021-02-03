`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:10:42 02/04/2021
// Design Name:   D_FF
// Module Name:   D:/Semester 3/Logic Design szamani/Az Mohammadpour/Final Project/Projects/Module6/tb_D_FF.v
// Project Name:  Module6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_D_FF;

	// Inputs
	reg arst;
	reg clk;
	reg en;
	reg data;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	D_FF uut (
		.arst(arst), 
		.clk(clk), 
		.en(en), 
		.data(data), 
		.out(out)
	);
	
	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		arst = 1;
		clk = 0;
		en = 0;
		data = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		arst = 0;
		data = 1;
		
		#100
		
		en = 1;
		
		#100
		
		arst = 1;
		
		#20
		
		arst = 0;
		
		#20
		
		en = 0;
		
		#80
		
		data = 0;
        
		// Add stimulus here

	end
      
endmodule

