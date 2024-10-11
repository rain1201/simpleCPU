`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:09:50 10/11/2024
// Design Name:   ADDSUB_32
// Module Name:   /home/song/simpleCPU/intergrated/ADDSUB32_test.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ADDSUB_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ADDSUB32_test;

	// Inputs
	reg [31:0] X;
	reg [31:0] Y;
	reg Sub;

	// Outputs
	wire [31:0] S;

	// Instantiate the Unit Under Test (UUT)
	ADDSUB_32 uut (
		.X(X), 
		.Y(Y), 
		.Sub(Sub), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		Y = 0;
		Sub = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		        // Test case 1: Addition X + Y
        #10 X = 32'h00000010;  // 16
        Y = 32'h00000020;     // 32
        Sub = 0;              // Addition
        
        // Test case 2: Subtraction X - Y
        #10 X = 32'h00000020;  // 32
        Y = 32'h00000010;     // 16
        Sub = 1;              // Subtraction
        
        // Test case 3: Boundary condition test
        #10 X = 32'hFFFFFFFF; // -1 if signed
        Y = 32'h00000001;     // 1
        Sub = 1;              // Subtraction
        
        // Test case 4: More condition tests
        #10 X = 32'h7FFFFFFF; // Max positive integer
        Y = 32'h00000001;
        Sub = 0;              // Addition

        // Test case 5: Zero subtraction
        #10 X = 32'h00000000;
        Y = 32'h00000000;
        Sub = 1;              // Subtraction
        
        // Test case 6: Large number subtraction
        #10 X = 32'h80000000; // Large negative if signed
        Y = 32'h00000001;
        Sub = 1;              // Subtraction

        // Test case 7: Overflow condition
        #10 X = 32'h7FFFFFFF;
        Y = 32'hFFFFFFFF;
        Sub = 0;              // Addition

        // Finish test
        #10;

	end
      
endmodule

