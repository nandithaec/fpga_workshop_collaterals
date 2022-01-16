`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2021 18:07:47
// Design Name: 
// Module Name: test
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


module test();

reg clk, reset;
wire [7:0] out;

core uut (clk,reset,out);

initial
begin
    clk = 1'b0;
    reset = 1'b0;
    
    #10;
    reset = 1'b1;
    #50;
    reset = 1'b0;
end

always #5 clk = ~clk;
initial #200 $finish;

endmodule
