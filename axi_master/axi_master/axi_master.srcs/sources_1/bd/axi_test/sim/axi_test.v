//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Oct 26 21:49:53 2022
//Host        : DESKTOP-4KH8JTR running 64-bit major release  (build 9200)
//Command     : generate_target axi_test.bd
//Design      : axi_test
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "axi_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=axi_test,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "axi_test.hwdef" *) 
module axi_test
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN axi_test_clk_100MHz, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_100MHz;
  input m00_axi_init_axi_txn_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_rtl_0_0;

  wire [31:0]axi_r_addr_0_1;
  wire axi_rd_0_1;
  wire [31:0]axi_w_addr_0_1;
  wire [31:0]axi_w_data_0_1;
  wire clk_100MHz_1;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire m00_axi_init_axi_txn_0_1;
  wire [31:0]my_axi_master_0_M00_AXI_ARADDR;
  wire [2:0]my_axi_master_0_M00_AXI_ARPROT;
  wire my_axi_master_0_M00_AXI_ARREADY;
  wire my_axi_master_0_M00_AXI_ARVALID;
  wire [31:0]my_axi_master_0_M00_AXI_AWADDR;
  wire [2:0]my_axi_master_0_M00_AXI_AWPROT;
  wire my_axi_master_0_M00_AXI_AWREADY;
  wire my_axi_master_0_M00_AXI_AWVALID;
  wire my_axi_master_0_M00_AXI_BREADY;
  wire [1:0]my_axi_master_0_M00_AXI_BRESP;
  wire my_axi_master_0_M00_AXI_BVALID;
  wire [31:0]my_axi_master_0_M00_AXI_RDATA;
  wire my_axi_master_0_M00_AXI_RREADY;
  wire [1:0]my_axi_master_0_M00_AXI_RRESP;
  wire my_axi_master_0_M00_AXI_RVALID;
  wire [31:0]my_axi_master_0_M00_AXI_WDATA;
  wire my_axi_master_0_M00_AXI_WREADY;
  wire [3:0]my_axi_master_0_M00_AXI_WSTRB;
  wire my_axi_master_0_M00_AXI_WVALID;
  wire [31:0]my_axi_master_0_axi_periph_M00_AXI_ARADDR;
  wire [2:0]my_axi_master_0_axi_periph_M00_AXI_ARPROT;
  wire my_axi_master_0_axi_periph_M00_AXI_ARREADY;
  wire my_axi_master_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]my_axi_master_0_axi_periph_M00_AXI_AWADDR;
  wire [2:0]my_axi_master_0_axi_periph_M00_AXI_AWPROT;
  wire my_axi_master_0_axi_periph_M00_AXI_AWREADY;
  wire my_axi_master_0_axi_periph_M00_AXI_AWVALID;
  wire my_axi_master_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]my_axi_master_0_axi_periph_M00_AXI_BRESP;
  wire my_axi_master_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]my_axi_master_0_axi_periph_M00_AXI_RDATA;
  wire my_axi_master_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]my_axi_master_0_axi_periph_M00_AXI_RRESP;
  wire my_axi_master_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]my_axi_master_0_axi_periph_M00_AXI_WDATA;
  wire my_axi_master_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]my_axi_master_0_axi_periph_M00_AXI_WSTRB;
  wire my_axi_master_0_axi_periph_M00_AXI_WVALID;
  wire reset_rtl_0_0_1;
  wire reset_rtl_0_1;
  wire [0:0]rst_clk_wiz_100M_peripheral_aresetn;

  assign axi_r_addr_0_1 = axi_r_addr_0[31:0];
  assign axi_rd_0_1 = axi_rd_0;
  assign axi_w_addr_0_1 = axi_w_addr_0[31:0];
  assign axi_w_data_0_1 = axi_w_data_0[31:0];
  assign clk_100MHz_1 = clk_100MHz;
  assign m00_axi_init_axi_txn_0_1 = m00_axi_init_axi_txn_0;
  assign reset_rtl_0_0_1 = reset_rtl_0_0;
  assign reset_rtl_0_1 = reset_rtl_0;
  axi_test_clk_wiz_0 clk_wiz
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .reset(reset_rtl_0_1));
  axi_test_my_axi_master_0_0 my_axi_master_0
       (.axi_r_addr(axi_r_addr_0_1),
        .axi_rd(axi_rd_0_1),
        .axi_w_addr(axi_w_addr_0_1),
        .axi_w_data(axi_w_data_0_1),
        .m00_axi_aclk(clk_wiz_clk_out1),
        .m00_axi_araddr(my_axi_master_0_M00_AXI_ARADDR),
        .m00_axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .m00_axi_arprot(my_axi_master_0_M00_AXI_ARPROT),
        .m00_axi_arready(my_axi_master_0_M00_AXI_ARREADY),
        .m00_axi_arvalid(my_axi_master_0_M00_AXI_ARVALID),
        .m00_axi_awaddr(my_axi_master_0_M00_AXI_AWADDR),
        .m00_axi_awprot(my_axi_master_0_M00_AXI_AWPROT),
        .m00_axi_awready(my_axi_master_0_M00_AXI_AWREADY),
        .m00_axi_awvalid(my_axi_master_0_M00_AXI_AWVALID),
        .m00_axi_bready(my_axi_master_0_M00_AXI_BREADY),
        .m00_axi_bresp(my_axi_master_0_M00_AXI_BRESP),
        .m00_axi_bvalid(my_axi_master_0_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn_0_1),
        .m00_axi_rdata(my_axi_master_0_M00_AXI_RDATA),
        .m00_axi_rready(my_axi_master_0_M00_AXI_RREADY),
        .m00_axi_rresp(my_axi_master_0_M00_AXI_RRESP),
        .m00_axi_rvalid(my_axi_master_0_M00_AXI_RVALID),
        .m00_axi_wdata(my_axi_master_0_M00_AXI_WDATA),
        .m00_axi_wready(my_axi_master_0_M00_AXI_WREADY),
        .m00_axi_wstrb(my_axi_master_0_M00_AXI_WSTRB),
        .m00_axi_wvalid(my_axi_master_0_M00_AXI_WVALID));
  axi_test_my_axi_master_0_axi_periph_0 my_axi_master_0_axi_periph
       (.ACLK(clk_wiz_clk_out1),
        .ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M00_ACLK(clk_wiz_clk_out1),
        .M00_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M00_AXI_araddr(my_axi_master_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arprot(my_axi_master_0_axi_periph_M00_AXI_ARPROT),
        .M00_AXI_arready(my_axi_master_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(my_axi_master_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(my_axi_master_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awprot(my_axi_master_0_axi_periph_M00_AXI_AWPROT),
        .M00_AXI_awready(my_axi_master_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(my_axi_master_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(my_axi_master_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(my_axi_master_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(my_axi_master_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(my_axi_master_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(my_axi_master_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(my_axi_master_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(my_axi_master_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(my_axi_master_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(my_axi_master_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(my_axi_master_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(my_axi_master_0_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_clk_out1),
        .S00_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .S00_AXI_araddr(my_axi_master_0_M00_AXI_ARADDR),
        .S00_AXI_arprot(my_axi_master_0_M00_AXI_ARPROT),
        .S00_AXI_arready(my_axi_master_0_M00_AXI_ARREADY),
        .S00_AXI_arvalid(my_axi_master_0_M00_AXI_ARVALID),
        .S00_AXI_awaddr(my_axi_master_0_M00_AXI_AWADDR),
        .S00_AXI_awprot(my_axi_master_0_M00_AXI_AWPROT),
        .S00_AXI_awready(my_axi_master_0_M00_AXI_AWREADY),
        .S00_AXI_awvalid(my_axi_master_0_M00_AXI_AWVALID),
        .S00_AXI_bready(my_axi_master_0_M00_AXI_BREADY),
        .S00_AXI_bresp(my_axi_master_0_M00_AXI_BRESP),
        .S00_AXI_bvalid(my_axi_master_0_M00_AXI_BVALID),
        .S00_AXI_rdata(my_axi_master_0_M00_AXI_RDATA),
        .S00_AXI_rready(my_axi_master_0_M00_AXI_RREADY),
        .S00_AXI_rresp(my_axi_master_0_M00_AXI_RRESP),
        .S00_AXI_rvalid(my_axi_master_0_M00_AXI_RVALID),
        .S00_AXI_wdata(my_axi_master_0_M00_AXI_WDATA),
        .S00_AXI_wready(my_axi_master_0_M00_AXI_WREADY),
        .S00_AXI_wstrb(my_axi_master_0_M00_AXI_WSTRB),
        .S00_AXI_wvalid(my_axi_master_0_M00_AXI_WVALID));
  axi_test_my_axi_slave_0_0 my_axi_slave_0
       (.s00_axi_aclk(clk_wiz_clk_out1),
        .s00_axi_araddr(my_axi_master_0_axi_periph_M00_AXI_ARADDR[8:0]),
        .s00_axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .s00_axi_arprot(my_axi_master_0_axi_periph_M00_AXI_ARPROT),
        .s00_axi_arready(my_axi_master_0_axi_periph_M00_AXI_ARREADY),
        .s00_axi_arvalid(my_axi_master_0_axi_periph_M00_AXI_ARVALID),
        .s00_axi_awaddr(my_axi_master_0_axi_periph_M00_AXI_AWADDR[8:0]),
        .s00_axi_awprot(my_axi_master_0_axi_periph_M00_AXI_AWPROT),
        .s00_axi_awready(my_axi_master_0_axi_periph_M00_AXI_AWREADY),
        .s00_axi_awvalid(my_axi_master_0_axi_periph_M00_AXI_AWVALID),
        .s00_axi_bready(my_axi_master_0_axi_periph_M00_AXI_BREADY),
        .s00_axi_bresp(my_axi_master_0_axi_periph_M00_AXI_BRESP),
        .s00_axi_bvalid(my_axi_master_0_axi_periph_M00_AXI_BVALID),
        .s00_axi_rdata(my_axi_master_0_axi_periph_M00_AXI_RDATA),
        .s00_axi_rready(my_axi_master_0_axi_periph_M00_AXI_RREADY),
        .s00_axi_rresp(my_axi_master_0_axi_periph_M00_AXI_RRESP),
        .s00_axi_rvalid(my_axi_master_0_axi_periph_M00_AXI_RVALID),
        .s00_axi_wdata(my_axi_master_0_axi_periph_M00_AXI_WDATA),
        .s00_axi_wready(my_axi_master_0_axi_periph_M00_AXI_WREADY),
        .s00_axi_wstrb(my_axi_master_0_axi_periph_M00_AXI_WSTRB),
        .s00_axi_wvalid(my_axi_master_0_axi_periph_M00_AXI_WVALID));
  axi_test_rst_clk_wiz_100M_0 rst_clk_wiz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_rtl_0_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
endmodule

module axi_test_my_axi_master_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire my_axi_master_0_axi_periph_ACLK_net;
  wire my_axi_master_0_axi_periph_ARESETN_net;
  wire [31:0]my_axi_master_0_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]my_axi_master_0_axi_periph_to_s00_couplers_ARPROT;
  wire my_axi_master_0_axi_periph_to_s00_couplers_ARREADY;
  wire my_axi_master_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]my_axi_master_0_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]my_axi_master_0_axi_periph_to_s00_couplers_AWPROT;
  wire my_axi_master_0_axi_periph_to_s00_couplers_AWREADY;
  wire my_axi_master_0_axi_periph_to_s00_couplers_AWVALID;
  wire my_axi_master_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]my_axi_master_0_axi_periph_to_s00_couplers_BRESP;
  wire my_axi_master_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]my_axi_master_0_axi_periph_to_s00_couplers_RDATA;
  wire my_axi_master_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]my_axi_master_0_axi_periph_to_s00_couplers_RRESP;
  wire my_axi_master_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]my_axi_master_0_axi_periph_to_s00_couplers_WDATA;
  wire my_axi_master_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]my_axi_master_0_axi_periph_to_s00_couplers_WSTRB;
  wire my_axi_master_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_my_axi_master_0_axi_periph_ARADDR;
  wire [2:0]s00_couplers_to_my_axi_master_0_axi_periph_ARPROT;
  wire s00_couplers_to_my_axi_master_0_axi_periph_ARREADY;
  wire s00_couplers_to_my_axi_master_0_axi_periph_ARVALID;
  wire [31:0]s00_couplers_to_my_axi_master_0_axi_periph_AWADDR;
  wire [2:0]s00_couplers_to_my_axi_master_0_axi_periph_AWPROT;
  wire s00_couplers_to_my_axi_master_0_axi_periph_AWREADY;
  wire s00_couplers_to_my_axi_master_0_axi_periph_AWVALID;
  wire s00_couplers_to_my_axi_master_0_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_my_axi_master_0_axi_periph_BRESP;
  wire s00_couplers_to_my_axi_master_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_my_axi_master_0_axi_periph_RDATA;
  wire s00_couplers_to_my_axi_master_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_my_axi_master_0_axi_periph_RRESP;
  wire s00_couplers_to_my_axi_master_0_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_my_axi_master_0_axi_periph_WDATA;
  wire s00_couplers_to_my_axi_master_0_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_my_axi_master_0_axi_periph_WSTRB;
  wire s00_couplers_to_my_axi_master_0_axi_periph_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_my_axi_master_0_axi_periph_ARADDR;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_my_axi_master_0_axi_periph_ARPROT;
  assign M00_AXI_arvalid = s00_couplers_to_my_axi_master_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_my_axi_master_0_axi_periph_AWADDR;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_my_axi_master_0_axi_periph_AWPROT;
  assign M00_AXI_awvalid = s00_couplers_to_my_axi_master_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_my_axi_master_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_my_axi_master_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_my_axi_master_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_my_axi_master_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_my_axi_master_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = my_axi_master_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = my_axi_master_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = my_axi_master_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = my_axi_master_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = my_axi_master_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = my_axi_master_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = my_axi_master_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = my_axi_master_0_axi_periph_to_s00_couplers_WREADY;
  assign my_axi_master_0_axi_periph_ACLK_net = M00_ACLK;
  assign my_axi_master_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign my_axi_master_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign my_axi_master_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign my_axi_master_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign my_axi_master_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign my_axi_master_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign my_axi_master_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign my_axi_master_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign my_axi_master_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign my_axi_master_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign my_axi_master_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign my_axi_master_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_my_axi_master_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_my_axi_master_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_my_axi_master_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_my_axi_master_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_my_axi_master_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_my_axi_master_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_my_axi_master_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_my_axi_master_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_1GDXFZR s00_couplers
       (.M_ACLK(my_axi_master_0_axi_periph_ACLK_net),
        .M_ARESETN(my_axi_master_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_my_axi_master_0_axi_periph_ARADDR),
        .M_AXI_arprot(s00_couplers_to_my_axi_master_0_axi_periph_ARPROT),
        .M_AXI_arready(s00_couplers_to_my_axi_master_0_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_my_axi_master_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_my_axi_master_0_axi_periph_AWADDR),
        .M_AXI_awprot(s00_couplers_to_my_axi_master_0_axi_periph_AWPROT),
        .M_AXI_awready(s00_couplers_to_my_axi_master_0_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_my_axi_master_0_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_my_axi_master_0_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_my_axi_master_0_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_my_axi_master_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_my_axi_master_0_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_my_axi_master_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_my_axi_master_0_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_my_axi_master_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_my_axi_master_0_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_my_axi_master_0_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_my_axi_master_0_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_my_axi_master_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(my_axi_master_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(my_axi_master_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(my_axi_master_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(my_axi_master_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(my_axi_master_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(my_axi_master_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(my_axi_master_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(my_axi_master_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(my_axi_master_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(my_axi_master_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(my_axi_master_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(my_axi_master_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(my_axi_master_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(my_axi_master_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(my_axi_master_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(my_axi_master_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(my_axi_master_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(my_axi_master_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(my_axi_master_0_axi_periph_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_1GDXFZR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule
