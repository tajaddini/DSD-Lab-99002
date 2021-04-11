`timescale 1ns / 1ps

// M.H. Tajaddini

// define a stack module with specified ins/outs
module Stack_8x4(
    input wire clk,
    input wire reset,
    input wire push,
    input wire pop,
    input wire [3:0] data_in,
    output reg [3:0] data_out,
    output reg empty,
    output reg full
    );
    
    // we need an internal index register to keep track of where we are in the stack
    reg [3:0] index;
    // also a stack of depth 8 and width 4 to store the data
    reg [3:0] stack [7:0];
    
    // best practice is to do everything in one always block
    always @(posedge clk) begin
        // reset everything
        // no need to reset the data
        if (reset) begin
            data_out <= 0;
            index <= 0;
            empty <= 1;
            full <= 0;
        end else begin
            // push and pop are mutually exclusive
            if (push & !pop) begin
                if(!full) begin
                    empty <= 0;
                    stack[index] <= data_in;
                    index <= index + 1;
                    if (index>6) full <= 1;
                end
            end else if (pop & !push) begin
                // there's a catch here for pop
                // since we are assigning eveything with non-blocking assignments, they are all parallel
                // therefore, we'll get an X before getting results which is wrong
                // so in order to mitigate for that, I'll check to see if the module is full and correct the index
                if (full) begin
                    full <= 0;
                    index <= 6;
                    data_out <= stack[7];
                end else
                // normal pop behavior
                if (index > 0) begin
                    data_out <= stack[index];
                    index <= index - 1;
                // check for the last element, whether to pop or not
                end else if (index ==0 &!empty) begin
                    data_out <= stack[0];
                    empty <= 1;
                // default to zero when empty
                end else data_out <= 0;
            end
        end
    end
endmodule
