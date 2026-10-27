// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Tue Oct 27 19:00:23 2026
// Host        : mc6030-01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top frame_ram -prefix
//               frame_ram_ frame_ram_sim_netlist.v
// Design      : frame_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "frame_ram,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1.2" *) 
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Dvv0xmclD73tSZomPkF23jsqDIybk08I1eVAtnFLbADB7dJ1TW1G9QCT+YrJtYeSMSArZtFZp1eK
SL108w9xnAiGQu6+h+JOlQ4kM3ZrssLBgch9gQClvjDNp3mUIB0w1X/QcB6dT8HmjcPI/fnJU9rW
R7IR3MlVoMiV2BNQcvQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tliJSRYoDy8p8gJnQu9vdi6hbHtXxXsCHyLUryhIev3XQW4V2CD7rgSBm7cKWZsHq2TwHP8zkfE/
1u+myVqndpeAqxmVX9Z3t62TomVluWLdlNXShu/6uYA5UzMfxPWYCs40b10rlLt4ByFqa+M9l8+s
cWR8eq/ltnHawAZVuFWmoGyEIb8U4ex/U+0E/UTcNhmn7wCGfZkZQ0uwvlZRkPLuBu6q6NHdVuVr
DO/FYQLBFXeryXjUvpjipWXnLmG6FrW4z5lzQQ2O++FjhelfT2Eb7VgFeA/mZSNEfXvn3GeHFH8H
AzIkDzeWfiJL5RajrkMbjzS9UKfQavxZ5ClZsQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
r7WLnf0gOvH3A5+2iYc0kBJJj6jWtNmNvi5ZplhID+006plmbjwPjYGa8df7W1xjMYtu2578/ozT
2d7/jTihMKt+nrlxvmYhRuCdOGUuqXpAGUZqAUqs3CNNEb/D/SQKTcwqxLvyShGCjSTcr9TVpJkg
5Z4nfGu54gSMYS++62g=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rFGi2+X/NQRSJeisAhKLrCO5F3/I0u5jvqJ1Ui3T2XwKx6u1qDXfK5PACxs6bvnnvpYvz0OHQiKS
qvcx6FjU+o7W39pkPpJBbKWjIzImPjbLlbXev9oIa0SHWroDtCFKzlVm0mcIBClGHkPbb9VlU3TS
Wxz+9m/tlVEgEkYXCcyBK1tOJ2Ee1kKQb7yBQcwC+lcRJbv63NTCAnHxAqGBHqVRT3uQIVTKAGn7
WFcj+4UH4k3/xCs5qHoEpEUWt/Me6NNo55K84FXAdFFRcxu4LD9mexzqzWiIXagTdvRWJtTm3UYd
nDyzwDxyz2H/lsNSsNJIEuq6lIZjY+h4bGvffA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vJfYmp0BDo6j2bukS3AtLrYbTibygsaqYh4vx/vD17k7q/MXQIFyD0Bq5P8rxbov0cTt5e+zs80U
1vb4lD05lZzwCp6dlaxIdcJEJTmJFK80131Dfp+gjg2rcQMUbe0eFlmHHobC9S9FxGDW4/BK7diG
ZGY7hIOKWXXtnDvVtYR0YvywtBTMx/LbXj+Mdxi/XyNmuc2Q6kdEZq3bbCVr4lQhYufqQXu4v2aj
3SOXwiP4jYrrbS+0eB98XXXqEsI4V9rGniNrjhRlHVeTWxrbgPYO76ShHcSHSR3lOihr7rZQRRk7
i/TaaDIBGAJ8oG0PuzUCwr/PSDreWHmGPQpC+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hMXnyK92b1X9S7OHFXTUgLvwUMt5so0BW2VyYvl5fPQt531dLK1JXVTx/pAx4FU2XEH6yJd46w5G
I6vkgrjmDozUFKdyKjKGWgI9MPr7PcZtsm8aYQGw5cZo698bSz58RjEZenqInlJ9cPziftA3OnG5
QQ9mt7lKPmdbE36PF5r0ipmwBlfovLSuxXsi1F7YqWOYxZG+FTqelLelyfVhuVJxBxQ0oIMC2h34
SXmwOPpC4leyzj3+oY/ks3mNp8vD+vIaaE0uwYq32wXdM2ofEa09E4wuVObKt6+lk8AfqkiKwXSE
YnmjpJfaG7zwryLt5ukPO0HN7fDItepKdiBpHA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SCQtOsykE6St2U2wrmFbCbuBUAekA1ZC0M44tgKS/uwp0/TFEhNFVqpIF4/atN1eTnIhhdahBfIO
82/YuDgUWx+8vzKBgKI3vUwwj17+SOyh+KvAK04/UFPurOQmUt1PY31WdYwZvyxnh1/ZORNBeP8Z
JJ8RWmbU8mKFWG0WVL+gm/TBtp77lymGSEggp1QBfrFXCW/AbOAdT0D7dJIf6XD8CcP2TZ6F710j
BSVABf0kypZOLZhtT8KDG+RUYAtUNKn5qQ8gHuKBoyCDHhT5mIyGNIgiBacuIVbnLWss02aCnT7I
vgRt6b2671H0SAGEIctVrtJLbyfQjghmduGdzw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
b+bevLxynCTriuueDkNwCg0TCFJtyBra5ADVJ3bgPAPLsvsojCLVaCz5ddQad35gCBZnksxnJH06
+yY40+jnKT+TBboXmJIJtU3YrusEyPqxZmqs3nw8FDy9au9NzJKGeNFWdzUIAqrRzXHZjK8QABaL
xNH/wkNY5cppbL5fDRdDwByY5x/dL/DhwkyhWE6+OPDVE7o07EE118A2Xl9i5It5konfK+y57aPP
UkJv/Dc1j87/P6h5zuopNa8m0+hfXY4QFoZxs5jCEa0QGIBS9Vx+UnhhKV0wq7JPY4bMukGAT+MA
ye0/JKF+A5KwsCAhmojoud2Oay/47iVrXttl8Y24evVe1AAZ72Rc/qIezJY8Pt2CafTIfGYcDwGB
febHpaiCzl/8K1zrulB9KgZPx7qCOaPQMd/DYhogO8Qfx2Sm95z43sRCiju0aVlCRhq/rcxVz4Oh
KBr/hTpiE1HEuLTuESV/ujtrV1QOIcWOKahzWiiBPdLlDPPdHgu9uwae

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ahwECbvVbT4hZl3PHfLdseTmY9zlhp1mWoaujoB/o/q+m9HSNBsiiJ4hbWy6wjdJEAC4aYkahTPe
7uFyqOgDwJ+O5ZH2rxCslLTGjbU68drDVWJHzF8JzKdAEarP/+ncpRnY4SbAQjbX8tWRWn5dqfMQ
TCapkgJ1Fp4r4CbWt8RChnCoahUm1nC7f4bVdQ07KK8jRdi2gExRsyBa7Dkh5rFMLcOxgvHQCwcP
6sqJYCx9R32MbCEtQrI8BbdxDhT260qpJ9xLpYmR3vJ2OBN3WlU2+9SEIcJJSpUs26CRmSgn0dJp
qeEp2qK4bFh5WtoU+HHcBpRoa3AmiQ+MBkVu9Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Il/Uw7kZS4CgsFh4nWnmJB7Ai0MU++xT6jV6dD+VlQ749imIQdmfkbKtOmv1zHMAKn4s+6OQBpTa
WJmdwOjqJ7iJ6vx900wc/H+QYTTE+4WaFOKbm7kZ40/aE2QZepMidVWi8f4KvuF/QYPaMBY/PFJs
iMhdVlsbyJwsy0xeSCwQIQJRV3qzT0OqYPDKz1RfOdwVv5syjrer+p1eSVkI/ExwaHvPX3X6V71r
Wbe3Vxb4OgnUCuGLqqyTpudYgGGB1379S5jNdLyhdwPySDOGizLIBr3pkUB9C13skvec9gJ+85AB
MGcrwDVwxcjwUZSL/FZl4da4NTXX7my/4Es1pg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYgmSMMk7lOLYED6FYdGW/bCj5Z/sBzTAD+fXwJ8CpadmlhlJcv+5X2K19bmvVI9enAMelidRJ7a
AV+lMSBtCzZjqeT32onYhDwe1IjosqkSs90E4CLqgMG/qivMzxcTMOBdmQ5ndwMviayBtYXZUvUg
imF8bCXTCEwsIqOy7MSpMZm4L9eGwN+3c5CYuxy7M420JO+s8rNgna0aRbk1kOJa1qIBJgBUYyAT
wgKSjzEfRQsMJLaoryJ7y4b18oDGTE0TRvGRgCAZ15uYhWmJrwtHFykT2ZIABXu6V+Dnj/OSrD6v
OA9v+a9666XvtZPxle3OEfz1YH6XASKML4tlnw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20176)
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
