n=100;
p=4;
state1=141243498;
randn('state', state1);
Y=randn(n,p);
kk=[1:10];
Y(kk,:)=Y(kk,:)+4;
[fre]=unibiv(Y);
m0=20;
bs=fre(1:m0,1);
[out]=FSMeda(Y,bs,'init',30);
% Produce monitoring covariances plot with all the default options
covplot(out)
close all
save tempfileWS