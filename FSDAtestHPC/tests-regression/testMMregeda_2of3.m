load tempfileWS
n=200;
p=3;
randn('state', 123456);
X=randn(n,p);
% Uncontaminated data
y=randn(n,1);
% Contaminated data
ycont=y;
ycont(1:5)=ycont(1:5)+6;
[out]=MMreg(ycont,X,'Srhofunc','optimal');
close all
save tempfileWS