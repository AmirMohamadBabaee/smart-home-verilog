/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Fan Speed (PWM)
---  Description: Module3: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
`include "./CoolHeatSystemUtils.v"

module FanSpeed (
	input        arst     , // reset [asynch]  
	input        clk      , // clock [posedge] 
	input  [7:0] speed    , // speed [duty-cycle]  
	output reg   pwm_data   // data  [output]
);

	/* write your code here */
	wire [7:0] counter;
	
	always @(posedge clk or negedge arst)
		begin
			if (!arst)
				pwm_data = 1'b0;
			else if (speed > counter)
				pwm_data = 1'b1;
			else
				pwm_data = 1'b0;
		end
	Counter_8bit counter_1(
		.arst(arst),
		.clk(clk),
		.counter_output(counter)
	);
	
	/* write your code here */

endmodule
