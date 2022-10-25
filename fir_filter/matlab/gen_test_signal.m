clc
clear all

%% 滤波器抽头系数，归一化通带频率0.4，阻带频率0.5
Hd = fir_pass_0_4_stop_0_5; 

%% 产生信号参数
len = 2e3;
fs = 5e6;
fc1 = 0.1*fs/2;  %归一化频率 0.1
fc2 = 0.8*fs/2;  %归一化频率 0.3
% fc3 = 0.0*fs/2;  %归一化频率 0.5
% fc4 = 0.8*fs/2;  %归一化频率 0.8
%% 生成测试信号
t = 0:1/fs:(len-1)/fs;
sig = exp(j*2*pi*fc1*t) + exp(j*2*pi*fc2*t);% + exp(j*2*pi*fc3*t) + exp(j*2*pi*fc4*t);

%% FFT转换至频域
fd = abs(fftshift(fft(sig)));

%% 滤波器前后信号频域显示
figure(1)
xx=(-fs/2:fs/len:(fs/2-fs/len))/fs*2;
subplot(1,2,1)
plot(xx,fd)
ylim([0 1000])
xlabel('归一化频率(x Π/2 rad/sample)');
filter_sig = filter(Hd.Numerator,1,sig);
filter_sig_fd = abs(fftshift(fft(filter_sig)));
subplot(1,2,2)
plot(xx,filter_sig_fd)
ylim([0 1000])
xlabel('归一化频率(x Π/2 rad/sample)');

%% 滤波器前后信号时域显示
figure(2)
subplot(1,2,1)
plot(real(sig(100:200)))
subplot(1,2,2)
plot(real(filter_sig(100:200)));

%% 生成FPGA 仿真输入数据 
%% 对仿真产生的合成信号进行量化处理
N = 12;
sig=sig/max(abs(sig));         %归一化处理
sig=round(sig*(2^(N-1)-1));    %N比特量化
fid=fopen('fitFliterTestData.txt','w');
data_i = real(sig);
data_q = imag(sig);
for n=1:length(sig)
    if data_i(n) <0
       data_i(n) = 2^N + data_i(n);
    end
    if data_q(n) <0
       data_q(n) = 2^N + data_q(n);
    end
end
fprintf(fid,'%x \n',data_i*2^N+data_q);
fclose(fid);