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
---  Module Name: Active Lights
---  Description: Module4: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module ActiveLamps (
	input  [3:0] tcode  , // time code    [table2 time code   ]
	input  [3:0] ulight , // user light   [light degree mode  ]
    input  [3:0] length     , // room length  [square room lenght ]
	output reg [3:0] active_lights  // number of active light
);

	/* write your code here */
	parameter MORNING 		= 4'b0001, 
					AFTERNOON 	= 4'b0010, 
					EVENING 		= 4'b0100, 
					NIGHT 		= 4'b1000, 
					OTHER 		= 4'b0000;
	
	always @(tcode or ulight)
		case (tcode)
			MORNING: active_lights = 4'b0000;
			AFTERNOON: active_lights = 4'b0000;
			EVENING: active_lights = {2'b00, length[3:2]};
			NIGHT: active_lights = ulight;
			default: active_lights = 4'b0000;
		endcase
			
	/* write your code here */

endmodule
