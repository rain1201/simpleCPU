`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:36:46 10/01/2024
// Design Name:   DEC5T32
// Module Name:   /home/song/intergrated/DEC5T32_test.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DEC5T32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DEC5T32_test;

	// Inputs
	reg [4:0] I;
	reg En;

	// Outputs
	wire [31:0] Y;

	// Instantiate the Unit Under Test (UUT)
	DEC5T32 uut (
		.I(I), 
		.En(En), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		I = 0;
		En = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		        En = 0;
        I = 5'b00000;
        #10;
        
        En = 1;
        #10;
        
        I = 5'b00001;
        #10;
        
        I = 5'b00010;
        #10;
        
        I = 5'b00011;
        #10;
        
        I = 5'b00100; 
        #10;
        
        I = 5'b00101;
        #10;
        
        I = 5'b00110;
        #10;
        
        I = 5'b00111;
        #10;
        
        I = 5'b01000;
        #10;
        
        I = 5'b01001;
        #10;
        
        I = 5'b01010;
        #10;
        
        I = 5'b01011;
        #10;
        
        I = 5'b01100;
        #10;
        
        I = 5'b01101;
        #10;
        
        I = 5'b01110;
        #10;
        
        I = 5'b01111;
        #10;
        
        I = 5'b10000;
        #10;
        
        I = 5'b10001;  
        #10;
        
        I = 5'b10010;
        #10;
        
        I = 5'b10011;
        #10;
        
        I = 5'b10100;
        #10;
        
        I = 5'b10101;
        #10;
        
        I = 5'b10110;
        #10;
        
        I = 5'b10111;
        #10;
        
        I = 5'b11000;
        #10;
        
        I = 5'b11001;
        #10;
        
        I = 5'b11010;  
        #10;
        
        I = 5'b11011;
        #10;
        
        I = 5'b11100;
        #10;
        
        I = 5'b11101;
        #10;
        
        I = 5'b11110;
        #10;
        
        I = 5'b11111;
        #10;
        
        En = 0;
        #10;

	end
      
endmodule

