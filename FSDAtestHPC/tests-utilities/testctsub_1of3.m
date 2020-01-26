n=1000;
x=sort(randn(n,1))+10;
y=1+2*x+ randn(n,1);
% y(50:70)=-5;
z=randn(n,1);
a=ctsub(x,y,z);
subplot(2,1,1)
plot(x,y)
subplot(2,1,2)
plot(x,a)
close all
save tempfileWS