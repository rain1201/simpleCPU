`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:45 10/12/2024 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(D,Clk,Q,Qn
    );
	 input D,Clk;
	 output Q,Qn;
	 wire t1,t2,Clkn;
	 not i0(Clkn,Clk);
	 D_LATCH i1(D,Clkn,t1,t2);
	 D_LATCH i2(t1,Clk,Q,Qn);

endmodule
