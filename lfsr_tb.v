`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:05:20 02/22/2023
// Design Name:   lfsr
// Module Name:   C:/Users/DELL/Documents/newbie/lfsr/lfsr_tb.v
// Project Name:  lfsr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lfsr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lfsr_tb;

	// Inputs
	reg clk;
	reg [7:0] data;
	reg reset;
	reg enable;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	lfsr uut (
		.clk(clk), 
		.data(data), 
		.reset(reset), 
		.out(out), 
		.enable(enable)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		data = 011101001;
		reset = 1;
		enable = 0;
		#15;
		
		reset = 0 ;
		enable = 1;
		#200;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
	
	always begin
	#5 clk = ~clk;
	end
      
endmodule

