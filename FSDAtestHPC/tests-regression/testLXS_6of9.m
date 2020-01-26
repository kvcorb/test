load tempfileWS
n=200;
p=3;
randn('state', 123456);
X=randn(n,p);
y=randn(n,1);
y(1:5)=y(1:5)+6;
[out]=LXS(y,X,'rew',1,'conflev',0.999);
close all
save tempfileWS