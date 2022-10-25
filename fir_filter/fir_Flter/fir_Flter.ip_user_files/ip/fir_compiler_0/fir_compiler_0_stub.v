// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 25 17:28:01 2022
// Host        : DESKTOP-4KH8JTR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jialf/Desktop/fpgaModule/fir_Flter/fir_Flter.srcs/sources_1/ip/fir_compiler_0/fir_compiler_0_stub.v
// Design      : fir_compiler_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fir_compiler_v7_2_11,Vivado 2018.3" *)
module fir_compiler_0(aresetn, aclk, s_axis_data_tvalid, 
  s_axis_data_tready, s_axis_data_tdata, m_axis_data_tvalid, m_axis_data_tdata)
/* synthesis syn_black_box black_box_pad_pin="aresetn,aclk,s_axis_data_tvalid,s_axis_data_tready,s_axis_data_tdata[31:0],m_axis_data_tvalid,m_axis_data_tdata[31:0]" */;
  input aresetn;
  input aclk;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  input [31:0]s_axis_data_tdata;
  output m_axis_data_tvalid;
  output [31:0]m_axis_data_tdata;
endmodule
