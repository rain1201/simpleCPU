`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:37:05 10/03/2024 
// Design Name: 
// Module Name:    MUX4X32D 
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
module MUX4X32D(A0,A1,A2,A3,S,Y
    );
	input[31:0] A0,A1,A2,A3;
	input[1:0] S;
	output[31:0] Y;
	wire[31:0] tmp1,tmp2;
	MUX2X32D i1(A0,A1,S[0],tmp1);
	MUX2X32D i2(A2,A3,S[0],tmp2);
	MUX2X32D i3(tmp1,tmp2,S[1],Y);
endmodule
