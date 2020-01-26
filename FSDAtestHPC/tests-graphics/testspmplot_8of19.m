load tempfileWS
% Generate contaminated data
state=100;
randn('state', state);
n=200;
Y=randn(n,3);
Ycont=Y;
Ycont(1:5,:)=Ycont(1:5,:)+3;
close all;
[out]=FSM(Ycont,'plots',1);
group = zeros(n,1);
group(out.outliers)=1;
plo=struct;
plo.labeladd='1'; % option plo.labeladd is used to label the outliers
% By default, the legend identifies the groups with the identifiers
% given in vector 'group'.
figure;
plo.clr = 'br';
spmplot(Ycont,group,plo,'box');
close all
save tempfileWS