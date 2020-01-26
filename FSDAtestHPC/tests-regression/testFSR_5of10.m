load tempfileWS
n=50;
p=3;
X=randn(n,p);
y=randn(n,1);
[out]=FSR(y,X,'nsamp',0);
close all
save tempfileWS