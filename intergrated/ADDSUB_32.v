`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:45:48 10/11/2024 
// Design Name: 
// Module Name:    ADDSUB_32 
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
module ADDSUB_32(X,Y,Sub,S
    );
	 input[31:0] X,Y;
	 input Sub;
	 output[31:0] S;
	 wire[31:0] Yt;
	 wire[8:0] cin;
	 assign cin[0]=Sub;
	 xor i0(Yt[0],Y[0],Sub);
	 xor i1(Yt[1],Y[1],Sub);
	 xor i2(Yt[2],Y[2],Sub);
	 xor i3(Yt[3],Y[3],Sub);
	 xor i4(Yt[4],Y[4],Sub);
	 xor i5(Yt[5],Y[5],Sub);
	 xor i6(Yt[6],Y[6],Sub);
	 xor i7(Yt[7],Y[7],Sub);
	 xor i8(Yt[8],Y[8],Sub);
	 xor i9(Yt[9],Y[9],Sub);
	 xor i10(Yt[10],Y[10],Sub);
	 xor i11(Yt[11],Y[11],Sub);
	 xor i12(Yt[12],Y[12],Sub);
	 xor i13(Yt[13],Y[13],Sub);
	 xor i14(Yt[14],Y[14],Sub);
	 xor i15(Yt[15],Y[15],Sub);
	 xor i16(Yt[16],Y[16],Sub);
	 xor i17(Yt[17],Y[17],Sub);
	 xor i18(Yt[18],Y[18],Sub);
	 xor i19(Yt[19],Y[19],Sub);
	 xor i20(Yt[20],Y[20],Sub);
	 xor i21(Yt[21],Y[21],Sub);
	 xor i22(Yt[22],Y[22],Sub);
	 xor i23(Yt[23],Y[23],Sub);
	 xor i24(Yt[24],Y[24],Sub);
	 xor i25(Yt[25],Y[25],Sub);
	 xor i26(Yt[26],Y[26],Sub);
	 xor i27(Yt[27],Y[27],Sub);
	 xor i28(Yt[28],Y[28],Sub);
	 xor i29(Yt[29],Y[29],Sub);
	 xor i30(Yt[30],Y[30],Sub);
	 xor i31(Yt[31],Y[31],Sub);
	 CLA_4 a1(X[3:0],Y[3:0],cin[0],S[3:0],cin[1]);
	 CLA_4 a2(X[7:4],Y[7:4],cin[1],S[7:4],cin[2]);
	 CLA_4 a3(X[11:8],Y[11:8],cin[2],S[11:8],cin[3]);
	 CLA_4 a4(X[15:12],Y[15:12],cin[3],S[15:12],cin[4]);
	 CLA_4 a5(X[19:16],Y[19:16],cin[4],S[19:16],cin[5]);
	 CLA_4 a6(X[23:20],Y[23:20],cin[5],S[23:20],cin[6]);
	 CLA_4 a7(X[27:24],Y[27:24],cin[6],S[27:24],cin[7]);
	 CLA_4 a8(X[31:28],Y[31:28],cin[7],S[31:28],cin[8]);


endmodule
