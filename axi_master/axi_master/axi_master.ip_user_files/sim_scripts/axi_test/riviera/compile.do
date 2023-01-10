vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi_master.srcs/sources_1/bd/axi_test/ipshared/85a3" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_master.srcs/sources_1/bd/axi_test/ipshared/85a3" \
"../../../bd/axi_test/ipshared/8f31/hdl/my_axi_master_v1_0_M00_AXI.v" \
"../../../bd/axi_test/ipshared/8f31/hdl/my_axi_master_v1_0.v" \
"../../../bd/axi_test/ip/axi_test_my_axi_master_0_0/sim/axi_test_my_axi_master_0_0.v" \
"../../../bd/axi_test/ipshared/0288/hdl/my_axi_slave_v1_0_S00_AXI.v" \
"../../../bd/axi_test/ipshared/0288/hdl/my_axi_slave_v1_0.v" \
"../../../bd/axi_test/ip/axi_test_my_axi_slave_0_0/sim/axi_test_my_axi_slave_0_0.v" \
"../../../bd/axi_test/ip/axi_test_clk_wiz_0/axi_test_clk_wiz_0_clk_wiz.v" \
"../../../bd/axi_test/ip/axi_test_clk_wiz_0/axi_test_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../axi_master.srcs/sources_1/bd/axi_test/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../axi_master.srcs/sources_1/bd/axi_test/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/axi_test/ip/axi_test_rst_clk_wiz_100M_0/sim/axi_test_rst_clk_wiz_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_master.srcs/sources_1/bd/axi_test/ipshared/85a3" \
"../../../bd/axi_test/sim/axi_test.v" \

vlog -work xil_defaultlib \
"glbl.v"

