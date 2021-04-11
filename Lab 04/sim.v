`timescale 1ns / 1ps

module sim();
    reg clk;
    reg reset;
    reg push;
    reg pop;
    reg [3:0] data_in;
    wire [3:0] data_out;
    wire full;
    wire empty;
    // to use in for loop
    integer x;
    // clock generator
    always begin
        clk = 0;
        #5
        clk = 1;
        #5;
    end

    initial begin
        // setup
        reset = 1;
        push = 0;
        pop = 0;
        data_in = 0;
        #10
        reset = 0;
        // idle
        #20
        // push 3 to 10 to fill the module and test for idling at full
        for (x=3; x<14; x=x+1) begin
            #10
            push = 1;
            data_in <= x;
        end
        // idle for a while to check behavior
        #20
        // turn off push, enable pop
        push = 0;
        pop = 1;
        // now that we see input does not affect pop
        // disable input to reduce distraction
        #40
        data_in = 0;
        // keep waiting until everything is popped and a bit more to check behavior
        # 60
        // fill it again
        pop = 0;
        for (x=2; x<10; x=x+1) begin
            #10
            push = 1;
            data_in <= x;
        end
        // change input to something very different
        #10
        data_in = 15;
        // stop pushing, pop two values
        push = 0;
        pop = 1;
        #20
        // push and pop at the same time
        push = 1;
        // wait three cycles
        #30
        // should not get full signal
        // turn off push, resume pop
        push = 0;
        // wait 4 cycles
        #40
        // reset the module
        reset = 1;
        #10
        // now push two and pop three
        reset = 0;
        push = 1;
        pop = 0;
        #10
        data_in = 10;
        #10
        push = 0;
        pop = 1;
        
//        #30
//          #20
//        pop = 1;
//        #40;
    end
    Stack_8x4 S (
        .clk(clk),
        .push(push),
        .pop(pop),
        .reset(reset),
        .data_in(data_in),
        .data_out(data_out),
        .full(full),
        .empty(empty)
    );
endmodule
