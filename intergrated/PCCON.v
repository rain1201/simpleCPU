`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:46:06 11/13/2024 
// Design Name: 
// Module Name:    PCCON 
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
module PCCON(Op,eOp,eZ,
				Pcsrc,Condep,ejr
    );
	 input[5:0] Op,eOp;
	 input eZ,ejr;
	 output reg [1:0] Pcsrc;
	 output reg Condep;
	 always @(Op,eOp,eZ,ejr)begin
		if(((eOp==6'b000100)&(eZ==1'b1))|((eOp==6'b000101)&(eZ==1'b0))|(ejr==1))begin
			Condep=1'b0;
			Pcsrc=2'b10;
		end else begin
			Condep=1'b1;
			if(Op==6'b000010)begin
				Pcsrc=2'b11;
			end else begin
				Pcsrc=2'b00;
			end
		end
	 end
endmodule