[x_t,fs] = wavread('jazz2REF.wav');
win_size = 2048;
hop_size = 256;
min_lag = 15;
max_lag = 800;
t = 1:1:length(w);
[pitch,t_pitch] = detect_pitch_acf(x_t,t,fs,win_size,hop_size,min_lag,max_lag);
