`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:57:04 01/24/2021
// Design Name:   Decoder4to16_less
// Module Name:   D:/Semester 3/Logic Design szamani/Az Mohammadpour/Final Project/Projects/Module4/tb_Decoder4to16_less.v
// Project Name:  Module4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder4to16_less
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Decoder4to16_less;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	Decoder4to16_less uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		in = 4'b0001;
		
		#100
		in = 4'b0010;
		
		#100
		in = 4'b0011;
		
		#100
		in = 4'b0100;
		
		#100
		in = 4'b0101;
		
		#100
		in = 4'b0110;
		
		#100
		in = 4'b0111;
		
		#100
		in = 4'b1000;
		
		#100
		in = 4'b1001;
		
		#100
		in = 4'b1010;
		
		#100
		in = 4'b1011;
		
		#100
		in = 4'b1100;
		
		#100
		in = 4'b1101;
		
		#100
		in = 4'b1110;
		
		#100
		in = 4'b1111;
	end
      
endmodule

