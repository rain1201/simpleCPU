`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:28 10/17/2024 
// Design Name: 
// Module Name:    ALU 
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
module ALU(X,Y,Aluc,R,Z
    );
	 input[31:0] X,Y;
	 input[1:0]Aluc;
	 output[31:0] R;
	 output Z;
	 wire[31:0] ast,at,ot,act;
	 ADDSUB_32 as(X,Y,Aluc[0],ast);
	 and ia0(at[0],X[0],Y[0]);
	 and ia1(at[1],X[1],Y[1]);
	 and ia2(at[2],X[2],Y[2]);
	 and ia3(at[3],X[3],Y[3]);
	 and ia4(at[4],X[4],Y[4]);
	 and ia5(at[5],X[5],Y[5]);
	 and ia6(at[6],X[6],Y[6]);
	 and ia7(at[7],X[7],Y[7]);
	 and ia8(at[8],X[8],Y[8]);
	 and ia9(at[9],X[9],Y[9]);
	 and ia10(at[10],X[10],Y[10]);
	 and ia11(at[11],X[11],Y[11]);
	 and ia12(at[12],X[12],Y[12]);
	 and ia13(at[13],X[13],Y[13]);
	 and ia14(at[14],X[14],Y[14]);
	 and ia15(at[15],X[15],Y[15]);
	 and ia16(at[16],X[16],Y[16]);
	 and ia17(at[17],X[17],Y[17]);
	 and ia18(at[18],X[18],Y[18]);
	 and ia19(at[19],X[19],Y[19]);
	 and ia20(at[20],X[20],Y[20]);
	 and ia21(at[21],X[21],Y[21]);
	 and ia22(at[22],X[22],Y[22]);
	 and ia23(at[23],X[23],Y[23]);
	 and ia24(at[24],X[24],Y[24]);
	 and ia25(at[25],X[25],Y[25]);
	 and ia26(at[26],X[26],Y[26]);
	 and ia27(at[27],X[27],Y[27]);
	 and ia28(at[28],X[28],Y[28]);
	 and ia29(at[29],X[29],Y[29]);
	 and ia30(at[30],X[30],Y[30]);
	 and ia31(at[31],X[31],Y[31]);
	 or i0(ot[0],X[0],Y[0]);
	 or i1(ot[1],X[1],Y[1]);
	 or i2(ot[2],X[2],Y[2]);
	 or i3(ot[3],X[3],Y[3]);
	 or i4(ot[4],X[4],Y[4]);
	 or i5(ot[5],X[5],Y[5]);
	 or i6(ot[6],X[6],Y[6]);
	 or i7(ot[7],X[7],Y[7]);
	 or i8(ot[8],X[8],Y[8]);
	 or i9(ot[9],X[9],Y[9]);
	 or i10(ot[10],X[10],Y[10]);
	 or i11(ot[11],X[11],Y[11]);
	 or i12(ot[12],X[12],Y[12]);
	 or i13(ot[13],X[13],Y[13]);
	 or i14(ot[14],X[14],Y[14]);
	 or i15(ot[15],X[15],Y[15]);
	 or i16(ot[16],X[16],Y[16]);
	 or i17(ot[17],X[17],Y[17]);
	 or i18(ot[18],X[18],Y[18]);
	 or i19(ot[19],X[19],Y[19]);
	 or i20(ot[20],X[20],Y[20]);
	 or i21(ot[21],X[21],Y[21]);
	 or i22(ot[22],X[22],Y[22]);
	 or i23(ot[23],X[23],Y[23]);
	 or i24(ot[24],X[24],Y[24]);
	 or i25(ot[25],X[25],Y[25]);
	 or i26(ot[26],X[26],Y[26]);
	 or i27(ot[27],X[27],Y[27]);
	 or i28(ot[28],X[28],Y[28]);
	 or i29(ot[29],X[29],Y[29]);
	 or i30(ot[30],X[30],Y[30]);
	 or i31(ot[31],X[31],Y[31]);
	 MUX2X32 c1(at,ot,Aluc[0],act);
	 MUX2X32 c2(ast,act,Aluc[1],R);
	 nor iz(Z,R[0],R[1],R[2],R[3],R[4],R[5],R[6],R[7],R[8],R[9],R[10],R[11],R[12],R[13],R[14]
		,R[15],R[16],R[17],R[18],R[19],R[20],R[21],R[22],R[23],R[24],R[25],R[26],R[27],R[28],
		R[29],R[30],R[31]);


endmodule
