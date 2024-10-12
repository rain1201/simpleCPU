`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:51 10/12/2024 
// Design Name: 
// Module Name:    MUX16X32 
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
module MUX16X32(Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,S,Y
    );
	 input[3:0] S;
	 input[31:0] Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15;
	 output[31:0] Y;
	 wire[31:0] t1,t2,t3,t0;
	 MUX4X32 i0(Q0,Q1,Q2,Q3,S[1:0],t0);
	 MUX4X32 i1(Q4,Q5,Q6,Q7,S[1:0],t1);
	 MUX4X32 i2(Q8,Q9,Q10,Q11,S[1:0],t2);
	 MUX4X32 i3(Q12,Q13,Q14,Q15,S[1:0],t3);
	 MUX4X32 i4(t0,t1,t2,t3,S[3:2],Y);


endmodule
