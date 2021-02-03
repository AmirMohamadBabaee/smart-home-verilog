`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:24:47 02/04/2021
// Design Name:   MemoryUnit
// Module Name:   D:/Semester 3/Logic Design szamani/Az Mohammadpour/Final Project/Projects/Module6/tb_MemoryUnit.v
// Project Name:  Module6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MemoryUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_MemoryUnit;

	// Inputs
	reg arst;
	reg clk;
	reg wren;
	reg [34:0] din;

	// Outputs
	wire [34:0] dout;

	// Instantiate the Unit Under Test (UUT)
	MemoryUnit uut (
		.arst(arst), 
		.clk(clk), 
		.wren(wren), 
		.din(din), 
		.dout(dout)
	);

	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		arst = 1;
		clk = 0;
		wren = 0;
		din = 0;

		// Wait 100 ns for global reset to finish
		#20;
		arst = 0;
		
		#100
		din = 35'b01010101010101010101010101010101010;
		
		#100
		wren = 1;
		
		#100 
		din = 35'b01010101010101010101011111111111111;
		
		#100
		arst = 1;
		
		
        
		// Add stimulus here

	end
      
endmodule

