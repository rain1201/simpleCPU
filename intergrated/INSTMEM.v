`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:42 10/24/2024 
// Design Name: 
// Module Name:    INSTMEM 
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
module INSTMEM(Addr,Inst
    );
	 input [31:0]Addr;
output [31:0]Inst;
wire [31:0]Rom[31:0];

assign Rom[5'h00]=32'b001101_00000_00001_00000_00000_001010;//ori $1,$0,10___$1=10 
assign Rom[5'h01]=32'b001000_00000_00010_00000_00000_000110;//addi $2,$0,6___$2=6
assign Rom[5'h02]=32'b000000_00001_00010_00011_00000_100100;//and $3,$1,$2___$3=2
assign Rom[5'h03]=32'b000000_00001_00010_00100_00000_100101;//or $4,$1,$2___$4=14
assign Rom[5'h04]=32'b000000_00100_00010_00101_00000_100010;//sub $5,$4,$2___$5=8
assign Rom[5'h05]=32'b001100_00001_00110_00000_00000_001011;//andi $6,$1,1___$6=10
assign Rom[5'h06]=32'b001111_00000_01011_10000_11111_000001;//lui $11,103701
assign Rom[5'h07]=32'b000010_00000_00000_00000_00000_001100;//j 01100____0C
assign Rom[5'h08]=32'hXXXXXXXX;
assign Rom[5'h09]=32'hXXXXXXXX;
assign Rom[5'h0A]=32'hXXXXXXXX; 
assign Rom[5'h0B]=32'hXXXXXXXX;
assign Rom[5'h0C]=32'b000100_00001_00010_00000_00000_000100;//beq $1,$2,4___0D
assign Rom[5'h0D]=32'b000101_00001_00011_00000_00000_000100;// bne $1 $3,4___12
assign Rom[5'h0E]=32'hXXXXXXXX;
assign Rom[5'h0F]=32'hXXXXXXXX;
assign Rom[5'h10]=32'hXXXXXXXX;
assign Rom[5'h11]=32'hXXXXXXXX;
assign Rom[5'h12]=32'b000000_00101_00110_00111_00000_100000;//add $7,$5,$6___$7=19
assign Rom[5'h13]=32'b101011_00111_00110_00000_00000_001010;//sw $6,10($7)___memory[$7+10]=$6=10
assign Rom[5'h14]=32'b100011_00111_01000_00000_00000_001010;//lw $8,10($7)___$8=memory[$7+10]=10
assign Rom[5'h15]=32'b001000_01000_01001_1111111111110000;//addi $9 ,$8,-16.___$9=-6
assign Rom[5'h16]=32'b000000_00000_01001_01010_01010_000000;//sll $10,$9,10___$10=-6144
assign Rom[5'h17]=32'b000000_00000_01001_01010_01010_000010;//srl $10,$9,10___$10=4194303
assign Rom[5'h18]=32'b000000_00000_01001_01010_01010_000011;//sra $10,$9,10___$10=-1
assign Rom[5'h19]=32'b000000_00000_01011_01011_10000_000000;//sll $11,$11,16___$11=0
assign Rom[5'h1A]=32'b000000_01011_00000_00000_00000_001000;//jr $11___0
assign Rom[5'h1B]=32'b000010_00000_00000_00000_00000_001100;//j 01100____0C
assign Rom[5'h1C]=32'hXXXXXXXX;
assign Rom[5'h1D]=32'hXXXXXXXX;
assign Rom[5'h1E]=32'hXXXXXXXX;
assign Rom[5'h1F]=32'hXXXXXXXX;
assign Inst=Rom[Addr[6:2]];

endmodule
