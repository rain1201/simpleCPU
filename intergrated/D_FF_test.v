`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:29:07 10/12/2024
// Design Name:   D_FF
// Module Name:   /home/song/simpleCPU/intergrated/D_FF_test.v
// Project Name:  intergrated
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FF_test;

	// Inputs
	reg D;
	reg Clk;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	D_FF uut (
		.D(D), 
		.Clk(Clk), 
		.Q(Q), 
		.Qn(Qn)
	);
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

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		 // Test case 1: D changes, observe Q on clock edge
        #PERIOD D = 1;
        #PERIOD D = 0;
        #PERIOD D = 1;
        #PERIOD D = 0;

        // Test case 2: Hold D for multiple clock cycles
        #PERIOD D = 1;
        #PERIOD;
        #PERIOD;
        #PERIOD D = 0;

        // Test case 3: Rapid changes in D
        #PERIOD D = 1;
        #5 D = 0; // Change D in the middle of the clock cycle
        #5 D = 1;
        #10 D = 0; // Change D just before clock edge

        // Test case 4: Long sequence of D changes
        #PERIOD D = 1;
        #PERIOD D = 0;
        #PERIOD D = 1;
        #PERIOD D = 0;
        #PERIOD D = 1;
        #PERIOD D = 0;

        // Test case 5: D changes at different points in clock cycle
        #PERIOD D = 1;
        #1 D = 0; // Change D very early in clock cycle
        #PERIOD D = 1;
        #19 D = 0; // Change D very late in clock cycle


	end
      
endmodule

