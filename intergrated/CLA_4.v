`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:34 10/02/2024 
// Design Name: 
// Module Name:    CLA_4 
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
module CLA_4(X,Y,Cin,S,Cout
    );
	 input[3:0] X,Y;
	 input Cin;
	 output[3:0] S;
	 output Cout;
	 wire[3:0] G,P,C;
	 wire tmp1;
	 wire[1:0] tmp2;
	 wire[2:0] tmp3;
	 wire[3:0] tmp4;
	 assign C[0]=Cin;
	 and i1(G[0],X[0],Y[0]);
	 and i2(G[1],X[1],Y[1]);
	 and i3(G[2],X[2],Y[2]);
	 and i4(G[3],X[3],Y[3]);
	 or i5(P[0],X[0],Y[0]);
	 or i6(P[1],X[1],Y[1]);
	 or i7(P[2],X[2],Y[2]);
	 or i8(P[3],X[3],Y[3]);
	 and i9(tmp1,P[0],C[0]);
	 and i10(tmp2[0],P[1],G[0]);
	 and i11(tmp2[1],P[1],P[0],C[0]);
	 and i12(tmp3[0],P[2],G[1]);
	 and i13(tmp3[1],P[2],P[1],G[0]);
	 and i14(tmp3[2],P[2],P[1],P[0],C[0]);
	 and i15(tmp4[0],P[3],G[2]);
	 and i16(tmp4[1],P[3],P[2],G[1]);
	 and i17(tmp4[2],P[3],P[2],P[1],G[0]);
	 and i18(tmp4[3],P[3],P[2],P[1],P[0],C[0]);
	 or i19(C[1],G[0],tmp1);
	 or i20(C[2],G[1],tmp2[0],tmp2[1]);
	 or i21(C[3],G[2],tmp3[0],tmp3[1],tmp3[2]);
	 or i22(Cout,G[3],tmp4[0],tmp4[1],tmp4[2],tmp4[3]);
	 xor i23(S[0],X[0],Y[0],C[0]);
	 xor i24(S[1],X[1],Y[1],C[1]);
	 xor i25(S[2],X[2],Y[2],C[2]);
	 xor i26(S[3],X[3],Y[3],C[3]);
	 
	 

endmodule
