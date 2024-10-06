`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:37:53 10/01/2024
// Design Name:   MUX2X32D
// Module Name:   /home/song/intergrated/MUX2X32D_text.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX2X32D
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX2X32D_text;

	// Inputs
	reg [31:0] A0;
	reg [31:0] A1;
	reg S;

	// Outputs
	wire [31:0] Y;

	// Instantiate the Unit Under Test (UUT)
	MUX2X32D uut (
		.A0(A0), 
		.A1(A1), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A0 = 0;
		A1 = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;A0 = 32'b1111_1111_1111_1111_1111_1111_1111_1111; // 0xFFFFFFFF
		A1 = 32'b0000_0000_0000_0000_0000_0000_0000_0000; // 0x00000000
		S = 1'b0;
		#100;
		S = 1'b1;
		#100;
    #100;A0 = 32'b0101_0101_0101_0101_0101_0101_0101_0101; // 0x55555555
    A1 = 32'b1010_1010_1010_1010_1010_1010_1010_1010; // 0xAAAAAAAA
    S = 1'b0;
	 #100;
    S = 1'b1;

	end
      
endmodule

