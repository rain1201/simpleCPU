`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:58:21 10/03/2024
// Design Name:   SHIFTER_32
// Module Name:   /home/song/intergrated/SHIFT_32_test.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SHIFTER_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SHIFT_32_test;

	// Inputs
	reg [31:0] X;
	reg [4:0] Sa;
	reg Arith;
	reg Right;

	// Outputs
	wire [31:0] Sh;

	// Instantiate the Unit Under Test (UUT)
	SHIFTER_32 uut (
		.X(X), 
		.Sa(Sa), 
		.Arith(Arith), 
		.Right(Right), 
		.Sh(Sh)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		Sa = 0;
		Arith = 0;
		Right = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

    X = 32'h12345678; Sa = 4; Arith = 0; Right = 0;
    #10;

    X = 32'h00000000; Sa = 4; Arith = 0; Right = 0;
    #10;


    X = 32'hFFFFFFFF; Sa = 4; Arith = 0; Right = 0;
    #10;


    X = 32'h12345678; Sa = 32; Arith = 0; Right = 0;
    #10;


    X = 32'h12345678; Sa = -4; Arith = 0; Right = 0;
    #10;


    X = 32'h80000000; Sa = 1; Arith = 0; Right = 0;
    #10;


    X = 32'h7FFFFFFF; Sa = 1; Arith = 0; Right = 0;
    #10; 

    X = 32'hAAAAAAAA; Sa = 16; Arith = 0; Right = 0;
    #10;

    X = 32'h55555555; Sa = 16; Arith = 0; Right = 0;
    #10;


    X = 32'hDEADBEEF; Sa = 8; Arith = 0; Right = 0;
    #10; 

    X = 32'h80000000; Sa = 31; Arith = 0; Right = 0;
    #10; 


    X = 32'hFFFFFFFF; Sa = 31; Arith = 0; Right = 0;
    #10;


    X = 32'h12345678; Sa = 0; Arith = 0; Right = 0;
    #10; 

    X = 32'h12345678; Sa = 1; Arith = 1; Right = 0;
    #10; 


    X = 32'h80000000; Sa = 1; Arith = 1; Right = 0;
    #10;

	end
      
endmodule

