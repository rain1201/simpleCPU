`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:49 10/01/2024 
// Design Name: 
// Module Name:    DEC2T4 
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
module DEC2T4(I0,I1,En,Y0,Y1,Y2,Y3
    );
	 input I0,I1,En;
	 output Y0,Y1,Y2,Y3;
	 not in1(I0n,I0);
	 not in2(I1n,I1);
	 and i0(Y0,I0n,I1n,En);
	 and i1(Y1,I0,I1n,En);
	 and i2(Y2,I0n,I1,En);
	 and i3(Y3,I0,I1,En);

endmodule
