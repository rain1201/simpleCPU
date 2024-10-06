`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:41 10/01/2024 
// Design Name: 
// Module Name:    MUX2X5 
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
module MUX2X5(A0,A1,S,Y
    );
	input[4:0] A0,A1;
	input S;
	output[4:0] Y;
	reg[4:0] T;
	always @(*) begin
	case(S)
		1'b0:T=A0;
		1'b1:T=A1;
	endcase
	end
	assign Y=T;
endmodule

