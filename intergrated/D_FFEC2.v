`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:59:13 11/07/2024 
// Design Name: 
// Module Name:    D_FFEC2 
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
module D_FFEC2(D,Clk,En,Clrn,Q,Qn
    );
	 input[1:0] D;
	 input Clk,En,Clrn;
	 output[1:0] Q,Qn;
	 D_FFEC i0(D[0],Clk,En,Clrn,Q[0],Qn[0]);
	 D_FFEC i1(D[1],Clk,En,Clrn,Q[1],Qn[1]);




endmodule
