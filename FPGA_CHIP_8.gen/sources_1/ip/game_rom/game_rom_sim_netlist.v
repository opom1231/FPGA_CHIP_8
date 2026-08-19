// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Aug 18 14:58:27 2026
// Host        : mc6030-01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {w:/Desktop/FPGA
//               Projects/FPGA_CHIP_8/FPGA_CHIP_8/FPGA_CHIP_8.gen/sources_1/ip/game_rom/game_rom_sim_netlist.v}
// Design      : game_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "game_rom,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module game_rom
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "00" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.326399 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_INIT_FILE = "game_rom.mem" *) 
  (* C_INIT_FILE_NAME = "game_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  game_rom_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25744)
`pragma protect data_block
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
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
