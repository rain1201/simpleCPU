`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:29 10/12/2024 
// Design Name: 
// Module Name:    D_FFEC32 
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
module D_FFEC32(D,Clk,En,Clrn,Q,Qn
    );
	 input[31:0] D;
	 input Clk,En,Clrn;
	 output[31:0] Q,Qn;
	 D_FFEC i0(D[0],Clk,En,Clrn,Q[0],Qn[0]);
	 D_FFEC i1(D[1],Clk,En,Clrn,Q[1],Qn[1]);
	 D_FFEC i2(D[2],Clk,En,Clrn,Q[2],Qn[2]);
	 D_FFEC i3(D[3],Clk,En,Clrn,Q[3],Qn[3]);
	 D_FFEC i4(D[4],Clk,En,Clrn,Q[4],Qn[4]);
	 D_FFEC i5(D[5],Clk,En,Clrn,Q[5],Qn[5]);
	 D_FFEC i6(D[6],Clk,En,Clrn,Q[6],Qn[6]);
	 D_FFEC i7(D[7],Clk,En,Clrn,Q[7],Qn[7]);
	 D_FFEC i8(D[8],Clk,En,Clrn,Q[8],Qn[8]);
	 D_FFEC i9(D[9],Clk,En,Clrn,Q[9],Qn[9]);
	 D_FFEC i10(D[10],Clk,En,Clrn,Q[10],Qn[10]);
	 D_FFEC i11(D[11],Clk,En,Clrn,Q[11],Qn[11]);
	 D_FFEC i12(D[12],Clk,En,Clrn,Q[12],Qn[12]);
	 D_FFEC i13(D[13],Clk,En,Clrn,Q[13],Qn[13]);
	 D_FFEC i14(D[14],Clk,En,Clrn,Q[14],Qn[14]);
	 D_FFEC i15(D[15],Clk,En,Clrn,Q[15],Qn[15]);
	 D_FFEC i16(D[16],Clk,En,Clrn,Q[16],Qn[16]);
	 D_FFEC i17(D[17],Clk,En,Clrn,Q[17],Qn[17]);
	 D_FFEC i18(D[18],Clk,En,Clrn,Q[18],Qn[18]);
	 D_FFEC i19(D[19],Clk,En,Clrn,Q[19],Qn[19]);
	 D_FFEC i20(D[20],Clk,En,Clrn,Q[20],Qn[20]);
	 D_FFEC i21(D[21],Clk,En,Clrn,Q[21],Qn[21]);
	 D_FFEC i22(D[22],Clk,En,Clrn,Q[22],Qn[22]);
	 D_FFEC i23(D[23],Clk,En,Clrn,Q[23],Qn[23]);
	 D_FFEC i24(D[24],Clk,En,Clrn,Q[24],Qn[24]);
	 D_FFEC i25(D[25],Clk,En,Clrn,Q[25],Qn[25]);
	 D_FFEC i26(D[26],Clk,En,Clrn,Q[26],Qn[26]);
	 D_FFEC i27(D[27],Clk,En,Clrn,Q[27],Qn[27]);
	 D_FFEC i28(D[28],Clk,En,Clrn,Q[28],Qn[28]);
	 D_FFEC i29(D[29],Clk,En,Clrn,Q[29],Qn[29]);
	 D_FFEC i30(D[30],Clk,En,Clrn,Q[30],Qn[30]);
	 D_FFEC i31(D[31],Clk,En,Clrn,Q[31],Qn[31]);
endmodule
