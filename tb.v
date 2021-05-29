`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:57:12 05/29/2021
// Design Name:   bcd_to_grey
// Module Name:   E:/xilinx/bcd_to_grey/tb.v
// Project Name:  bcd_to_grey
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_to_grey
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg [7:0] bcd;

	// Outputs
	wire [7:0] grey;

	// Instantiate the Unit Under Test (UUT)
	bcd_to_grey #(.N(8))uut (
		.bcd(bcd), 
		.grey(grey)
	);
	initial 
	begin
	$monitor($time," binary %b  grey %b",bcd,grey);
	end
	initial begin
		// Initialize Inputs
		bcd = 0;
	#10 bcd=4'b1101;
	#10 bcd=8'b10010100;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

