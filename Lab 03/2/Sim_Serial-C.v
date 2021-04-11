`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module SimSerial();
reg clk;
reg A;
reg B;
reg reset;
wire less;
wire equal;
wire greater;

always
begin
clk <= 0;
#5
clk <= 1;
#5
clk <= 0;
end

initial
begin
//testing for varying values while clock=0
// reset the circuitry
reset <= 1;
#10
reset <= 0;
// Stupid stuff
// If we change A or B during clock=0 nothing changes
A <= 1;
B <= 1;
#2
A <= 0;
B <= 1;
#1
A <= 1;
B <= 1;
#1
A <= 0;
B <= 0;
#1
// but it changes when clock=1
A <= 1;
B <= 1;
#3
B <= 0;
#1
B <= 1;
#6
// so everything during a clock=1 counts

// back to regular tests
// testing for A=110 and B=100
// expecting one equal and infinite greater
// reset the circuitry
reset <= 1;
#10
reset <= 0;
// assign values, at 10ns intervals
A <= 1;
B <= 1;
#10
A <= 1;
B <= 0;
#10
A <= 0;
B <= 0;
// testing for A=1110011 and B=1111000
// expecting three equal and infinite less
// reset the circuitry
reset <= 1;
#10
reset <= 0;
// assign values, at 10ns intervals
A <= 1;
B <= 1;
#10
A <= 1;
B <= 1;
#10
A <= 1;
B <= 1;
#10
A <= 0;
B <= 1;
#10
A <= 0;
B <= 0;
#10
A <= 1;
B <= 0;
#10
A <= 1;
B <= 0;
// testing for A=00110 and B=00111
// expecting three equal and infinite less
// reset the circuitry
reset <= 1;
#10
reset <= 0;
// assign values, at 10ns intervals
A <= 0;
B <= 0;
#10
A <= 0;
B <= 0;
#10
A <= 1;
B <= 1;
#10
A <= 1;
B <= 1;
#10
A <= 0;
B <= 1;
end

Serial S(
    .clk(clk),
    .A(A),
    .B(B),
    .reset(reset),
    .less(less),
    .equal(equal),
    .greater(greater)
);
endmodule
