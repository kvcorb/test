load tempfileWS
n=200;
v=1;
randn('state', 123456);
Y=randn(n,v);
% Contaminated data
Ycont=Y;
Ycont(1:5,:)=Ycont(1:5,:)+10;
[out]=zscoreFS(Ycont,[],'Qn');
% Alternatively it is possible to use the following sintax
[out]=zscoreFS(Ycont,'median','Qn');
close all
save tempfileWS