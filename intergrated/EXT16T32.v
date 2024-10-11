`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:06 10/11/2024 
// Design Name: 
// Module Name:    EXT16T32 
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
module EXT16T32(X,Se,Y
    );
	input[15:0] X;
	input Se;
	output[31:0] Y;
	wire pad;
	and i(pad,X[15],Se);
	assign Y={{16{pad}},X};

endmodule
