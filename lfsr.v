`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:23 02/22/2023 
// Design Name: 
// Module Name:    lfsr 
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
module lfsr(clk, data, reset ,out,enable);
output [7:0] out;
input [7:0] data;
input enable,clk,reset;
reg [7:0] out;
wire linear_feedback;
assign linear_feedback = !(out[7]^out[3]);
always @(posedge clk)
if(reset) begin
out<=8'b0;
end
else if(enable) begin
out<= {out[6],out[5],out[4],out[3],out[2],out[1],out[0],linear_feedback};
end

endmodule
