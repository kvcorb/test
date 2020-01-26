load tempfileWS
close all;
state=100;
randn('state', state);
n=200;
Y=randn(n,3);
Ycont=Y;
Ycont(1:5,:)=Ycont(1:5,:)+3;
% spmplot is called automatically by all outlier detection methods, e.g. FSM
[out]=FSM(Ycont,'plots',1);
close all
save tempfileWS