`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:22:47 10/12/2024
// Design Name:   D_LATCH
// Module Name:   /home/song/simpleCPU/intergrated/D_LATCH_test.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_LATCH
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_LATCH_test;

	// Inputs
	reg D;
	reg En;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	D_LATCH uut (
		.D(D), 
		.En(En), 
		.Q(Q), 
		.Qn(Qn)
	);
	localparam PERIOD = 20; 
	initial begin
		// Initialize Inputs
		D = 0;
		En = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        // Test case 1: Enable off, D changes
        #PERIOD D = 1;
        #PERIOD D = 0;

        // Test case 2: Enable on, D changes
        #PERIOD En = 1;
        #PERIOD D = 1;
        #PERIOD D = 0;
        #PERIOD D = 1;

        // Test case 3: Enable off, D changes
        #PERIOD En = 0;
        #PERIOD D = 0;
        #PERIOD D = 1;

        // Test case 4: Enable on, D changes
        #PERIOD En = 1;
        #PERIOD D = 0;
        #PERIOD D = 1;

        // End simulation
        #PERIOD;
	end
      
endmodule

