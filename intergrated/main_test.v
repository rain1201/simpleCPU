`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:08:04 10/28/2024
// Design Name:   main
// Module Name:   /home/song/simpleCPU/intergrated/main_test.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_test;

	// Inputs
	reg clk;
	reg pcrst;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk(clk), 
		.pcrst(pcrst)
	);
	// Clock period definitions
   localparam PERIOD = 50; // 20 ns clock period

    // Clock generation
    always begin
        clk = 1'b0;
        #(PERIOD/2);
        clk = 1'b1;
        #(PERIOD/2);
    end

	initial begin
		// Initialize Inputs
		clk = 0;
		pcrst = 0;

		// Wait 100 ns for global reset to finish
		#100;
      pcrst=1'b0;
		// Add stimulus here
		#100;
		pcrst=1'b1;
	end
      
endmodule

