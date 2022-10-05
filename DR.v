`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/10 17:45:45
// Design Name: 
// Module Name: DR
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
module DR(
input wire clk,
input wire IDR,
input wire EDR,
input wire [7:0]D_IN,
output wire [7:0]D_OUT
    );
 reg [7:0]data;
 //reg [7:0]data_out=8'h0;
 assign D_OUT=(EDR)?data:D_IN;
 always @(*)
 begin
 if(IDR)
 begin
 data=D_IN;
 end 
//  case({IDR,EDR})
//  2'b10:
//  begin data=D_IN; end
//  2'b01:
//  begin data_out=data; end
  //default begin data_out=0;
  end
endmodule


