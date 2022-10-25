function Hd = fir_pass_0_4_stop_0_5
%FIR_PASS_0_4_STOP_0_5 返回离散时间滤波器对象。

% MATLAB Code
% Generated by MATLAB(R) 9.9 and DSP System Toolbox 9.11.
% Generated on: 25-Oct-2022 16:12:59

% Equiripple Lowpass filter designed using the FIRPM function.

% All frequency values are normalized to 1.

N     = 65;   % Order
Fpass = 0.4;  % Passband Frequency
Fstop = 0.5;  % Stopband Frequency
Wpass = 1;    % Passband Weight
Wstop = 1;    % Stopband Weight
dens  = 20;   % Density Factor

% Calculate the coefficients using the FIRPM function.
b  = firpm(N, [0 Fpass Fstop 1], [1 1 0 0], [Wpass Wstop], {dens});
Hd = dfilt.dffir(b);
% Set the arithmetic property.
set(Hd, 'Arithmetic', 'fixed', ...
    'CoeffWordLength', 16, ...
    'CoeffAutoScale', true, ...
    'Signed',         true, ...
    'InputWordLength', 16, ...
    'inputFracLength', 15, ...
    'FilterInternals',  'FullPrecision');
denormalize(Hd);


% [EOF]
