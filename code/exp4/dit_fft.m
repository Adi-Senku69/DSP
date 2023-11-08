a = [1 0 1 0]
y = rdx2ditfft(a)

function f = rdx2ditfft(a)
%
%  This program is the Cooley-Tukey Fast Fourier Transform
%  Radix-2 Reverse Bit Decimation-In-Time
%
%  Input: An array. If the array length is not a power of 2 it will be padded
%  with zeros so it has length of the next highest power of 2.
%  For example, input [1 2 3] and the program will return the...
%
%  Output: array a[6+0i -2-2i 2+0i -2+2
%
% Pad the input array if its length is not a power of 2
pad = nextpow2(length(a)); 
a = [a zeros(1,2^pad-length(a))]; 
% bitrevorder requires Matlab's Signal Processing Toolbox
a = bitrevorder(a);
len = length(a);
clc;
clear all;
close all;
x=input('Enter the sequence : ');
N=input('Enter the Point    : ');
n=length(x);
x=[x zeros(1,N-n)];
y=bitrevorder(x);
M=log2(N);
for m=1:M
    d=2^m;
    for l=0:d:n-1
        for k=0:(d/2)-1
            w=exp(-1i*2*pi*k/d);
            z1=y(l+k+1);
            z2=y(l+k+1+d/2);
            y(l+k)=z1+w*z2;
            y(l+k+d/2)=z1-w*z2;
        end
    end
end
f = y;
end
