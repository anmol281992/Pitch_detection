% Anmol Monga : N18513543
function [pitch,t_pitch] = detect_pitch_yin(x_t,t,fs,win_size,hop_size,min_lag,max_lag)
overlap = win_size - hop_size;

X = buffer(x_t,win_size,overlap,'nodelay');
[n,m] = size(X);
k= 1;
lag = min_lag:max_lag;
for l = min_lag:max_lag
    d(k,:) = sum((X(1:n-l,:) - X((l+1):end,:)).^2,1);
    meand(k,:) = mean(d,1);
    k
    k = k+1;
end
dhat = d./meand;
[M,I] = min(dhat,[],1);
t_pitch = win_size/(2*fs) + [0:m-1]*hop_size/fs;
pitch = fs./lag(I);












end