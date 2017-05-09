
% Anmol Monga : N18513543
%%
win_size = 2048;
hop_size = 256;
min_lag = 15;
max_lag = 800;
filepath = '/pitch/jazz2REF.wav';
filepath = strcat(pwd,filepath);
figure(1)
plot_pitch(filepath,win_size,hop_size,min_lag,max_lag)

filepath = '/pitch/T08-violin.wav';
filepath = strcat(pwd,filepath);
figure(2)
plot_pitch(filepath,win_size,hop_size,min_lag,max_lag)
%%
win_size = 2048;
hop_size = 256;
min_lag = 15;
max_lag = 1000;
filepath = '/pitch/jazz2REF.wav';
filepath = strcat(pwd,filepath);
figure(1)
plot_pitch(filepath,win_size,hop_size,min_lag,max_lag)
filepath = '/pitch/T08-violin.wav';
filepath = strcat(pwd,filepath);
figure(2)
plot_pitch(filepath,win_size,hop_size,min_lag,max_lag)
%%
win_size = 2048;
hop_size = 256;
min_lag = 15;
max_lag = 600;
filepath = '/pitch/jazz2REF.wav';
filepath = strcat(pwd,filepath);
figure(1)
plot_pitch(filepath,win_size,hop_size,min_lag,max_lag)

filepath = '/pitch/T08-violin.wav';
filepath = strcat(pwd,filepath);
figure(2)
plot_pitch(filepath,win_size,hop_size,min_lag,max_lag)