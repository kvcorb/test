n=200;
p=3;
randn('state', 123456);
X=randn(n,p);
% Uncontaminated data
y=randn(n,1);
% Contaminated data
ycont=y;
ycont(1:5)=ycont(1:5)+6;
[out]=LXS(y,X,'nsamp',1000);
out=FSReda(y,X,out.bs);
close all
save tempfileWS