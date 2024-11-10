`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:59 11/03/2024 
// Design Name: 
// Module Name:    REG_ifid 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module REG_ifid(D0,D1,En,Clk,Clrn,Q0,Q1,
	 //stall,condep
    );
	 input [31:0]D0,D1;
    input En,Clk,Clrn;
	 //input stall,condep;
	 output [31:0]Q0,Q1;
	 D_FFEC32 i0(D0,Clk,En,Clrn,Q0,);
	 D_FFEC32 i1(D1,Clk,En,Clrn,Q1,);
endmodule
