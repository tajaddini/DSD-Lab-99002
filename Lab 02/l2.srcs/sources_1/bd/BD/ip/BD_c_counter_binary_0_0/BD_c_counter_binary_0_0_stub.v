// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Mar 16 05:36:38 2021
// Host        : Blade running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/mhtaj/Desktop/Ed/Lab
//               DSD/l2/l2.srcs/sources_1/bd/BD/ip/BD_c_counter_binary_0_0/BD_c_counter_binary_0_0_stub.v}
// Design      : BD_c_counter_binary_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020iclg400-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *)
module BD_c_counter_binary_0_0(CLK, CE, SCLR, UP, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SCLR,UP,Q[3:0]" */;
  input CLK;
  input CE;
  input SCLR;
  input UP;
  output [3:0]Q;
endmodule
