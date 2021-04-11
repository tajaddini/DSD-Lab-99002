`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2021 06:19:46 PM
// Design Name: 
// Module Name: CascadableComparators
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


module CascadableComparator(
    input le,
    input eq,
    input gr,
    input A,
    input B,
    output A_le_B,
    output A_eq_B,
    output A_gr_B
    );
    assign A_le_B = eq ? ~A & B : le;
    assign A_gr_B = eq ? ~B & A : gr;
    assign A_eq_B = eq ? ~(A_le_B | A_gr_B) : eq;
endmodule

module CascadableComparator_4bit (
    input [3:0] A,
    input [3:0] B,
    output A_le_B,
    output A_eq_B,
    output A_gr_B
);

// inner connections and initial states
wire c0_in_less;
wire c0_in_equal;
wire c0_in_greater;
wire c1_in_less;
wire c1_in_equal;
wire c1_in_greater;
wire c2_in_less;
wire c2_in_equal;
wire c2_in_greater;

// MSB
CascadableComparator C3 (
    .le(0),
    .eq(1),
    .gr(0),
    .A(A[3]),
    .B(B[3]),
    .A_le_B(c2_in_less),
    .A_eq_B(c2_in_equal),
    .A_gr_B(c2_in_greater)
);
// 3rd bit
CascadableComparator C2 (
    .le(c2_in_less),
    .eq(c2_in_equal),
    .gr(c2_in_greater),
    .A(A[2]),
    .B(B[2]),
    .A_le_B(c1_in_less),
    .A_eq_B(c1_in_equal),
    .A_gr_B(c1_in_greater)
);
// 2nd bit
CascadableComparator C1 (
    .le(c1_in_less),
    .eq(c1_in_equal),
    .gr(c1_in_greater),
    .A(A[1]),
    .B(B[1]),
    .A_le_B(c0_in_less),
    .A_eq_B(c0_in_equal),
    .A_gr_B(c0_in_greater)
);

CascadableComparator C0 (
    .le(c0_in_less),
    .eq(c0_in_equal),
    .gr(c0_in_greater),
    .A(A[0]),
    .B(B[0]),
    .A_le_B(A_le_B),
    .A_eq_B(A_eq_B),
    .A_gr_B(A_gr_B)
);

endmodule