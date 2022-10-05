`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/10 12:43:52
// Design Name: 
// Module Name: acc
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


module acc(
input wire clk,
input wire IA,
input wire EA,
input wire [7:0]Din,
output wire [7:0]Dout
    );
 reg [7:0]data=0;
 reg [7:0]data_out;
 assign Dout=data;
 always @(*)
 begin
 if(!IA)
 begin
 data=Din; 
 end 
  //case({IA,EA})
  //2'b01:
  //begin data=Din; end
  //2'b10:
  //begin data_out=data; end
  //default begin data_out=0; end
  //endcase
 end
endmodule
