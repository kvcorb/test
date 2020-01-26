load tempfileWS
lms=struct;
% Do 5 refining steps for each elemental subset
lms.refsteps=5;
% Store the best 10 subsets
lms.bestr=10;
n=200;
p=3;
randn('state', 123456);
X=randn(n,p);
y=randn(n,1);
y(1:5)=y(1:5)+6;
[out]=LXS(y,X,'lms',lms,'plots',1);
close all
save tempfileWS