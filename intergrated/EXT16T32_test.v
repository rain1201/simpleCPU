`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:12:57 10/11/2024
// Design Name:   EXT16T32
// Module Name:   /home/song/simpleCPU/intergrated/EXT16T32_test.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EXT16T32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module EXT16T32_test;

	// Inputs
	reg [15:0] X;
	reg Se;

	// Outputs
	wire [31:0] Y;

	// Instantiate the Unit Under Test (UUT)
	EXT16T32 uut (
		.X(X), 
		.Se(Se), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		Se = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Test case 1: Zero extension
        #10 X = 16'h8003;  // Example 16-bit value with MSB = 1
        Se = 0;            // Zero extension
        
        // Test case 2: Sign extension
        #10 X = 16'h8003;
        Se = 1;            // Sign extension
        
        // Test case 3: More extension tests
        #10 X = 16'h7FFF;  // Maximum positive value for 16 bits
        Se = 0;            // Zero extension

        // Test case 4: More sign extensions
        #10 X = 16'h7FFF;
        Se = 1;            // Sign extension
        
        // Test case 5: Test with zero
        #10 X = 16'h0000;
        Se = 0;            // Zero extension

        #10 X = 16'h0000;
        Se = 1;            // Sign extension

        // Finish test
        #10;

	end
      
endmodule

