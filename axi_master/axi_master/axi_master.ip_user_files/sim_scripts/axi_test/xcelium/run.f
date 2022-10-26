-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_test/ipshared/8f31/hdl/my_axi_master_v1_0_M00_AXI.v" \
  "../../../bd/axi_test/ipshared/8f31/hdl/my_axi_master_v1_0.v" \
  "../../../bd/axi_test/ip/axi_test_my_axi_master_0_0/sim/axi_test_my_axi_master_0_0.v" \
  "../../../bd/axi_test/ipshared/0288/hdl/my_axi_slave_v1_0_S00_AXI.v" \
  "../../../bd/axi_test/ipshared/0288/hdl/my_axi_slave_v1_0.v" \
  "../../../bd/axi_test/ip/axi_test_my_axi_slave_0_0/sim/axi_test_my_axi_slave_0_0.v" \
  "../../../bd/axi_test/ip/axi_test_clk_wiz_0/axi_test_clk_wiz_0_clk_wiz.v" \
  "../../../bd/axi_test/ip/axi_test_clk_wiz_0/axi_test_clk_wiz_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../axi_master.srcs/sources_1/bd/axi_test/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../axi_master.srcs/sources_1/bd/axi_test/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_test/ip/axi_test_rst_clk_wiz_100M_0/sim/axi_test_rst_clk_wiz_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_test/sim/axi_test.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

