`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module Serial(
//    input clk,
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
    
    assign state_less = reset ? 0 : (state_equal ? (~A & B) : state_less);
    assign state_greater = reset ? 0 : (state_equal ? (A & ~B) : state_greater);
    assign state_equal = reset ? 1 : ~(state_less | state_greater);
    
    assign less = state_less;
    assign equal = state_equal;
    assign greater = state_greater;
    
endmodule
