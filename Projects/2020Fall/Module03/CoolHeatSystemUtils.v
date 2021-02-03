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
---  Module Name: Cool Heat System Utils
---  Description: Module3:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

/***********************************************************/
/************** Design Your Own Modules Below **************/

module Counter_8bit(
	input arst	,		// reset [asynch]
	input clk	,		// clock [posedge]
	output reg [7:0] counter_output
);

	always @(posedge clk or posedge arst)
		if (arst)
			counter_output <= 8'b00000000;
		else
			counter_output <= counter_output + 1;
		
	
endmodule

	
/************** Design Your Own Modules Above **************/
/***********************************************************/
