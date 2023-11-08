clc;
close all;
clear all;

f = input("Enter the frequency of the siganl: ");
t = 0:0.001:1;
y = sin(2*pi*f*t);

fs_under = input("Enter Under sampling frequency: ");
fs = 2*f;
fs_over = input("Enter Over Sampling frequency: ");

% Original signal
subplot(5,2,1:2)
plot(t, y)
xlabel("Time")
ylabel("Amplitude")
title("Original signal")

% Under sampling
ts = 1/fs_under;
n = 0:ts:1;
y_sampled = sin(2*pi*f*n);
subplot(5,2,3)
stem(n, y_sampled)
xlabel("n")
ylabel("Amplitude")
title(" Under sampled signal")
construction(n, y_sampled, 4)


% Right sampling
ts = 1/fs;
n = 0:ts:1;
y_sampled = sin(2*pi*f*n);
subplot(5,2,5)
stem(n, y_sampled)
xlabel("n")
ylabel("Amplitude")
title(" Right sampled signal")

construction(n, y_sampled, 6)

% Over sampling
ts = 1/fs_over;
n = 0:ts:1;
y_sampled = sin(2*pi*f*n);
subplot(5,2,7)
stem(n, y_sampled)
xlabel("n")
ylabel("Amplitude")
title(" Over sampled signal")

construction(n, y_sampled, 8)

function construction(n, y_sampled, i)
query_points = linspace(0,1,1000);
rec_y = interp1(n, y_sampled, query_points);
subplot(5,2,i)
plot(n, y_sampled, "ro", query_points,rec_y)
xlabel("time")
ylabel("Amplitude")
title("Reconstructed signal")
end
