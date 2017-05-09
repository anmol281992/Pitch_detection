% Anmol Monga : N18513543
function [pitch,t_pitch] = detect_pitch_acf(x_t,t,fs,win_size,hop_size,min_lag,max_lag)
overlap = win_size - hop_size;

X = buffer(x_t,win_size,overlap,'nodelay');
[n,m] = size(X);
lag = min_lag:max_lag;
N = length(lag);
for i = 1:N
    acf(i,:) = sum((X(1:n-lag(i),:).*X(lag(i)+1:n,:)),1)/(n-lag(i));
    i
end
fs_hop = fs/hop_size;
t_pitch = [0:m-1]*hop_size/fs + (win_size/2)/fs;
[M,I]= max(acf,[],1);
pitch = fs./lag(I);












end