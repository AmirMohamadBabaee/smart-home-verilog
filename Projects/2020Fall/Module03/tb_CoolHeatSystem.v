`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:12 01/28/2021
// Design Name:   CoolHeatSystem
// Module Name:   D:/Semester 3/Logic Design szamani/Az Mohammadpour/Final Project/Projects/smart-home/tb_CoolHeatSystem.v
// Project Name:  smart-home
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CoolHeatSystem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_CoolHeatSystem;

	// Inputs
	reg arst;
	reg clk;
	reg [7:0] speed;
	reg [7:0] chs_conf;

	// Outputs
	wire [3:0] chs_power;
	wire chs_mode;
	wire pwm_data;

	// Instantiate the Unit Under Test (UUT)
	CoolHeatSystem uut (
		.arst(arst), 
		.clk(clk), 
		.speed(speed), 
		.chs_conf(chs_conf), 
		.chs_power(chs_power), 
		.chs_mode(chs_mode), 
		.pwm_data(pwm_data)
	);
	
	always #10 clk = ~clk;

	initial begin
		arst = 1;
		clk = 0;
		speed = 8'b1001000;
		chs_conf = 8'b11100010;

		#100;
		
		arst = 0;
		#107;
		arst = 1; 
		#103
		arst = 0;
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
		
	end
      
endmodule

