`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:58:04 10/01/2024
// Design Name:   DEC2T4
// Module Name:   /home/song/intergrated/DEC2T4_test.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DEC2T4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DEC2T4_test;

	// Inputs
	reg I0;
	reg I1;
	reg En;

	// Outputs
	wire Y0;
	wire Y1;
	wire Y2;
	wire Y3;

	// Instantiate the Unit Under Test (UUT)
	DEC2T4 uut (
		.I0(I0), 
		.I1(I1), 
		.En(En), 
		.Y0(Y0), 
		.Y1(Y1), 
		.Y2(Y2), 
		.Y3(Y3)
	);

	initial begin
		// Initialize Inputs
		I0 = 0;
		I1 = 0;
		En = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

        #100 {I0, I1} = 2'b00;
        #100 {I0, I1} = 2'b01;
        #100 {I0, I1} = 2'b10;
        #100 {I0, I1} = 2'b11;

        #100 En = 0;
        #100 {I0, I1} = 2'b00;
        #100 {I0, I1} = 2'b11;
	end
      
endmodule

