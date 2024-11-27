`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:13 10/01/2024 
// Design Name: 
// Module Name:    main 
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
module main(clk,pcrst
    );
	 input clk,pcrst;
	 wire[31:0] pcnt,npcnt,npc0,npc2,npc3,inst,d,qa,qb,aluy,extimme,alur,dout,d1,shift_result;
	 wire[5:0] op,func;
	 wire[4:0] rs,rt,rd,sa,wr;
	 wire[15:0] immediate;
	 wire[25:0] addr;
	 wire Regrt,Se,Wreg,Aluqb,Wmem,z,Reglui; 
	 wire [1:0]Pcsrc,Aluc;
	 wire [1:0]Reg2reg;
	 wire sArith, sRight; 
	 
	 PC pc(clk,pcrst,1'b1,npcnt,pcnt);
	 INSTMEM im(pcnt,inst);
	 assign func=inst[5:0];
	 assign op=inst[31:26];
	 assign rs=inst[25:21];
	 assign rt=inst[20:16];
	 assign rd=inst[15:11];
	 assign sa=inst[10:6];
	 assign immediate=inst[15:0];
	 assign addr=inst[25:0];
	 CONUNIT cu(op,func,z,Regrt,Se,Wreg,Aluqb,Aluc,Wmem,Pcsrc,Reg2reg,Reglui,sArith, sRight);
	 MUX2X5 wrs(rd,rt,Regrt,wr);
	 REGFILE rf(rs,rt,d,wr,Wreg,clk,pcrst,qa,qb);
	 EXT16T32 ey(immediate,Se,extimme);
	 MUX2X32 aluys(extimme,qb,Aluqb,aluy);
	 ALU malu(qa,aluy,Aluc,alur,z);
	 ALU pcalu1(pcnt,32'b100,2'b0,npc0);
	 ALU pcalu2(npc0,{{extimme[29:0]},{2{1'b0}}},2'b0,npc2);
	 DATAMEM dm(alur,qb,clk,Wmem,dout);
	 SHIFTER_32 shifter(qb, sa, sArith, sRight, shift_result);
	 
	 MUX4X32 regds(dout, alur, shift_result, , Reg2reg, d1);
	 MUX2X32 regl(d1,{{immediate},{16{1'b0}}},Reglui,d);
	 MUX4X32 pcs(npc0,qa,npc2,{{npc0[31:28]},addr,{2{1'b0}}},Pcsrc,npcnt);
	 
endmodule
