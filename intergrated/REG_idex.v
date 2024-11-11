`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:34 11/07/2024 
// Design Name: 
// Module Name:    REG_idex 
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
module REG_idex(Wreg,Reg2reg,Wmem,Op,Aluc,Aluqb,Pc,R1,R2,I,Rd,FwdA,FwdB,
					En,Clk,Clrn,
					eWreg,eReg2reg,eWmem,eOp,eAluc,eAluqb,ePc,eR1,eR2,eI,eRd,eFwdA,eFwdB
    );
	 input [5:0]Op;
	 input Wreg,Aluqb,Wmem,Reg2reg; 
	 input [1:0]Aluc,FwdA,FwdB;
	 input En,Clk,Clrn;
	 input [31:0]Pc,R1,R2,I;
	 input [4:0]Rd;
	 output [5:0]eOp;
	 output eWreg,eAluqb,eWmem,eReg2reg; 
	 output [1:0]eAluc,eFwdA,eFwdB;
	 output [31:0]ePc,eR1,eR2,eI;
	 output [4:0]eRd;
	 D_FFEC a1(Wreg,Clk,En,Clrn,eWreg);
	 D_FFEC a2(Aluqb,Clk,En,Clrn,eAluqb);
	 D_FFEC a3(Wmem,Clk,En,Clrn,eWmem);
	 D_FFEC a4(Reg2reg,Clk,En,Clrn,eReg2reg);
	 D_FFEC2 a5(FwdA,Clk,En,Clrn,eFwdA);
	 D_FFEC2 a6(FwdB,Clk,En,Clrn,eFwdB);
	 D_FFEC2 b(Aluc,Clk,En,Clrn,eAluc);
	 D_FFEC5 c(Rd,Clk,En,Clrn,eRd);
 	 D_FFEC6 d(Op,Clk,En,Clrn,eOp);
	 D_FFEC32 e0(Pc,Clk,En,Clrn,ePc);
	 D_FFEC32 e1(R1,Clk,En,Clrn,eR1);
	 D_FFEC32 e2(R2,Clk,En,Clrn,eR2);
	 D_FFEC32 e3(I,Clk,En,Clrn,eI);



endmodule
