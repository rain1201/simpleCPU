`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:28:06 10/25/2024 
// Design Name: 
// Module Name:    CONUNIT 
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
module CONUNIT(Op,Func,Z,Regrt,Se,Wreg,Aluqb,Aluc,Wmem,Pcsrc,Reg2reg
    );
	 input [5:0]Op,Func;
	 input Z;
	 output Regrt,Se,Wreg,Aluqb,Wmem,Reg2reg; 
	 output [1:0]Pcsrc;
	 output [1:0]Aluc;
	 wire[5:0] nOp,nFunc;
	 wire nZ;
	 wire Rtype,add,sub,andd,orr,addi,andi,ori,lw,sw,beq,bne,j,pct1,pct2;
	 nor ir(Rtype,Op[5],Op[4],Op[3],Op[2],Op[1],Op[0]);
	 not o0(nOp[0],Op[0]);
	 not o1(nOp[1],Op[1]);
	 not o2(nOp[2],Op[2]);
	 not o3(nOp[3],Op[3]);
	 not o4(nOp[4],Op[4]);
	 not o5(nOp[5],Op[5]);
	 not f0(nFunc[0],Func[0]);
	 not f1(nFunc[1],Func[1]);
	 not f2(nFunc[2],Func[2]);
	 not f3(nFunc[3],Func[3]);
	 not f4(nFunc[4],Func[4]);
	 not f5(nFunc[5],Func[5]);
	 not zn(nZ,Z);
	 and r0(add,Rtype,Func[5],nFunc[4],nFunc[3],nFunc[2],nFunc[1],nFunc[0]);
	 and r1(sub,Rtype,Func[5],nFunc[4],nFunc[3],nFunc[2],Func[1],nFunc[0]);
	 and r2(andd,Rtype,Func[5],nFunc[4],nFunc[3],Func[2],nFunc[1],nFunc[0]);
	 and r3(orr,Rtype,Func[5],nFunc[4],nFunc[3],Func[2],nFunc[1],Func[0]);
	 and i0(addi,nOp[5],nOp[4],Op[3],nOp[2],nOp[1],nOp[0]);
	 and i1(andi,nOp[5],nOp[4],Op[3],Op[2],nOp[1],nOp[0]);
	 and i2(ori,nOp[5],nOp[4],Op[3],Op[2],nOp[1],Op[0]);
	 and i3(lw,Op[5],nOp[4],nOp[3],nOp[2],Op[1],Op[0]);
	 and i4(sw,Op[5],nOp[4],Op[3],nOp[2],Op[1],Op[0]);
	 and i5(beq,nOp[5],nOp[4],nOp[3],Op[2],nOp[1],nOp[0]);
	 and i6(bne,nOp[5],nOp[4],nOp[3],Op[2],nOp[1],Op[0]);
	 and ij(j,nOp[5],nOp[4],nOp[3],nOp[2],Op[1],nOp[0]);
	 or t0(Regrt,addi,andi,ori,lw,sw,beq,bne,j);
	 or t1(Se,addi,lw,sw,beq,bne);
	 or t2(Wreg,add,sub,andd,orr,addi,andi,ori,lw);
	 or t3(Aluqb,add,sub,andd,orr,beq,bne,j);
	 or t4(Aluc[1],andd,orr,andi,ori);
	 or t5(Aluc[0],sub,orr,ori,beq,bne);
	 or t6(Reg2reg,add,sub,andd,orr,addi,andi,ori,sw,beq,bne,j);
	 assign Wmem=sw;
	 assign Pcsrc[0]=j;
	 and p1(pct1,beq,Z);
	 and p2(pct2,bne,nZ);
	 or p(Pcsrc[1],pct1,pct2,j);
endmodule
