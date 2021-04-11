// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Mar 16 05:36:38 2021
// Host        : Blade running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/mhtaj/Desktop/Ed/Lab
//               DSD/l2/l2.srcs/sources_1/bd/BD/ip/BD_c_counter_binary_0_0/BD_c_counter_binary_0_0_sim_netlist.v}
// Design      : BD_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020iclg400-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BD_c_counter_binary_0_0,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module BD_c_counter_binary_0_0
   (CLK,
    CE,
    SCLR,
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN BD_CLK, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 4}" *) output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  BD_c_counter_binary_0_0_c_counter_binary_v12_0_13 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module BD_c_counter_binary_0_0_c_counter_binary_v12_0_13
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  BD_c_counter_binary_0_0_c_counter_binary_v12_0_13_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
hkYW+OZm6k9gF5yAUfXGm/n8kfXYD6tjFQYha968Ws0SqrM/NNAjCrrtMG8kIqTbkipnmceefxNr
sB0PtSpUrw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NEPpD4CxNBVJLV3hg1agn83QnqiCz3YuR89MlVuNyQGERKVJ+uGolFDqHFzBKLQArFTiHBWivkzK
A2DQ42XdOxp30NKOgHjrjgmF+fZMjDs24rn3Ue1INLHwTS5RT84Kih7Jx/7R0dl03/COJq+33l9u
7l+ArdY7mLwqqI9iIjU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cfBwEwc95LpKuxDGqpON2gGac620iHNKrm/QNXYg3/OFA5ZQNdpdhRz4vCTQRVbOg7b1nIox6GR8
TD/cf0JW38RU0NuY+TR6CkFT19NCdy67gR6JTDdXifhr/zTKjOL5gvp0XjT9PSLwwPyDirNX4TMa
9y9X5pf4gEnt0dikHNgySZO+Qpr30MP7n6oAjuxowlf45cfmPqZthYPnIjBSCdQGBPfSF+kZ2F1N
XCDEja5xE4CQshPPodH5njadc6kj7/qp9C4PfKcyNtDug+qsws9UK25Z2IFc8vk6/15HlIkQHkXv
Wq0iHaPLidqh3035FinHyPD/FDnfGGa5Oa2qcg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QmjD3HAHcP+h0RsjR0iH8h2N6drNxei50nfQN9RC8HobMEaARq/6rKjZEhHXMSCStQeCMhyVKRmN
HM7ZrqMf3W0s/8U4QMqp3M1VuYXVjEe2PCIpvtRcMY3JngdSWOydG2dH6dDA16ehxinMKgIr0TjA
PXA+lfyX6yTs1FWrne/6ufrl6ZAPpNG7EDKQ2aHqSm8DEXT1BJYMblBfAjAajwaJmPEu1aDlQeNo
onryTiFJkKP92pcZLCCufZL8ZAJ5uMvZZxiZRsiLd0BnCfOe3rl9AON+q53U+iK11EvAkpIBT+Cc
VYb5NqVAVaqXbQrqo3+YHEW5ft3fM9kZnlFDew==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FkHW107swc8fPv4xOTlQJU6PWERObturlywl6rsGCswc/v367bmQ1Maze/8QdmUPjEYwhAcHKVMu
7U4o3CvYhmrDpYiUQdQQ0B7gAbMZbJ8MFY5jRxn7KYDk+Bi9Ov8092IdW1a51FPWEVPmF4Kn6z4E
DSqpQDL58qieEUnrU2Ltb4GLJc3NrWTLvnbvRtHUUuQWTMZTQ7WqX4iH2dZ/EICpbRjlAF50iMAS
YHuuFTRKXcIFQlKYRyeQV4nyaA5JGbb3RC3N/Q2IZjdSXqQ9EOpmdhttpxReCnsdJiD/pPCtf7ZN
d/TheLy1Va2FZR+p4MozZorVui5/FtcCwKy6aw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NgZm/7Jvy0UZQRVxBVxeZ/odxMd59IlnRFHjM+6Bof6o6u4Qy4u9MOoQ3Sr2paPuGq+B+5EhdcD8
a5WGiurBrPW0qF+L2CoUJsDqz0WonRehZECQynibSUlmctvvMyr790pwb+C78gtW47p8uALYdUCJ
NhcDkV8fE3jFdDEYmfQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TxQNdd2WOThZCBZEYNgXxai4jK9AqWD/GRadYnarEfzmLUfcNDUoG7DxVWHCdTVuW8i2qZpouT1H
FUHt76rzZk8vI2tFLfUbKyTaRqik1aYwOCp1ZdqbgqQEDhBRWJjGxcJuxZbSQ2z8IUgiJ0eT148+
nf9UmzvYS1jrIsN/a7K4EjyRNMk0V917y85rxdk7itlisaUw4Cm72z9slByFtALj6/077uPjcK9U
mbWm7PbXk8PT44eQeaJl990wlWvD5/8BZS6AHqjg8520Xs+jftSeB6aNqTiYxfp21FJqmexwo7cG
G3BH/DRHhP7ZIsXHqSaJJFo20Nx9VgpLuF5t2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SD0HXE1HkS0upn6gCMtZ+N6ZF89PYMuL/1AQOmIxJLeonyc+DbIdK6SwJG1Z5a91NvpUdUpv7ePe
SL+iHNiyF5bCWwF7xmeNBQmxhRHpjO4o7uXBxaqcN1dC+D+wNf9DdoNkUvEbdQPs07LN5KXBWg8R
8jcIin+Tq0YFYuJnJlh7ZR/gNb4gtl7wLGNlHBkuQ7rqtxKN2cRHYAYwPDrBnBvvRYhtzvuabRDC
JhgMcUW/C6b0Zq0o/MSg2Fw1DhfBaB9kB/nxMTgrLiOBVR766aSxIyS+VRxeAdJLAiJysA+8oors
EVLXySwWpjrBMUfgIOoDndgbyInDhX66r0h9Rg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1ZVXoNjpItSovPWpIh4T2+oMQhbuJe9fKPxvJMVGTteWK5Ev06HJwTonoeiFlXUh3BMViQ5bRsOB
3u3Qsea2fe4PNO0VnHQ5ERuhyMc2ocXILuyb4TMaJAEhcaHjR3QsTV+84z+t1B3dB7q23kJTgcrk
KNqIJs/IVIcOpcKZxstISJ9ilEJVT1JcLa6f2Mr5wRjiAhtvIivEhDFkNbDhVwULlrMGXoLZUVeA
+dX5OffSKFKAMMmDQjX9hqQnQD9qkGvdQim66ydkIH9+clMJ7goUOlmAmk8kWHqwYotlPqOqUEMc
KPHvntjmlJFe4zFgNnDpDf9x2Yr8qRcI9lHAAw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6592)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
