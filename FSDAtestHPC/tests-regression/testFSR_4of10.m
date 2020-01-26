load tempfileWS
n=200;
p=3;
X=randn(n,p);
y=randn(n,1);
[out]=FSR(y,X,'h',120);
close all
save tempfileWS