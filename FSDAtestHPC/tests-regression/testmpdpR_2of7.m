load tempfileWS
n=100;
p=3;
sig=0.01;
eps=randn(n,1);
X=randn(n,p);
bet=3*ones(p,1);
y=X*bet+sig*eps;
% Contaminate the first 10 observations.
y(1:10)=y(1:10)+0.05;
[out] = mpdpR(y, X, 1,'yxsave',1);
resindexplot(out)
close all
save tempfileWS