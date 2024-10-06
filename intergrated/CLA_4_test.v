`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:01:09 10/02/2024
// Design Name:   CLA_4
// Module Name:   /home/song/intergrated/CLA_4_test.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_4_test;

	// Inputs
	reg [3:0] X;
	reg [3:0] Y;
	reg Cin;

	// Outputs
	wire [3:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	CLA_4 uut (
		.X(X), 
		.Y(Y), 
		.Cin(Cin), 
		.S(S), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		Y = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		X = 4'b0000; Y = 4'b0000; Cin = 0;
        #10;
        
        // Test Case 1
        X = 4'b0001; Y = 4'b0001; Cin = 0;
        #10;
        
        // Test Case 2
        X = 4'b0010; Y = 4'b0011; Cin = 0;
        #10;
        
        // Test Case 3
        X = 4'b0101; Y = 4'b0011; Cin = 1;
        #10;
        
        // Test Case 4
        X = 4'b1111; Y = 4'b1111; Cin = 1;
        #10;

        // Test Case 5
        X = 4'b1010; Y = 4'b0101; Cin = 0;
        #10;

        // Test Case 6
        X = 4'b0011; Y = 4'b1100; Cin = 1;
        #10;

        // Test Case 7
        X = 4'b0000; Y = 4'b1111; Cin = 0;
        #10;

	end
      
endmodule

