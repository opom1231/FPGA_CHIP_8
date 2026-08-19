// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Aug  3 16:11:34 2026
// Host        : mc6030-01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top frame_ram -prefix
//               frame_ram_ frame_ram_sim_netlist.v
// Design      : frame_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "frame_ram,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module frame_ram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [0:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [12:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [0:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [0:0]doutb;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]dinb;
  wire [0:0]douta;
  wire [0:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.388 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "frame_ram.mem" *) 
  (* C_INIT_FILE_NAME = "frame_ram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "6144" *) 
  (* C_READ_DEPTH_B = "6144" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "1" *) 
  (* C_READ_WIDTH_B = "1" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "6144" *) 
  (* C_WRITE_DEPTH_B = "6144" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  frame_ram_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20176)
`pragma protect data_block
+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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
