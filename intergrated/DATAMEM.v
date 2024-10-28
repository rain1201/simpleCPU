`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:49 10/24/2024 
// Design Name: 
// Module Name:    DATAMEM 
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
module DATAMEM(Addr,Din,Clk,We,Dout
    );
	 input [31:0]Addr,Din;
	 input Clk,We;
	 output [31:0]Dout;
	 reg[31:0] Ram[31:0];
	 assign Dout=Ram[Addr[6:2]];
	 always @(posedge Clk)begin
		if(We)Ram[Addr[6:2]]<=Din;
	 end
	 integer i;
	 initial begin
		for(i=0;i<32;i=i+1)Ram[i]=0;
		end
		/*	 wire[31:0] en;
	 wire[31:0] Q31,Q30,Q29,Q28,Q27,Q26,Q25,Q24,Q23,Q22,Q21,Q20,
		Q19,Q18,Q17,Q16,Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0;
	 DEC5T32 d(Wr,We,en);
	 REG32 r(D,en,Clk,Clrn,Q31,Q30,Q29,Q28,Q27,Q26,Q25,Q24,Q23,Q22,Q21,Q20,Q19,Q18,Q17,
		Q16,Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0);
	 MUX32X32 m0(Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,
					Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31,Addr[6:2],Dout);
	 */
endmodule
