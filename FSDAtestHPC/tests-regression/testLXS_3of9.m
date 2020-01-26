load tempfileWS
n=200;
p=3;
randn('state', 123456);
X=randn(n,p);
y=randn(n,1);
y(1:5)=y(1:5)+6;
[out,C]=LXS(y,X);
close all
save tempfileWS