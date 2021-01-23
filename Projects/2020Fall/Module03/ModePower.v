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
---  Module Name: Power Mode (Conting Ones)
---  Description: Module3: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module ModePower (
	input  [7:0] chs_conf  , 		// degree [temprature] 
	output reg [3:0] chs_power , 	// power  [cooler/heater] 
	output reg   chs_mode    	  	// model  [heat=1/cool=0]
);

	/* write your code here */
	always @(chs_conf)
	  begin
			chs_power = chs_conf[0] + chs_conf[1] + chs_conf[2] + chs_conf[3] + chs_conf[4] + chs_conf[5] + chs_conf[6] + chs_conf[7];
			if (chs_power[0] == 0) 		// chs_power is Even
				begin
					chs_mode = 0;
				end
			else								// chs_power is Odd
				begin
					chs_mode = 1;
				end
	  end
	
	/* write your code here */

endmodule
