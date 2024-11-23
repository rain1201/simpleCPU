`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:57 11/13/2024 
// Design Name: 
// Module Name:    mainPN 
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
module mainPN(clk,pcrst
    );
	 input clk,pcrst;
	 wire nclk;
	 not nc(nclk,clk);
	 wire[31:0] dpcnt,finst,fpcnt,npcnt,npc0,npc2,npc3,inst,d,qa,qb,aluy,extimme,alur,dout;
	 wire[5:0] op,func;
	 wire[4:0] rs,rt,rd,sa,wr;
	 wire[15:0] immediate;
	 wire[25:0] addr;
	 wire Regrt,Se,Wreg,Aluqb,Wmem,Reg2reg,z,Reglui; 
	 wire [1:0]Pcsrc,Aluc,oPcsrc;
	 wire [31:0]dinst,mR,mPc;
	 wire STALL,Condep,oCondep;
	 wire [5:0]eOp,mOp;
	 wire [31:0]ePc,eR1,eR2,eI;
	 
	 wire sArith,sRight,esArith,esRight,jr,ejr;
	 wire[1:0] AnsSel,eAnsSel;
	 wire[4:0] eSa;
	 wire[31:0] tePc;
	 
	 PCCON pcc(finst[31:26],eOp,z,Pcsrc,Condep,ejr);
	 ALU pcalu1(fpcnt,32'b100,2'b0,npc0);
	 MUX4X32 pcs(npc0,0,tePc,{{npc0[31:28]},finst[25:0],{2{1'b0}}},Pcsrc,npcnt);
	 PC pc(clk,pcrst,STALL|~pcrst,npcnt,fpcnt);
	 INSTMEM im(fpcnt,finst);
	 REG_ifid rii(npc0,finst,STALL|~pcrst,clk,pcrst&Condep,dpcnt,dinst);//en clk clrn
	 assign func=dinst[5:0];
	 assign op=dinst[31:26];
	 assign rs=dinst[25:21];
	 assign rt=dinst[20:16];
	 assign rd=dinst[15:11];
	 assign sa=dinst[10:6];
	 assign immediate=dinst[15:0];
	 assign addr=dinst[25:0];
	 wire eReg2reg,eWreg,mWreg;
	 wire [4:0]mRd,eRd;
	 wire [1:0]FwdA,FwdB;
	 wire[4:0] wRd;
	 CONUNITPN cu(op,func,z,Regrt,Se,Wreg,Aluqb,Aluc,Wmem,oPcsrc,Reg2reg,Reglui,
					rs,rt,
					FwdA,FwdB,
					eReg2reg,eWreg,mWreg,mRd,eRd,eOp,
					STALL,oCondep,
					sArith,sRight,AnsSel,jr
	 );
	 MUX2X5 wrs(rd,rt,Regrt,wr);
	 REGFILE rf(rs,rt,d,wRd,wWreg,nclk,pcrst,qa,qb);
	 EXT16T32 ey(immediate,Se,extimme);
	 ALU pcalu2(dpcnt,{{extimme[29:0]},{2{1'b0}}},2'b0,npc2);
	 wire eWmem,eAluqb;
	 wire [1:0]eAluc,eFwdA,eFwdB;
	 REG_idex rie(Wreg,Reg2reg,Wmem,op,Aluc,Aluqb,npc2,qa,qb,extimme,wr,FwdA,FwdB,
					1'b1,clk,pcrst&STALL&Condep,
					eWreg,eReg2reg,eWmem,eOp,eAluc,eAluqb,ePc,eR1,eR2,eI,eRd,eFwdA,eFwdB,
					sa,sArith,sRight,AnsSel,eSa,esArith,esRight,eAnsSel,jr,ejr
    );
	 wire[31:0] exx,eyy,sftr,fans;
	 MUX4X32 xs(eR1,d,mR,,eFwdA,exx);
	 MUX4X32 ys(eR2,d,mR,,eFwdB,eyy);
	 MUX2X32 aluys(eI,eyy,eAluqb,aluy);
	 MUX2X32 stePc(ePc,exx,ejr,tePc);
	 ALU malu(exx,aluy,eAluc,alur,z);
	 
	 SHIFTER_32 sft(eyy,eSa, esArith, esRight,sftr);
	 MUX4X32 anss(alur,sftr,{{eI[15:0]},{16{1'b0}}},,eAnsSel,fans);
	 
	 wire mZ;
	 wire [31:0]mS;
	 REG_EXMEM rem(eWreg,eReg2reg,eWmem,eOp,npc2,z,fans,eyy,eRd,
						1'b1,clk,1'b1,
						mWreg,mReg2reg,mWmem,mOp,mPc,mZ,mR,mS,mRd
    );
	 DATAMEM dm(mR,mS,clk,mWmem,dout);
	 wire wReg2reg;
	 wire[31:0]wD,wC;
	 REG_memwb rmw(mWreg,mReg2reg,mR,dout,mRd,
						1'b1,clk,1'b1,
						wWreg,wReg2reg,wD,wC,wRd		
    );
	 MUX2X32 regds(wC,wD,wReg2reg,d);
	 //MUX2X32 regl(d1,{{immediate},{16{1'b0}}},Reglui,d);
endmodule

