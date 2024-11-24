`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:05:29 11/13/2024
// Design Name:   mainPN
// Module Name:   /home/song/simpleCPU/intergrated/mainPN_test.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mainPN
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mainPN_test;

	// Inputs
	reg clk;
	reg pcrst;

	// Instantiate the Unit Under Test (UUT)
	mainPN uut (
		.clk(clk), 
		.pcrst(pcrst)
	);

	   localparam PERIOD = 20; // 20 ns clock period

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

