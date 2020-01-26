n=20000;
v=2;
X=randn(n,v);
mu = [1 -1]; Sigma = [.9 .4; .4 .3];
y = logmvnpdfFS(X, mu, Sigma);
y1=log(mvnpdf(X,mu,Sigma));
max(abs(y-y1))
% 2.842e-14
close all
save tempfileWS