load tempfileWS
n=130;
p=5;
state1=123498;
randn('state', state1);
X=randn(n,p);
y=randn(n,1);
kk=30;
% point mass contamination of the first kk units
X(1:kk,:)=1;
y(1:kk)=3;
[out]=FSR(y,X);
close all
save tempfileWS