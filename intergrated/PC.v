`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:19:19 10/24/2024 
// Design Name: 
// Module Name:    PC 
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
module PC(Clk,Reset,En,R,Address
    );
	 input Clk,Reset,En;
	 input [31:0]R; 
	 output [31:0]Address;
	 D_FFEC32 i(R,Clk,En,Reset,Address,);
endmodule
