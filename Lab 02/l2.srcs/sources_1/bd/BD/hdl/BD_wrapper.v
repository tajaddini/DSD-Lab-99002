//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Mar 16 04:54:25 2021
//Host        : Blade running 64-bit major release  (build 9200)
//Command     : generate_target BD_wrapper.bd
//Design      : BD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BD_wrapper
   (CLK,
    Door_out,
    Ent,
    People,
    T);
  input CLK;
  input [0:0]Door_out;
  input [0:0]Ent;
  output [3:0]People;
  input [0:0]T;

  wire CLK;
  wire [0:0]Door_out;
  wire [0:0]Ent;
  wire [3:0]People;
  wire [0:0]T;

  BD BD_i
       (.CLK(CLK),
        .Door_out(Door_out),
        .Ent(Ent),
        .People(People),
        .T(T));
endmodule
