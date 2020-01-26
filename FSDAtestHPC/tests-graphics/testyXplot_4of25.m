load tempfileWS
n=100;
p=3;
X=randn(n,p);
y=randn(n,1);
sel=51:100;
y(sel)=y(sel)+2;
group=ones(n,1);
group(sel)=2;
% plo is a struct
plo=struct;
% Set the scale for the x axes
plo.xlimx=[-1 2];
% Set the scale for the y axis
plo.ylimy=[0 2];
% Control symbol type
plo.sym={'^';'v'};
yXplot(y,X,group,plo);
close all
save tempfileWS