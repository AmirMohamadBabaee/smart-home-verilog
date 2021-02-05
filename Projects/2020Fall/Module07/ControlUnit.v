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
---  Module Name: Control Unit
---  Description: Module7:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

`define AAA 3'b001 // IDLE
`define BBB 3'b010 // ACTIVE
`define CCC 3'b011 // REQUEST
`define DDD 3'b100 // STORE
`define EEE 3'b101 // TRAP
`define FFF 3'b111 // FFF

`define STATE_IDLE    3'b001
`define STATE_ACTIVE  3'b010
`define STATE_REQUEST 3'b011
`define STATE_STORE   3'b100
`define STATE_TRAP    3'b101
`define STATE_OTHERS  3'b111


module ControlUnit (
	input         arst      , // async  reset
	input         clk       , // clock  posedge
	input         request   , // request input (asynch) 
	input         confirm   , // confirm input 
	input  [ 1:0] password  , // password from user
	input  [ 1:0] syskey    , // key  from memoty unit
	input  [34:0] configin  , // conf from user
	output [34:0] configout , // conf to memory unit
	output reg    write_en  , // conf mem write enable
	output [2:0]  dbg_state   // current state (debug)
	);

	/* write your code here */
	reg [2:0] Prstate, Nxtstate;
	wire fsm_request;
	wire dataIsPass;
	
	assign fsm_request=(~arst&request);
	assign dbg_state = Prstate;
	assign configout=configin;
	PassCheckUnit password_checker(.pass(password), .key(syskey), .equal(dataIsPass));
	
	always@(posedge clk)
		Prstate=Nxtstate;
		
		
	always@(Prstate or fsm_request or dataIsPass or confirm)
		if(~fsm_request)
			begin
				Nxtstate=`STATE_IDLE;
				Prstate =`STATE_IDLE;
			end
		else
			case (Prstate)
				`STATE_IDLE: if(fsm_request) Nxtstate=`STATE_ACTIVE; else Nxtstate=`STATE_IDLE;
				`STATE_ACTIVE: if(confirm) Nxtstate = (dataIsPass?`STATE_REQUEST : `STATE_TRAP); else Nxtstate=`STATE_ACTIVE;
				`STATE_TRAP:Nxtstate=`STATE_TRAP;
				`STATE_REQUEST: if(confirm) Nxtstate=`STATE_STORE; else Nxtstate=`STATE_REQUEST;
				`STATE_STORE: Nxtstate=`STATE_STORE;
				`STATE_OTHERS: Nxtstate=`STATE_IDLE;
				default: Nxtstate=`STATE_IDLE;
			endcase
			
		always@(Prstate or fsm_request or confirm)
			case (Prstate)
				`STATE_IDLE:
					begin
						write_en <= 1'b0;
					end
				`STATE_ACTIVE:
					begin
						write_en <= 1'b0;
					end
				`STATE_TRAP:
					begin
						write_en <= 1'b0;
					end
				`STATE_REQUEST:
					begin
						write_en <= 1'b0;
					end
				`STATE_STORE:
					if(confirm & fsm_request)
						write_en <= 1'b1;
					else
						write_en <= 1'b0;
				`STATE_OTHERS:
					begin
						write_en <= 1'b0;
					end
				default:
					begin
						write_en <= 1'b0;
					end
			endcase
	/* write your code here */

endmodule
