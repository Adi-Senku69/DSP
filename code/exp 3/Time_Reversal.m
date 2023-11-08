%DFT{x(-n)} = X*(k)
clc;
close all;
clear all;

N = input("Enter the value of N: ");
x=input("Enter a sequence: ");
x = [x, zeros(1,(N-length(x)))];

X=fft(x);
n=0:N-1;
x1=x(mod(-n,N)+1); %Time reversing original sequence
LHS=fft(x1);
RHS=conj(X);

%Plotting
subplot(221);
stem(abs(LHS));
ylabel('Amplitude');
xlabel('K');
title('Magnitude of LHS');

subplot(222);
stem(angle(LHS));
ylabel('Angle');
xlabel('K');
title('Phase of LHS');

subplot(223);
stem(abs(RHS));
ylabel('Amplitude');
xlabel('K');
title('Magnitude of RHS');

subplot(224);
stem(angle(RHS));
ylabel('Angle');
xlabel('K');
title('Phase of RHS');
