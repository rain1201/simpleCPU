`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:54 11/10/2024 
// Design Name: 
// Module Name:    REG_memwb 
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
module REG_memwb(Wreg,Reg2reg,D,C,Rd,
						En,Clk,Clrn,
						wWreg,wReg2reg,wD,wC,wRd		
    );
	 input Wreg,Reg2reg,En,Clk,Clrn;
	 input[31:0]D,C;
	 input [4:0]Rd;
	 output wWreg,wReg2reg;
	 output[31:0]wD,wC;
	 output [4:0]wRd;
	 D_FFEC a0(Wreg,Clk,En,Clrn,wWreg);
	 D_FFEC a2(Reg2reg,Clk,En,Clrn,wReg2reg);
	 D_FFEC5 c(Rd,Clk,En,Clrn,wRd);
	 D_FFEC32 e0(D,Clk,En,Clrn,wD);
	 D_FFEC32 e1(C,Clk,En,Clrn,wC);

endmodule
