`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module SimSerial();
reg A;
reg B;
reg reset;
wire less;
wire equal;
wire greater;

initial
begin

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
    .A(A),
    .B(B),
    .reset(reset),
    .less(less),
    .equal(equal),
    .greater(greater)
);
endmodule
