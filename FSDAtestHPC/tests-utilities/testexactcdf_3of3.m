load tempfileWS
k=10;
x=randn(k,1);
K=100000;
empdist=randn(K,1);
% Compute empirical cdf for each of element of vector x.
p=exactcdf(x,empdist);
% Compute exact p-values for an unilateral right-tailed test
pval_rt=1-p;
% Compute exact p-values for an unilateral left-tailed test
pval_lt=p;
close all
save tempfileWS