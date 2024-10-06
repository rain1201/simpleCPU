`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:59:15 10/01/2024
// Design Name:   MUX4X32
// Module Name:   /home/song/intergrated/Mux4X32.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX4X32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux4X32;

	// Inputs
	reg [31:0] A0;
	reg [31:0] A1;
	reg [31:0] A2;
	reg [31:0] A3;
	reg [1:0] S;

	// Outputs
	wire [31:0] Y;

	// Instantiate the Unit Under Test (UUT)
	MUX4X32 uut (
		.A0(A0), 
		.A1(A1), 
		.A2(A2), 
		.A3(A3), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A0 = 0;
		A1 = 0;
		A2 = 0;
		A3 = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				A0 = 32'h12345678;
        A1 = 32'h87654321;
        A2 = 32'hABCDEF01;
        A3 = 32'h10101010;
        S = 2'b00;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Test case 1: S = 00
        S = 2'b00;
        #100;
        // Test case 2: S = 01  
        S = 2'b01;
        #100;
        // Test case 3: S = 10
        S = 2'b10;
        #100;
        // Test case 4: S = 11
        S = 2'b11;
        #100;
        // Test case 5: Boundary condition, S = 2'b11
        A0 = 32'hFFFFFFFF;
        A1 = 32'h00000000;
        A2 = 32'h55555555;
        A3 = 32'hAAAAAAAA;
        S = 2'b11;
        #100;

	end
      
endmodule

