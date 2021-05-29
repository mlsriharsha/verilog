`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:48 05/29/2021 
// Design Name: 
// Module Name:    bcd_grey 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bcd_to_grey#(parameter N=4)
(input [N-1:0] bcd,
output [N-1:0] grey
);
 //method 1
/*
assign grey ={bcd[N-1],bcd[N-1:1]^bcd[N-2:0]};

*/

/* method 2 */
integer i;
initial 
begin 
	for(i=0;i<N-1;i=i+1)
		begin
		grey[i]=bcd[i]^bcd[i+1];
		end
	grey[i]=bcd[i];
end

endmodule
