`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:13:37 10/01/2024
// Design Name:   MUX2X5
// Module Name:   /home/song/intergrated/MUX2X5_test.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX2X5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX2X5_test;

	// Inputs
	reg [4:0] A0;
	reg [4:0] A1;
	reg S;

	// Outputs
	wire [4:0] Y;

	// Instantiate the Unit Under Test (UUT)
	MUX2X5 uut (
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
				A0=5'b11111;
		A1=5'b00000;
		S=1;
		#100;
		A0=5'b10101;
		A1=5'b01010;
		S=0;
		#100;
		S=1;
		#100;

	end
      
endmodule

