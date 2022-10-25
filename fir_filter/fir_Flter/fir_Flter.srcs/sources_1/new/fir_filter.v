`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/25 16:01:23
// Design Name: 
// Module Name: fir_filter
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


module fir_filter(
    input         aclk,
    input         aresetn,
    input         s_axis_data_tvalid,
    output        s_axis_data_tready,
    input  [31:0] s_axis_data_tdata,
    output        m_axis_data_tvalid,
    output [31:0] m_axis_data_tdata
    );
//wire [63:0] fir_tdata;   
//assign m_axis_data_tdata = {fir_tdata[59:44],fir_tdata[27:12]};
fir_compiler_0 i_fir (
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axis_data_tvalid(s_axis_data_tvalid),
    .s_axis_data_tready(s_axis_data_tready),
    .s_axis_data_tdata(s_axis_data_tdata),
    .m_axis_data_tvalid(m_axis_data_tvalid),
    .m_axis_data_tdata(m_axis_data_tdata)
  );    

endmodule
