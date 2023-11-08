clc
clear all
close all

% Original signal
N = input("Enter the value of N: ");
x = input("Enter a sequence: ");
x = [x, zeros(1,(N-length(x)))];

% Finding X(k)
X = DFT(x, N);

% Finding LHS and RHS
LHS = sum(abs(x).^2);
disp("Energy of the signal in time domain: ")
disp(LHS)

RHS = sum(abs(X).^2)/N;
disp("Energy of the signal in frequency domain: ")
disp(RHS)

function X = DFT(x, N)
    X = zeros(N, 1);
    for k = 0:N-1
        for n = 0:N-1
            X(k+1) = X(k+1)+x(n+1)*exp(-1j*2*pi*n*k/N);
        end
    end
end