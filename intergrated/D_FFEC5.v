`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:28:05 11/07/2024 
// Design Name: 
// Module Name:    D_FFEC5 
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
module D_FFEC5(D,Clk,En,Clrn,Q,Qn
    );
	 input[4:0] D;
	 input Clk,En,Clrn;
	 output[4:0] Q,Qn;
	 D_FFEC i0(D[0],Clk,En,Clrn,Q[0],Qn[0]);
	 D_FFEC i1(D[1],Clk,En,Clrn,Q[1],Qn[1]);
	 D_FFEC i2(D[2],Clk,En,Clrn,Q[2],Qn[2]);
	 D_FFEC i3(D[3],Clk,En,Clrn,Q[3],Qn[3]);
	 D_FFEC i4(D[4],Clk,En,Clrn,Q[4],Qn[4]);
	

endmodule
