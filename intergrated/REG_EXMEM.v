`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:37 11/07/2024 
// Design Name: 
// Module Name:    REG_EXMEM 
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
module REG_EXMEM(Wreg,Reg2reg,Wmem,Op,Pc,Z,R,S,Rd,
						En,Clk,Clrn,
						mWreg,mReg2reg,mWmem,mOp,mPc,mZ,mR,mS,mRd
    );
	 input [5:0]Op;
	 input Wreg,Wmem,Reg2reg; 
	 input En,Clk,Clrn,Z;
	 input [31:0]Pc,R,S;
	 input [4:0]Rd;
	 output [5:0]mOp;
	 output mWreg,mWmem,mReg2reg; 
	 output mZ;
	 output [31:0]mPc,mR,mS;
	 output [4:0]mRd;
	 D_FFEC a0(Wreg,Clk,En,Clrn,mWreg);
	 D_FFEC a1(Wmem,Clk,En,Clrn,mWmem);
	 D_FFEC a2(Reg2reg,Clk,En,Clrn,mReg2reg);
	 D_FFEC a3(Z,Clk,En,Clrn,mZ);
	 D_FFEC5 c(Rd,Clk,En,Clrn,mRd);
 	 D_FFEC6 d(Op,Clk,En,Clrn,mOp);
	 D_FFEC32 e0(Pc,Clk,En,Clrn,mPc);
	 D_FFEC32 e1(R,Clk,En,Clrn,mR);
	 D_FFEC32 e2(S,Clk,En,Clrn,mS);


endmodule
