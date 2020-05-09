%Bora KIÞ 09.10.2019 3.1. CWT of a sinusoidal signal contamined with noise
t = 0:1/1000:1;
t1 = 3:1/1000:5;
N = length(t);
N1 = length(t1);
signal1 = sin(2*pi*50*t);
signal2 = sin(2*pi*100*t);
noise = 0.25*randn(1,N);
toplam = signal1 + signal2 + noise;
fc = centfrq('cmor1-1');
freqrange = [10 125];
scalerange = fc./(freqrange*(1/1000));
scales = scalerange(end):0.2:scalerange(1);
Coeffs = cwt(toplam,scales,'cmor1-1');
SCImg = wscalogram('image', Coeffs, 'scales', scales, 'ydata', toplam, 'xdata',t);