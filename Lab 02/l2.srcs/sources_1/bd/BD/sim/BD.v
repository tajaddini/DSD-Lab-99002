//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Mar 16 04:54:25 2021
//Host        : Blade running 64-bit major release  (build 9200)
//Command     : generate_target BD.bd
//Design      : BD
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BD,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "BD.hwdef" *) 
module BD
   (CLK,
    Door_out,
    Ent,
    People,
    T);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN BD_CLK, FREQ_HZ 10000000, INSERT_VIP 0, PHASE 0.000" *) input CLK;
  input [0:0]Door_out;
  input [0:0]Ent;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PEOPLE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PEOPLE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 4}" *) output [3:0]People;
  input [0:0]T;

  wire CLK_1;
  wire [0:0]Door_out_1;
  wire [0:0]Ent_1;
  wire [0:0]T_1;
  wire [0:0]and_1_Res;
  wire [0:0]and_2_Res;
  wire [0:0]and_3_Res;
  wire [0:0]and_4_Res;
  wire [0:0]and_5_Res;
  wire [0:0]not_1_Res;
  wire [0:0]not_2_Res;
  wire [3:0]people_counter_Q;
  wire [0:0]slice_0_Dout;
  wire [0:0]slice_1_Dout;
  wire [0:0]slice_2_Dout;
  wire [0:0]slice_3_Dout;
  wire [0:0]xor_1_Res;

  assign CLK_1 = CLK;
  assign Door_out_1 = Door_out[0];
  assign Ent_1 = Ent[0];
  assign People[3:0] = people_counter_Q;
  assign T_1 = T[0];
  BD_util_vector_logic_0_0 and_1
       (.Op1(slice_0_Dout),
        .Op2(slice_1_Dout),
        .Res(and_1_Res));
  BD_and_1_1 and_2
       (.Op1(slice_2_Dout),
        .Op2(slice_3_Dout),
        .Res(and_2_Res));
  BD_and_1_2 and_3
       (.Op1(and_1_Res),
        .Op2(and_2_Res),
        .Res(and_3_Res));
  BD_and_2_0 and_4
       (.Op1(Ent_1),
        .Op2(and_5_Res),
        .Res(and_4_Res));
  BD_and_3_1 and_5
       (.Op1(not_1_Res),
        .Op2(T_1),
        .Res(and_5_Res));
  BD_and_3_0 not_1
       (.Op1(and_3_Res),
        .Res(not_1_Res));
  BD_not_1_0 not_2
       (.Op1(T_1),
        .Res(not_2_Res));
  BD_c_counter_binary_0_0 people_counter
       (.CE(xor_1_Res),
        .CLK(CLK_1),
        .Q(people_counter_Q),
        .SCLR(not_2_Res),
        .UP(and_4_Res));
  BD_xlslice_0_0 slice_0
       (.Din(people_counter_Q),
        .Dout(slice_0_Dout));
  BD_slice_0_0 slice_1
       (.Din(people_counter_Q),
        .Dout(slice_1_Dout));
  BD_slice_0_1 slice_2
       (.Din(people_counter_Q),
        .Dout(slice_2_Dout));
  BD_slice_0_2 slice_3
       (.Din(people_counter_Q),
        .Dout(slice_3_Dout));
  BD_util_vector_logic_0_1 xor_1
       (.Op1(and_4_Res),
        .Op2(Door_out_1),
        .Res(xor_1_Res));
endmodule
