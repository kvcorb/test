load tempfileWS
p=3;
n=50;
Y=randi(120,n,p);
% Specify that first variable is quantitative and the other 2 are categorical.
l=[1 3 3];
S=GowerIndex(Y,'l',l);
close all
save tempfileWS