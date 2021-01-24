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
---  Module Name: Lighting System Utils
---  Description: Module4:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

/***********************************************************/
/************** Design Your Own Modules Below **************/

module Decoder4to16_less (
	input [3:0] in, 
	output [15:0] out
);

	assign out[0]  = in[3] | in[2] | in[1] | in[0];
	assign out[1]  = in[3] | in[2] | in[1];
	assign out[2]  = in[3] | in[2] | (in[1] & in[0]);
    assign out[3]  = in[3] | in[2];
    assign out[4]  = in[3] | (in[2] & (in[1] | in[0]));
    assign out[5]  = in[3] | (in[2] & in[1]);
    assign out[6]  = in[3] | (in[2] & in[1] & in[0]);
    assign out[7]  = in[3];
    assign out[8]  = in[3] & (in[2] | in[1] | in[0]);
    assign out[9]  = in[3] & (in[2] | in[1]);
    assign out[10] = in[3] & (in[2] | (in[1] & in[0]));
    assign out[11] = in[3] & in[2];
    assign out[12] = in[3] & in[2] & (in[1] | in[0]);
    assign out[13] = in[3] & in[2] & in[1];
    assign out[14] = in[3] & in[2] & in[1] & in[0];
    assign out[15] = 1'b0;
	 
endmodule
	
/************** Design Your Own Modules Above **************/
/***********************************************************/
