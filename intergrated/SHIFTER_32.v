`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:44:41 10/03/2024 
// Design Name: 
// Module Name:    SHIFTER_32 
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
module SHIFTER_32(X, Sa, Arith, Right, Sh
    );
	 input[31:0] X;
	 input[4:0] Sa;
	 input Arith,Right;
	 output[31:0] Sh;
	 wire pad;
	 and i12(pad,X[31],Right,Arith);
	 wire[31:0] t16l,t16r,t16,t8c,t8l,t8r,t8,t4c,t4l,t4r,t4,t2c,t2l,t2r,t2,t1c,t1l,t1r,t1;
	 assign t16l[31:0]={X[15:0],{16{pad}}};
	 assign t16r={{16{pad}},X[31:16]};
	 MUX2X32 i1(t16l,t16r,Right,t16);
	 MUX2X32 i2(t16,X,Sa[4],t8c);
	 assign t8l[31:0]={t8c[23:0],{8{pad}}};
	 assign t8r={{8{pad}},t8c[31:8]};
	 MUX2X32 i3(t8l,t8r,Right,t8);
	 MUX2X32 i4(t8,t8c,Sa[3],t4c);
	 assign t4l[31:0]={t4c[27:0],{4{pad}}};
	 assign t4r={{4{pad}},t4c[31:4]};
	 MUX2X32 i5(t4l,t4r,Right,t4);
	 MUX2X32 i6(t4,t4c,Sa[2],t2c);
	 assign t2l[31:0]={t2c[29:0],{2{pad}}};
	 assign t2r={{2{pad}},t2c[31:2]};
	 MUX2X32 i7(t2l,t2r,Right,t2);
	 MUX2X32 i8(t2,t2c,Sa[1],t1c);
	 assign t1l[31:0]={t1c[30:0],{1{pad}}};
	 assign t1r={{1{pad}},t1c[31:1]};
	 MUX2X32 i9(t1l,t1r,Right,t1);
	 MUX2X32 i10(t1,t1c,Sa[0],Sh);
endmodule
