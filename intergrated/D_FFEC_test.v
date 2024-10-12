`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:37:17 10/12/2024
// Design Name:   D_FFEC
// Module Name:   /home/song/simpleCPU/intergrated/D_FFEC_test.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FFEC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FFEC_test;

	// Inputs
	reg D;
	reg Clk;
	reg En;
	reg Clrn;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	D_FFEC uut (
		.D(D), 
		.Clk(Clk), 
		.En(En), 
		.Clrn(Clrn), 
		.Q(Q), 
		.Qn(Qn)
	);
    // Clock period definitions
    localparam PERIOD = 20; // 20 ns clock period

    // Clock generation
    always begin
        Clk = 1'b0;
        #(PERIOD/2);
        Clk = 1'b1;
        #(PERIOD/2);
    end
	initial begin
		// Initialize Inputs
		D = 0;
		Clk = 0;
		En = 0;
		Clrn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        // Initialize inputs
        D = 0;
        En = 0;
        Clrn = 1;

        // Wait 100 ns for global reset
        #100;

        // Test case 1: Enable off, D changes
        #PERIOD D = 1;
        #PERIOD D = 0;

        // Test case 2: Enable on, D changes
        #PERIOD En = 1;
        #PERIOD D = 1;
        #PERIOD D = 0;
        #PERIOD D = 1;

        // Test case 3: Clear signal
        #PERIOD Clrn = 0; // Clear Q
        #PERIOD Clrn = 1; // Release clear

        // Test case 4: Enable off, D changes
        #PERIOD En = 0;
        #PERIOD D = 0;
        #PERIOD D = 1;

        // Test case 5: Enable on, D changes with clear
        #PERIOD En = 1;
        #PERIOD D = 1;
        #PERIOD Clrn = 0; // Clear Q
        #PERIOD Clrn = 1; // Release clear
        #PERIOD D = 0;

        // Test case 6: Rapid changes with enable
        #PERIOD En = 1;
        #5 D = 0; // Change D in the middle of the clock cycle
        #5 D = 1;
        #10 D = 0; // Change D just before clock edge
	end
      
endmodule

