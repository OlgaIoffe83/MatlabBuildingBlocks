
function fmax = fft_plot(x,fs,ax)

n = length(x);
fshift = (-n/2:n/2-1)*(fs/n);

y = fft(x);
yshift = fftshift(y);
power = abs(yshift).^2/n; 

plot(ax, fshift,power)
hold on
xlabel('Frequency (Hz)')
ylabel('Power')
xlim([0 fs/2])

[pks1,locs1] = findpeaks(power,'MinPeakDistance',1,'MinPeakProminence',10e3);
fmax = fshift(locs1);
fmax = fmax(fmax > 0);