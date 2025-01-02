% input: freq [Hz], T [C]
% output: lambda [m]
% calling functions: vsound_in_air

function lamda = lambda_sound_in_air (freq, T)

vsound = vsound_in_air(T); %[m/sec]
lamda = vsound / freq; % wavelength in air [m]