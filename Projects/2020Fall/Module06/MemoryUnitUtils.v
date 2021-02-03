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
---  Module Name:  Memory Unit Utils
---  Description: Module5:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

/***********************************************************/
/************** Design Your Own Modules Below **************/

module D_FF(
	input arst,
	input clk,
	input en,
	input data,
	output reg out
);

	always @ (posedge clk or posedge arst)
		if (arst)
			out <= 1'b0;
		else if (en)
			out <= data;

endmodule
	
/************** Design Your Own Modules Above **************/
/***********************************************************/
