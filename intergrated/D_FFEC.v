`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:23:08 10/12/2024 
// Design Name: 
// Module Name:    D_FFEC 
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
module D_FFEC(D,Clk,En,Clrn,Q,Qn
    );
	 input D,Clk,En,Clrn;
	 output Q,Qn;
	 wire Dn,Enn;
	 wire t1,t2,mux,td;
	 not i1(Enn,En);
	 and i2(t1,D,En);
	 and i3(t2,Q,Enn);
	 or i4(mux,t1,t2);
	 and i5(td,Clrn,mux);
	 D_FF i(td,Clk,Q,Qn);
endmodule
