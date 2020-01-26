n=200;
v=3;
randn('state', 123456);
Y=randn(n,v);
% Contaminated data
Ycont=Y;
Ycont(1:5,:)=Ycont(1:5,:)+10;
[out]=zscoreFS(Ycont);
close all
save tempfileWS