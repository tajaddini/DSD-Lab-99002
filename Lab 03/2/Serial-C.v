`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module Serial(
    input clk,
    input A,
    input B,
    input reset,
    output less,
    output equal,
    output greater
    );
    wire state_less;
    wire state_equal;
    wire state_greater;
    
    assign state_less = clk ? (reset ? 0 : (state_equal ? (~A & B) : state_less)) : state_less;
    assign state_greater = clk ? (reset ? 0 : (state_equal ? (A & ~B) : state_greater)) : state_greater;
    assign state_equal = clk ? (reset ? 1 : ~(state_less | state_greater)) : state_equal;
    assign less = state_less;
    assign equal = state_equal;
    assign greater = state_greater;
    
endmodule
