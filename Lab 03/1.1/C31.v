`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2021 11:57:20 AM
// Design Name: 
// Module Name: C31
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


module C31(
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
