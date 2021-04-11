`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2021 06:47:44 PM
// Design Name: 
// Module Name: Sim1
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


module Sim1();
reg [3:0] A;
reg [3:0] B;
wire less;
wire equal;
wire greater;

initial
begin
A <= 7;
B <= 7;
// expecting eq=1
#10
A <= 3;
// expecting less=1
#10
B <= 3;
// expecting equal=1
#10
A <= 5;
// expecting greater=1
#10
B <= 0;
// expecting greater=1
#10
A <= 0;
// expecting equal=1
end

CascadableComparator_4bit C(
    .A(A),
    .B(B),
    .A_le_B(less),
    .A_eq_B(equal),
    .A_gr_B(greater)
);

endmodule
