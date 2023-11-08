clc;
clear all;
close all;

N = input("Enter N value: ");
x = input("Enter a sequence: ");
x = [x, zeros(1, N-length(x))];
x
X = zeros(N,1);

for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1)*exp(-1i*2*pi*n*k/N);
    end
end
disp("DFT: ")
X

n = 0:N-1;
subplot(4,1,1)
stem(n, x)
xlabel("n")
ylabel("Amplitude")
title("Input Sequence")

subplot(4,1,2)
stem(n, abs(X))
xlabel("n")
ylabel("Amplitude")
title("Magnitude Spectrum")

subplot(4,1,3)
stem(n, angle(X))
xlabel("n")
ylabel("Angle")
title("Phase Spectrum")

y = zeros(N,1);
for n = 0:N-1
    for k = 0:N-1
        y(n+1) = y(n+1) + X(k+1)*1/N*exp(1i*2*pi*n*k/N);
    end
end

disp("IDFT: ")
y

n = 0:N-1
subplot(4,1,4)
stem(n, abs(y))
xlabel("n")
ylabel("Amplitude")
title("IDFT of X(k)")

