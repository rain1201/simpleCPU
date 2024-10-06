`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:05 10/01/2024 
// Design Name: 
// Module Name:    DEC5T32 
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
module DEC5T32(I,En,Y
    );
	 input[4:0] I;
	 input En;
	 output[31:0] Y;
	 wire[4:0] nI;
    not (nI[0], I[0]);
    not (nI[1], I[1]);
    not (nI[2], I[2]);
    not (nI[3], I[3]);
    not (nI[4], I[4]);
    and (Y[0], En, nI[4], nI[3], nI[2], nI[1], nI[0]);
    and (Y[1], En, nI[4], nI[3], nI[2], nI[1],  I[0]);
    and (Y[2], En, nI[4], nI[3], nI[2],  I[1], nI[0]);
    and (Y[3], En, nI[4], nI[3], nI[2],  I[1],  I[0]);
    and (Y[4], En, nI[4], nI[3],  I[2], nI[1], nI[0]);
    and (Y[5], En, nI[4], nI[3],  I[2], nI[1],  I[0]);
    and (Y[6], En, nI[4], nI[3],  I[2],  I[1], nI[0]);
    and (Y[7], En, nI[4], nI[3],  I[2],  I[1],  I[0]);
    and (Y[8], En, nI[4],  I[3], nI[2], nI[1], nI[0]);
    and (Y[9], En, nI[4],  I[3], nI[2], nI[1],  I[0]);
    and (Y[10], En, nI[4],  I[3], nI[2],  I[1], nI[0]);
    and (Y[11], En, nI[4],  I[3], nI[2],  I[1],  I[0]);
    and (Y[12], En, nI[4],  I[3],  I[2], nI[1], nI[0]);
    and (Y[13], En, nI[4],  I[3],  I[2], nI[1],  I[0]);
    and (Y[14], En, nI[4],  I[3],  I[2],  I[1], nI[0]);
    and (Y[15], En, nI[4],  I[3],  I[2],  I[1],  I[0]);
    and (Y[16], En,  I[4], nI[3], nI[2], nI[1], nI[0]);
    and (Y[17], En,  I[4], nI[3], nI[2], nI[1],  I[0]);
    and (Y[18], En,  I[4], nI[3], nI[2],  I[1], nI[0]);
    and (Y[19], En,  I[4], nI[3], nI[2],  I[1],  I[0]);
    and (Y[20], En,  I[4], nI[3],  I[2], nI[1], nI[0]);
    and (Y[21], En,  I[4], nI[3],  I[2], nI[1],  I[0]);
    and (Y[22], En,  I[4], nI[3],  I[2],  I[1], nI[0]);
    and (Y[23], En,  I[4], nI[3],  I[2],  I[1],  I[0]);
    and (Y[24], En,  I[4],  I[3], nI[2], nI[1], nI[0]);
    and (Y[25], En,  I[4],  I[3], nI[2], nI[1],  I[0]);
    and (Y[26], En,  I[4],  I[3], nI[2],  I[1], nI[0]);
    and (Y[27], En,  I[4],  I[3], nI[2],  I[1],  I[0]);
	 and (Y[28], En,  I[4],  I[3],  I[2], nI[1], nI[0]);
	 and (Y[29], En,  I[4],  I[3],  I[2], nI[1],  I[0]);
	 and (Y[30], En,  I[4],  I[3],  I[2],  I[1], nI[0]);
	 and (Y[31], En,  I[4],  I[3],  I[2],  I[1],  I[0]);
endmodule
