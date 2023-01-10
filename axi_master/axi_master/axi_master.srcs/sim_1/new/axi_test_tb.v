`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/26 21:01:09
// Design Name: 
// Module Name: axi_test_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module axi_test_tb();

  reg clk_100MHz;
  reg m00_axi_init_axi_txn_0;
  reg reset_rtl_0;
  reg reset_rtl_0_0;
  reg [31:0]axi_r_addr_0;
  reg axi_rd_0;
  reg [31:0]axi_w_addr_0;
  reg [31:0]axi_w_data_0;
axi_test_wrapper i_axi_test(
    .axi_r_addr_0(axi_r_addr_0),
    .axi_rd_0(axi_rd_0),
    .axi_w_addr_0(axi_w_addr_0),
    .axi_w_data_0(axi_w_data_0), 
    .clk_100MHz(clk_100MHz),
    .m00_axi_init_axi_txn_0(m00_axi_init_axi_txn_0),
    .reset_rtl_0(reset_rtl_0),
    .reset_rtl_0_0(reset_rtl_0_0));
    
    parameter clk_data=50; //设置时钟信号周期
    parameter clk_half_data=clk_data/2;
    parameter data_num=2000;  //仿真数据长度
    parameter time_sim=data_num*clk_data; //仿真时间           
    initial begin
        clk_100MHz = 0;
        forever #clk_half_data clk_100MHz = ~clk_100MHz;
    end
    initial begin// this process block specifies the stimulus.
        reset_rtl_0 = 1;
        reset_rtl_0_0 = 0;    
        m00_axi_init_axi_txn_0 = 0;
        axi_r_addr_0= 'h40000000;
        axi_rd_0= 0;
        axi_w_addr_0= 'h40000000;
        axi_w_data_0= 'h12345;       
        #1000;
        reset_rtl_0 = 0;
        reset_rtl_0_0 = 1;   
        #10000 
        m00_axi_init_axi_txn_0 = 1; 
        #1000
        m00_axi_init_axi_txn_0 = 0;
        axi_rd_0 = 1; 
        #1000 
        m00_axi_init_axi_txn_0 = 1; 
        #1000
        m00_axi_init_axi_txn_0 = 0; 
        #time_sim;     
        $stop;  
    end
  
endmodule
