// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Thu Oct 29 19:49:25 2026
// Host        : mc6030-01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA_Projects/FPGA_CHIP_8/FPGA_CHIP_8/FPGA_CHIP_8.gen/sources_1/ip/game_rom/game_rom_sim_netlist.v
// Design      : game_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "game_rom,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1.2" *) 
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
