`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Description: 4 bit counter with source clock (100MHz) division.



//////////////////////////////////////////////////////////////////////////////////
module counter_clk_div(clk);
input clk;
wire rst;
reg div_clk;
reg [25:0] delay_count;
reg [3:0] counter_out;
//We will add a VIO here. So, convert all outputs to reg and all 
//inputs to wires except clk

//VIO --- Design. VIO outputs will be connected to the counter input
//Counter outputs will be VIO inputs 

vio_0 vioname (
  .clk(clk),                // input wire clk
  .probe_in0(div_clk),    // input wire [0 : 0] probe_in0
  .probe_in1(counter_out),    // input wire [3 : 0] probe_in1
  .probe_out0(rst)  // output wire [0 : 0] probe_out0
);



//////////clock division block////////////////////


always @(posedge clk or posedge rst)
begin

if(rst)
begin
delay_count<=26'd0;
counter_out<=4'b0000;
div_clk <= 1'b0; //initialise div_clk


//uncomment this line while running just the div clock counter for simulation purpose
//counter_out<=4'b0000;
end
else

//uncomment this line while running just the div clock counter for simulation purpose
//if(delay_count==26'd212)

//comment this line while running just the div clock counter for simulation purpose
if(delay_count==26'd32112212)
begin
delay_count<=26'd0; //reset upon reaching the max value
div_clk <= ~div_clk;  //generating a slow clock
end
else
begin
delay_count<=delay_count+1;
end
end


/////////////4 bit counter block///////////////////
always @(posedge div_clk)
begin

if(rst)
begin
counter_out<=4'b0000;
end
else
begin
counter_out<= counter_out+1;
end
end

endmodule 
