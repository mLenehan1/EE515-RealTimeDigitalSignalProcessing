clc
clear all

%% Part a

x = zeros(1,11)
n=0:10;

i=0;
while i<11
    if(i==0 || i==1 || i==2)
        x(i+1)=i+1;
    end
    if(i==3 || i==4)
        x(i+1)=5-i;
    end
    if(i>=5)
        x(i+1)=1;
    end
    i=i+1;
end

Hz = [2 -3 2];
y=conv(x,Hz);

%% Part b

fig=figure;
subplot(3,1,1);
stem(n,x);
title('Input x[n]');
subplot(3,1,2);
stem(n,y(1:11));
title('Output y[n]');

%% Part c

x=zeros(1,11);
x(1)=1;
h=conv(Hz,x);
subplot(3,1,3)
stem(n,h(1:11));
title('Unit Impulse Response of y[n]');
saveas(fig, 'Q1.png')