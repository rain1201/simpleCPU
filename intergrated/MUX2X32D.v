`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:22:01 10/01/2024 
// Design Name: 
// Module Name:    MUX2X32D 
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
module MUX2X32D(A0,A1,S,Y
    );
	input[31:0] A0,A1;
	input S;
	output[31:0] Y;
	//assign Y=32'b0;
	wire[63:0] tmp;
	wire NS;
	not i0(NS,S);
		and i1(tmp[0],A0[0],NS);
	and i2(tmp[1],A1[0],S);
	or i3(Y[0],tmp[0],tmp[1]);
	and i4(tmp[2],A0[1],NS);
	and i5(tmp[3],A1[1],S);
	or i6(Y[1],tmp[2],tmp[3]);
	and i7(tmp[4],A0[2],NS);
	and i8(tmp[5],A1[2],S);
	or i9(Y[2],tmp[4],tmp[5]);
	and i10(tmp[6],A0[3],NS);
	and i11(tmp[7],A1[3],S);
	or i12(Y[3],tmp[6],tmp[7]);
	and i13(tmp[8],A0[4],NS);
	and i14(tmp[9],A1[4],S);
	or i15(Y[4],tmp[8],tmp[9]);
	and i16(tmp[10],A0[5],NS);
	and i17(tmp[11],A1[5],S);
	or i18(Y[5],tmp[10],tmp[11]);
	and i19(tmp[12],A0[6],NS);
	and i20(tmp[13],A1[6],S);
	or i21(Y[6],tmp[12],tmp[13]);
	and i22(tmp[14],A0[7],NS);
	and i23(tmp[15],A1[7],S);
	or i24(Y[7],tmp[14],tmp[15]);
	and i25(tmp[16],A0[8],NS);
	and i26(tmp[17],A1[8],S);
	or i27(Y[8],tmp[16],tmp[17]);
	and i28(tmp[18],A0[9],NS);
	and i29(tmp[19],A1[9],S);
	or i30(Y[9],tmp[18],tmp[19]);
	and i31(tmp[20],A0[10],NS);
	and i32(tmp[21],A1[10],S);
	or i33(Y[10],tmp[20],tmp[21]);
	and i34(tmp[22],A0[11],NS);
	and i35(tmp[23],A1[11],S);
	or i36(Y[11],tmp[22],tmp[23]);
	and i37(tmp[24],A0[12],NS);
	and i38(tmp[25],A1[12],S);
	or i39(Y[12],tmp[24],tmp[25]);
	and i40(tmp[26],A0[13],NS);
	and i41(tmp[27],A1[13],S);
	or i42(Y[13],tmp[26],tmp[27]);
	and i43(tmp[28],A0[14],NS);
	and i44(tmp[29],A1[14],S);
	or i45(Y[14],tmp[28],tmp[29]);
	and i46(tmp[30],A0[15],NS);
	and i47(tmp[31],A1[15],S);
	or i48(Y[15],tmp[30],tmp[31]);
	and i49(tmp[32],A0[16],NS);
	and i50(tmp[33],A1[16],S);
	or i51(Y[16],tmp[32],tmp[33]);
	and i52(tmp[34],A0[17],NS);
	and i53(tmp[35],A1[17],S);
	or i54(Y[17],tmp[34],tmp[35]);
	and i55(tmp[36],A0[18],NS);
	and i56(tmp[37],A1[18],S);
	or i57(Y[18],tmp[36],tmp[37]);
	and i58(tmp[38],A0[19],NS);
	and i59(tmp[39],A1[19],S);
	or i60(Y[19],tmp[38],tmp[39]);
	and i61(tmp[40],A0[20],NS);
	and i62(tmp[41],A1[20],S);
	or i63(Y[20],tmp[40],tmp[41]);
	and i64(tmp[42],A0[21],NS);
	and i65(tmp[43],A1[21],S);
	or i66(Y[21],tmp[42],tmp[43]);
	and i67(tmp[44],A0[22],NS);
	and i68(tmp[45],A1[22],S);
	or i69(Y[22],tmp[44],tmp[45]);
	and i70(tmp[46],A0[23],NS);
	and i71(tmp[47],A1[23],S);
	or i72(Y[23],tmp[46],tmp[47]);
	and i73(tmp[48],A0[24],NS);
	and i74(tmp[49],A1[24],S);
	or i75(Y[24],tmp[48],tmp[49]);
	and i76(tmp[50],A0[25],NS);
	and i77(tmp[51],A1[25],S);
	or i78(Y[25],tmp[50],tmp[51]);
	and i79(tmp[52],A0[26],NS);
	and i80(tmp[53],A1[26],S);
	or i81(Y[26],tmp[52],tmp[53]);
	and i82(tmp[54],A0[27],NS);
	and i83(tmp[55],A1[27],S);
	or i84(Y[27],tmp[54],tmp[55]);
	and i85(tmp[56],A0[28],NS);
	and i86(tmp[57],A1[28],S);
	or i87(Y[28],tmp[56],tmp[57]);
	and i88(tmp[58],A0[29],NS);
	and i89(tmp[59],A1[29],S);
	or i90(Y[29],tmp[58],tmp[59]);
	and i91(tmp[60],A0[30],NS);
	and i92(tmp[61],A1[30],S);
	or i93(Y[30],tmp[60],tmp[61]);
	and i94(tmp[62],A0[31],NS);
	and i95(tmp[63],A1[31],S);
	or i96(Y[31],tmp[62],tmp[63]);

endmodule
