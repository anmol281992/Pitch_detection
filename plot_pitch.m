% Anmol Monga : N18513543
function [] = plot_pitch(filepath,win_size,hop_size,min_lag,max_lag)
[x_t,fs] = wavread(filepath);
t = 0:(length(x_t)-1);
t = t/fs;
overlap = win_size - hop_size;
[s,f,t] = spectrogram(x_t,win_size,overlap,1024,fs);
[pitch,t_pitch] = detect_pitch_acf(x_t,t,fs,win_size,hop_size,min_lag,max_lag);
subplot(2,1,1);
hold on
imagesc(t,f,abs(s));
plot(t_pitch(1:end-1),pitch(1:end-1),'b--o');
xlabel('time');
ylabel('frequency');
title('ACF pitch detector');
hold off
[pitch,t_pitch] = detect_pitch_yin(x_t,t,fs,win_size,hop_size,min_lag,max_lag);
subplot(2,1,2)
hold on 
imagesc(t,f,abs(s));
plot(t_pitch(1:end-1),pitch(1:end-1),'b--o');
xlabel('time');
ylabel('frequency');
title('YIN pitch detector');
hold off




end