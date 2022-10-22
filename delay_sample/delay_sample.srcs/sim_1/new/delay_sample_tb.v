`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/22 16:33:52
// Design Name: 
// Module Name: delay_sample_tb
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


module delay_sample_tb();

reg clock;
reg enable;
reg reset;
reg [31:0]  sample_in;
reg         sample_in_strobe;
wire [31:0] sample_delayed;
wire        sample_delayed_stb;
delay_sample #(.DATA_WIDTH(32), .DELAY_SHIFT(4)) sample_delayed_inst (
    .clock(clock),
    .enable(enable),
    .reset(reset),

    .data_in(sample_in),
    .input_strobe(sample_in_strobe),
    .data_out(sample_delayed),
    .output_strobe(sample_delayed_stb)
);


    parameter clk=50;                    //设置时钟信号周期
    parameter clk_half=clk/2;
    parameter data_num=4000000;         //仿真数据长度
    parameter time_sim=data_num*clk/2;  //仿真时间           
    initial begin
        clock = 0;
        forever #clk_half clock = ~clock;
    end    

    initial begin// this process block specifies the stimulus.
        clock = 0;
        enable = 0;
        reset = 1;
        sample_in = 0;
        sample_in_strobe = 0;
        #1000
        enable = 1;
        reset = 0;
        #time_sim; 
        $stop;
    end   
integer Pattern;
initial
begin

	Pattern=0;
	#3000
	repeat(data_num)
		begin
			Pattern=Pattern+1;
			sample_in_strobe = 1;
			sample_in = Pattern;
			#clk;
		end
end 
endmodule
