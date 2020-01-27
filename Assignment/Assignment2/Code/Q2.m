clc
clear all

%% Part a

% L=11;
% omega=linspace(0,2*pi,300);
% aliasSinc=((sin((omega*L)/2))/(L*sin(omega/2)))
% h=exp((-j*omega*(L-1))/2).*aliasSinc
% 
% plot(omega/pi,h)

L=11
x = linspace(0,4*pi,300);
h = diric(x,L).*exp((-j*x*(L-1)/2));

fig=figure
subplot(3,1,1)
plot(x/pi,h)
title('L = 11')

%% Part b

fs=1000
L=11
x = linspace(0,2*pi*fs,300);
h = diric(x,L).*exp((-j*x*(L-1)/2));

subplot(3,1,2)
plot(x/pi,h)
title('fs=1000')

%% Part c

t=0:1
xfunc = cos(2*pi*25*t) + sin(2*pi*250*t)
out = conv(xfunc, h)

% subplot(3,1,3)
% plot(t,out)
% title('x(t) input')
saveas(fig, 'Q2.png')
%% Part d

% Rectangular Window FIR Filter