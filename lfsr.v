`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2023 22:31:29
// Design Name: 
// Module Name: lfsr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lfsr(out,clc,rst);
output reg [3:0] out;
input clc, rst;
wire feedback;
assign feedback = ~(out[3] ^ out[2]);
always @(posedge clc, posedge rst)
 begin
 if (rst)
 out = 4'b0;
 else
 out = {out[2:0],feedback};
  end
endmodule
