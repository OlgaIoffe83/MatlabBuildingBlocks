% input: T [C]
% output v [m/sec]
function v = vsound_in_air(T)
C2K = 273.15; % Celsius to Kelvin conversion
v0 = 331.7; % [m/sec] v sound in air at 0[C]

T0 = C2K; % 0 [C] 
v02 = v0 * v0;
gRbyM = v02 / T0; % gama*R/M

T1_air = T + C2K; % [deg]
v = sqrt(gRbyM*T1_air); % [m/sec]
end