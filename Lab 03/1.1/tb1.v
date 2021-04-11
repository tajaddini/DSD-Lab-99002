`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2021 12:32:53 PM
// Design Name: 
// Module Name: tb
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


module tb();
reg less;
reg equal;
reg greater;
reg A_i;
reg B_i;
wire AgB;
wire AlB;
wire AeB;

initial
begin
// testing for equal
less <= 0;
equal <= 1;
greater <= 0;
// cases
A_i <= 0;
B_i <= 0;
#10
A_i <= 1;
B_i <= 0;
#10
A_i <= 0;
B_i <= 1;
#10
A_i <= 1;
B_i <= 1;
#10
// testing for less
less <= 1;
equal <= 0;
greater <= 0;
// cases
A_i <= 0;
B_i <= 0;
#10
A_i <= 1;
B_i <= 0;
#10
A_i <= 0;
B_i <= 1;
#10
A_i <= 1;
B_i <= 1;
#10
// testing for greater
less <= 0;
equal <= 0;
greater <= 1;
// cases
A_i <= 0;
B_i <= 0;
#10
A_i <= 1;
B_i <= 0;
#10
A_i <= 0;
B_i <= 1;
#10
A_i <= 1;
B_i <= 1;
end

C31 test_31 (
    .le(less),
    .eq(equal),
    .gr(greater),
    .A(A_i),
    .B(B_i),
    .A_le_B(AlB),
    .A_eq_B(AeB),
    .A_gr_B(AgB)
    );

endmodule
