`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:55 10/12/2024 
// Design Name: 
// Module Name:    MUX32X32 
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
module MUX32X32(Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,
					Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,
					Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,
					Q29,Q30,Q31,S,Y
    );
	 input[31:0] Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,
					Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31;
	 input[4:0] S;
	 output[31:0] Y;
	 wire[31:0] t0,t1;
	 MUX16X32 i0(Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,S[3:0],t0);
	 MUX16X32 i1(Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31,S[3:0],t1);
	 MUX2X32 i2(t0,t1,S[4],Y);

endmodule
