`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/25 17:19:13
// Design Name: 
// Module Name: fir_filter_tb
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


module fir_filter_tb();


    reg          aclk;
    reg          aresetn;
    reg          s_axis_data_tvalid;
    wire         s_axis_data_tready;
    reg   [31:0] s_axis_data_tdata;
    wire         m_axis_data_tvalid;
    wire  [31:0] m_axis_data_tdata;
    
    
fir_filter i_fir_filter (
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axis_data_tvalid(s_axis_data_tvalid),
    .s_axis_data_tready(s_axis_data_tready),
    .s_axis_data_tdata(s_axis_data_tdata),
    .m_axis_data_tvalid(m_axis_data_tvalid),
    .m_axis_data_tdata(m_axis_data_tdata)
     );      
    
    parameter clk_period=50;                 //设置时钟信号周期
    parameter clk_half_period=clk_period/2;
    parameter data_num=80000;               //仿真数据长度
    parameter time_sim=data_num*clk_period; //仿真时间           
    initial begin
        aclk = 0;
        forever #clk_half_period aclk = ~aclk;
    end        
    
    
   reg [15:0] stimulus_i[1:data_num];
   reg [15:0] stimulus_q[1:data_num];
   reg [23:0] stimulus_iq[1:data_num];
   initial begin// this process block specifies the stimulus.
        aresetn = 0;
        $readmemh("fitFliterTestData.txt",stimulus_iq);
        #2000;
        aresetn = 1;
        #time_sim; 
        #time_sim; 
        $stop;
    end   
    
    wire        add_load_cnt;
    wire        end_load_cnt;
    reg  [7:0]  load_cnt;
    always@(posedge aclk)begin    
            if(aresetn == 1'b0)begin
                load_cnt <= 'h0;
            end
            else if(add_load_cnt)begin
                if(end_load_cnt)
                    load_cnt <= 'h0;
                else 
                    load_cnt <= load_cnt + 1'b1;
            end
    end
    assign add_load_cnt = 1;
    assign end_load_cnt = add_load_cnt && load_cnt == 2-1;  
    
    
    reg [31:0] addr_cnt;
    always@(posedge aclk)begin    
            if(aresetn == 1'b0)begin
                s_axis_data_tvalid <= 'b0;
                s_axis_data_tdata <= 'h0;
                addr_cnt <= 'h0;
            end
            else if(end_load_cnt & s_axis_data_tready)begin
                 s_axis_data_tvalid <= 1'b1;
                 s_axis_data_tdata <= {4'b0,stimulus_iq[addr_cnt][11:0],4'b0,stimulus_iq[addr_cnt][23:12]};
                 if(addr_cnt>20000)begin
                      addr_cnt <= 'h0;
                 end
                 else begin
                      addr_cnt <= addr_cnt + 1;
                 end
                
            end
            else begin
                s_axis_data_tvalid <= 1'b0;
            end
    end   
    
    
        
endmodule
