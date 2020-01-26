load tempfileWS
n=200;
p=3;
X=randn(n,p);
y=randn(n,1);
[out]=FSR(y,X, 'labeladd','1','bivarfit','1','multivarfit','1');
close all
save tempfileWS