load tempfileWS
n=200;
v=3;
q=5;
randn('state', 123456);
Y=randn(n,v,q);
% Contaminated data
Ycont=Y;
Ycont(1:5,:,:)=Ycont(1:5,:,:)+10;
[out1,Mu,Sigma]=zscoreFS(Ycont,[],'Sn',1);
% [out,Mu1,Sigma1]=zscoreFS(Ycont,[],'Sn',1);
close all
save tempfileWS