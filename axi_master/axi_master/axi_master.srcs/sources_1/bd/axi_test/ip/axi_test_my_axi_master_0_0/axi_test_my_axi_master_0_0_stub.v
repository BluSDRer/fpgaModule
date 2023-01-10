// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 26 21:50:26 2022
// Host        : DESKTOP-4KH8JTR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jialf/Desktop/fpgaModule/axi_master/axi_master/axi_master.srcs/sources_1/bd/axi_test/ip/axi_test_my_axi_master_0_0/axi_test_my_axi_master_0_0_stub.v
// Design      : axi_test_my_axi_master_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_axi_master_v1_0,Vivado 2018.3" *)
module axi_test_my_axi_master_0_0(axi_w_data, axi_w_addr, axi_r_data, axi_r_addr, 
  axi_rd, m00_axi_awaddr, m00_axi_awprot, m00_axi_awvalid, m00_axi_awready, m00_axi_wdata, 
  m00_axi_wstrb, m00_axi_wvalid, m00_axi_wready, m00_axi_bresp, m00_axi_bvalid, 
  m00_axi_bready, m00_axi_araddr, m00_axi_arprot, m00_axi_arvalid, m00_axi_arready, 
  m00_axi_rdata, m00_axi_rresp, m00_axi_rvalid, m00_axi_rready, m00_axi_aclk, 
  m00_axi_aresetn, m00_axi_init_axi_txn, m00_axi_error, m00_axi_txn_done)
/* synthesis syn_black_box black_box_pad_pin="axi_w_data[31:0],axi_w_addr[31:0],axi_r_data[31:0],axi_r_addr[31:0],axi_rd,m00_axi_awaddr[31:0],m00_axi_awprot[2:0],m00_axi_awvalid,m00_axi_awready,m00_axi_wdata[31:0],m00_axi_wstrb[3:0],m00_axi_wvalid,m00_axi_wready,m00_axi_bresp[1:0],m00_axi_bvalid,m00_axi_bready,m00_axi_araddr[31:0],m00_axi_arprot[2:0],m00_axi_arvalid,m00_axi_arready,m00_axi_rdata[31:0],m00_axi_rresp[1:0],m00_axi_rvalid,m00_axi_rready,m00_axi_aclk,m00_axi_aresetn,m00_axi_init_axi_txn,m00_axi_error,m00_axi_txn_done" */;
  input [31:0]axi_w_data;
  input [31:0]axi_w_addr;
  output [31:0]axi_r_data;
  input [31:0]axi_r_addr;
  input axi_rd;
  output [31:0]m00_axi_awaddr;
  output [2:0]m00_axi_awprot;
  output m00_axi_awvalid;
  input m00_axi_awready;
  output [31:0]m00_axi_wdata;
  output [3:0]m00_axi_wstrb;
  output m00_axi_wvalid;
  input m00_axi_wready;
  input [1:0]m00_axi_bresp;
  input m00_axi_bvalid;
  output m00_axi_bready;
  output [31:0]m00_axi_araddr;
  output [2:0]m00_axi_arprot;
  output m00_axi_arvalid;
  input m00_axi_arready;
  input [31:0]m00_axi_rdata;
  input [1:0]m00_axi_rresp;
  input m00_axi_rvalid;
  output m00_axi_rready;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  input m00_axi_init_axi_txn;
  output m00_axi_error;
  output m00_axi_txn_done;
endmodule
