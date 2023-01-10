//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Oct 26 21:49:53 2022
//Host        : DESKTOP-4KH8JTR running 64-bit major release  (build 9200)
//Command     : generate_target axi_test_wrapper.bd
//Design      : axi_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi_test_wrapper
   (axi_r_addr_0,
    axi_rd_0,
    axi_w_addr_0,
    axi_w_data_0,
    clk_100MHz,
    m00_axi_init_axi_txn_0,
    reset_rtl_0,
    reset_rtl_0_0);
  input [31:0]axi_r_addr_0;
  input axi_rd_0;
  input [31:0]axi_w_addr_0;
  input [31:0]axi_w_data_0;
  input clk_100MHz;
  input m00_axi_init_axi_txn_0;
  input reset_rtl_0;
  input reset_rtl_0_0;

  wire [31:0]axi_r_addr_0;
  wire axi_rd_0;
  wire [31:0]axi_w_addr_0;
  wire [31:0]axi_w_data_0;
  wire clk_100MHz;
  wire m00_axi_init_axi_txn_0;
  wire reset_rtl_0;
  wire reset_rtl_0_0;

  axi_test axi_test_i
       (.axi_r_addr_0(axi_r_addr_0),
        .axi_rd_0(axi_rd_0),
        .axi_w_addr_0(axi_w_addr_0),
        .axi_w_data_0(axi_w_data_0),
        .clk_100MHz(clk_100MHz),
        .m00_axi_init_axi_txn_0(m00_axi_init_axi_txn_0),
        .reset_rtl_0(reset_rtl_0),
        .reset_rtl_0_0(reset_rtl_0_0));
endmodule
