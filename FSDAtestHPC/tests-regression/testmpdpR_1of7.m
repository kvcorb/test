rng('default')
rng(1000)
n=1000;
p=3;
sig=0.01;
eps=randn(n,1);
X=randn(n,p);
bet=3*ones(p,1);
y=X*bet+sig*eps;
[out] = mpdpR(y, X, 0.01);
close all
save tempfileWS