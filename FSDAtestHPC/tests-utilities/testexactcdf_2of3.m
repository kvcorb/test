load tempfileWS
k=10;
x=randn(k,1);
K=100000;
empdist=randn(K,1);
% Compute empirical cdf for each element of vector x.
p=exactcdf(x,empdist);
% Compute theoretical cdf based on normcdf
pTheo=normcdf(x);
% Compare empirical cdf with theoretical cdf 
plot(p,pTheo,'o')
xlabel('Empirical cdf')
ylabel('Theoretical cdf')
close all
save tempfileWS