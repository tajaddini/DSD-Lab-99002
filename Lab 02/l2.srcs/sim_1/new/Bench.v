`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2021 04:35:38 AM
// Design Name: 
// Module Name: Bench
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


module Bench();
reg clk_in;
reg ent;
reg t;
reg out;
wire [3:0] count;

always
begin
clk_in <= 0;
#10
clk_in <= 1;
#10
clk_in <= 0;
end

initial
begin
// assigning default values
t <= 0;
out <= 0;
ent <= 0;

// checking for T=0
t <= 0;
// someone tries to enter
// code must be like 010 to simulate the duration the button is pressed
// NOTE: ent signal must go through at least ONE clock CYCLE
ent <= 1;
#20
ent <= 0;
#20
ent <= 1;
#20
ent <= 0;
#20
// also, if the exit door triggers the results must remain the same
out <= 1;
#20
out <= 0;
// now T=1
t <= 1;
// adding 4 people
ent <= 1;
#20
ent <= 0;
#20
ent <= 1;
#20
ent <= 0;
#20
ent <= 1;
#20
ent <= 0;
#20
ent <= 1;
#20
ent <= 0;
// someone goes
out <= 1;
#20
out <= 0;
// someone comes, someone goes
ent <= 1;
out <= 1;
#20
ent <= 0;
out <= 0;
// more come in until full, then wait a bit
ent <= 1;
#240
ent <= 0;
// 6 people get out
out <= 1;
#120
out <= 0;
end

BD_wrapper instance_1 (
    .CLK(clk_in),
    .Door_out(out),
    .Ent(ent),
    .People(count),
    .T(t));

endmodule
