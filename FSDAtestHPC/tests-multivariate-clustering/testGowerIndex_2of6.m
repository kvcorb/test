load tempfileWS
p=3;
n=30;
Y=randi(20,n,p);
% Specify that all variables are quantitative.
l=ones(p,1);
S=GowerIndex(Y,'l',l);
close all
save tempfileWS