`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:46:18 01/24/2021
// Design Name:   LightingSystem
// Module Name:   D:/Semester 3/Logic Design szamani/Az Mohammadpour/Final Project/Projects/Module4/tb_LightingSystem.v
// Project Name:  Module4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LightingSystem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_LightingSystem;

	// Inputs
	reg [3:0] tcode;
	reg [3:0] ulight;
	reg [3:0] lenght;

	// Outputs
	wire [3:0] wshade;
	wire [3:0] lightnum;
	wire [15:0] lightstate;

	// Instantiate the Unit Under Test (UUT)
	LightingSystem uut (
		.tcode(tcode), 
		.ulight(ulight), 
		.lenght(lenght), 
		.wshade(wshade), 
		.lightnum(lightnum), 
		.lightstate(lightstate)
	);

	initial begin
		// Initialize Inputs
		tcode = 4'b0000;
		ulight = 4'b1010;
		lenght = 4'b1001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		tcode = 4'b0001;
		#100
		
		tcode = 4'b0010;
		#100
		
		tcode = 4'b0100;
		#100
		
		ulight = 4'b0011;
		#100
		
		tcode = 4'b1000;
		#100
		
		ulight = 4'b0101;
		#100
		
		tcode = 4'b0000;
		
		
	end
      
endmodule

