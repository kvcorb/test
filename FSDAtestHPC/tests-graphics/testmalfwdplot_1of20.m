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
[out]=FSMeda(Y,bs,'plots',1,'init',30);
% Produce monitoring MD plot with all the default options
malfwdplot(out)
close all
save tempfileWS