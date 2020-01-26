load tempfileWS
% Run this code to see the output shown in the help file
n=200;
p=3;
randn('state', 123456);
X=randn(n,p);
% Uncontaminated data
y=randn(n,1);
% Contaminated data
ycont=y;
ycont(1:5)=ycont(1:5)+6;
% OLS estimates
bols=[ones(n,1) X]\y;
res=y-[ones(n,1) X]*bols;
sols=sqrt((res'*res)/(n-p-1));
InitialEst.beta=bols;
InitialEst.scale=sols;
[out]=MMreg(ycont,X,'InitialEst',InitialEst);
close all
save tempfileWS