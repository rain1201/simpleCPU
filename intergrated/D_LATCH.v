`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:53 10/12/2024 
// Design Name: 
// Module Name:    D_LATCH 
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
module D_LATCH(D,En,Q,Qn
    );
	 input D,En;
	 output Q,Qn;
	 wire r,s,Dn;
	 not i0(Dn,D);
	 nand i1(r,En,D);
	 nand i2(s,En,Dn);
	 nand i3(Q,Qn,r);
	 nand i4(Qn,Q,s);
endmodule
