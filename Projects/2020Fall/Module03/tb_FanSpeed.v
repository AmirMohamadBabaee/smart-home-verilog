`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:55:17 01/23/2021
// Design Name:   FanSpeed
// Module Name:   D:/Semester 3/Logic Design szamani/Az Mohammadpour/Final Project/Projects/smart-home/tb_FanSpeed.v
// Project Name:  smart-home
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FanSpeed
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_FanSpeed;

	// Inputs
	reg arst;
	reg clk;
	reg [7:0] speed;

	// Outputs
	wire pwm_data;

	// Instantiate the Unit Under Test (UUT)
	FanSpeed uut (
		.arst(arst), 
		.clk(clk), 
		.speed(speed), 
		.pwm_data(pwm_data)
	);
	
	initial begin
	  arst = 1;
	  clk = 0;
	  #40 arst=0;
	  repeat (1100)
		#40 clk = ~clk;
	end
	
	initial begin
	  // Initialize Inputs
	  //clk = 0;
	  speed = 8'b10001001;

	end
	
	/*always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		arst = 1;
		clk = 0;
		speed = 8'b1001000;

		// Wait 100 ns for global reset to finish
		#100;
		arst = 0;
		#107;
		arst = 1; 
		#103
		arst = 0;
		
		// Add stimulus here

	end*/
      
endmodule

