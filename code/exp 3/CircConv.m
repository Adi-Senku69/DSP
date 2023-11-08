clc;
close all;
clear all;

N=input("Enter the Fundamental Period: ");
x1 = input("Enter first sequence: ");
x1 = [x1,zeros(1,(N-length(x1)))];
x2 = input("Enter second sequence: ");
x2 = [x2,zeros(1,zeros(N-length(x2)))];

y = zeros(N, 1);
%Convolution
for n = 0:N-1    
    for m=0:N-1
        h=circshift(x2,m);
        y(n+1)=y(n+1)+(x1(m+1)*h(n+1));
    end
end

X1=fft(x1);
X2=fft(x2);
Y1=X1.*X2;

disp("DFT of sequence 1: ");
disp(X1);

disp("DFT of sequence 2: ");
disp(X2);

disp("Circular convolution in time domain is ");
disp(y);

y1=IDFT(Y1, N);                                     
disp("Circular convolution in frequency domain is ");
disp(y1);

n=0:1:N-1;
subplot(2,1,1);
stem(n,abs(y));
title("Circular convolution in time domain");
ylabel("Magnitude");
xlabel("n");

subplot(2,1,2);
stem(n,abs(y1));
title("Circular convolution in frequency domain");
ylabel("Magnitude");
xlabel("n");

function y = IDFT(X, N)
    y = zeros(N,1);
    for n = 0:N-1
        for k = 0:N-1
            y(n+1) = y(n+1) + X(k+1)*1/N*exp(1i*2*pi*n*k/N);
        end
    end
end