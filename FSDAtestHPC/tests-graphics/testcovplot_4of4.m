load tempfileWS
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
% Initialize structure fground
fground = struct;
% Specify the number of trajectories which have to be highlighted
fground.funit=2;
% Specify the steps in which labels have to be put
n=size(Y,1);
fground.flabstep=[n/2 n*0.75 n+0.5];
% Specify the line width of the highlighted trajectories
fground.LineWidth=3;
covplot(out,'fground',fground,'tag','pl_mycov')
close all
save tempfileWS