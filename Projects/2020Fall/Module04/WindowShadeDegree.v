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
---  Module Name: Window Shade Degree
---  Description: Module4: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module WindowShadeDegree (
	input  [3:0] tcode  , // time code    [table2 time code   ]
	input  [3:0] ulight , // user light   [light degree mode  ]
	output reg [3:0] wshade   // shade level  [window shade level ]
);

	/* write your code here */
	parameter MORNING 		= 4'b0001, 
					AFTERNOON 	= 4'b0010, 
					EVENING 	= 4'b0100, 
					NIGHT 		= 4'b1000, 
					OTHER 		= 4'b0000;
					
	always @(tcode or ulight)
		case (tcode)
			MORNING: wshade = 4'b1111;
			AFTERNOON: wshade = 4'b1100;
			EVENING: wshade = ulight;
			NIGHT: wshade = 4'b0000;
			default: wshade = 4'b0000;
		endcase
	/* write your code here */

endmodule
