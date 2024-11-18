`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:47 11/13/2024 
// Design Name: 
// Module Name:    CONUNITPN 
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
module CONUNITPN(Op,Func,Z,Regrt,Se,Wreg,Aluqb,Aluc,Wmem,Pcsrc,Reg2reg,Reglui,
					Rs,Rt,
					FwdA,FwdB,
					eReg2reg,eWreg,mWreg,mRd,eRd,eOp,STALL,
					Condep,
					sArith,sRight,AnsSel
    );
	 input [5:0]Op,Func,eOp;
	 input Z;
	 input eReg2reg,eWreg,mWreg;
	 input [4:0]mRd,eRd;
	 input [4:0]Rs,Rt;
	 output Regrt,Se,Wreg,Aluqb,Wmem,Reg2reg,Reglui; 
	 output [1:0]Pcsrc;
	 output [1:0]Aluc;
	 output reg [1:0]FwdA,FwdB;
	 output reg STALL,Condep;
	 
	 output sArith,sRight;
	 output[1:0] AnsSel;
	 
	 wire[5:0] nOp,nFunc;
	 wire nZ;
	 wire Rtype,add,sub,andd,orr,addi,andi,ori,lw,sw,beq,bne,lui,j,sll,srl,sra,pct1,pct2;
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
	 
	 and r4(sll,Rtype,nFunc[5],nFunc[4],nFunc[3],nFunc[2],nFunc[1],nFunc[0]);
	 and r5(srl,Rtype,nFunc[5],nFunc[4],nFunc[3],nFunc[2],Func[1],nFunc[0]);
	 and r6(sra,Rtype,nFunc[5],nFunc[4],nFunc[3],nFunc[2],Func[1],Func[0]);
	 
	 and i0(addi,nOp[5],nOp[4],Op[3],nOp[2],nOp[1],nOp[0]);
	 and i1(andi,nOp[5],nOp[4],Op[3],Op[2],nOp[1],nOp[0]);
	 and i2(ori,nOp[5],nOp[4],Op[3],Op[2],nOp[1],Op[0]);
	 and i3(lw,Op[5],nOp[4],nOp[3],nOp[2],Op[1],Op[0]);
	 and i4(sw,Op[5],nOp[4],Op[3],nOp[2],Op[1],Op[0]);
	 and i5(beq,nOp[5],nOp[4],nOp[3],Op[2],nOp[1],nOp[0]);
	 and i6(bne,nOp[5],nOp[4],nOp[3],Op[2],nOp[1],Op[0]);
	 
	 and i7(lui,nOp[5],nOp[4],Op[3],Op[2],Op[1],Op[0]);
	 
	 and ij(j,nOp[5],nOp[4],nOp[3],nOp[2],Op[1],nOp[0]);
	 or t0(Regrt,addi,andi,ori,lw,sw,beq,bne,lui,j);
	 or t1(Se,addi,lw,sw,beq,bne);
	 or t2(Wreg,add,sub,andd,orr,sll,srl,sra,addi,andi,ori,lw,lui);
	 or t3(Aluqb,add,sub,andd,orr,beq,bne,j);
	 or t4(Aluc[1],andd,orr,andi,ori);
	 or t5(Aluc[0],sub,orr,ori,beq,bne);
	 or t6(Reg2reg,add,sub,andd,orr,sll,srl,sra,addi,andi,ori,sw,beq,bne,lui,j);
	 assign Reglui=lui;
	 assign Wmem=sw;
	 assign Pcsrc[0]=j;
	 and p1(pct1,beq,Z);
	 and p2(pct2,bne,nZ);
	 or p(Pcsrc[1],pct1,pct2,j);
	 
	 or a0(AnsSel[0],sll,srl,sra);
	 assign AnsSel[1]=lui;
	 
	 always @(eRd,mRd,eWreg,mWreg,Rs,Rt,addi,andi,ori,sw,beq,bne,eReg2reg,eOp,Z)begin
		FwdA=2'b00;
		if((Rs==eRd)&(eWreg==1'b1)&(eRd!=5'b0))begin
			FwdA=2'b10;
		end else begin
			if((Rs==mRd)&(mRd!=5'b0)&(mWreg==1'b1))begin
				FwdA=2'b01;
			end
		end
		FwdB=2'b00;
		if((Rt==eRd)&(eWreg==1'b1)&(eRd!=5'b0))begin//&(addi|andi|ori|sw|beq|bne)
			FwdB=2'b10;
		end else begin
			if((Rt==mRd)&(mWreg==1'b1)&(mRd!=5'b0))begin//&(add|and|or|sw|beq|bne)
				FwdB=2'b01;
			end
		end
		if(((Rs==eRd)|(Rt==eRd))&(eReg2reg==1'b0)&(eRd!=0)&(eWreg==1'b1))begin
			STALL=1'b0;
		end else begin
			STALL=1'b1;
		end
		if(((eOp==6'b000100)&(Z==1'b1))|((eOp==6'b000101)&(Z==1'b0))|(eOp==6'b000010))begin
			Condep=1'b0;
		end else begin
			Condep=1'b1;
		end
	 end
endmodule

