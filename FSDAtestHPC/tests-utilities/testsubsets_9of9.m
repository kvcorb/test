load tempfileWS
clear all; close all;
% parameters
n      = 100;       %number of units
p      = 2;         %number of variables
k      = 3;         %number of groups
nsamp  = 500;       %number of samples
ncomb  = bc(n,p);
msg    = 0;
% A dataset simulated using MixSim
rng(372,'twister');
Q=MixSimreg(k,p,'BarOmega',0.001);
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
% Some user-defined weights for weighted sampling, provided as a vector of "method" option.
method = [1*ones(n/2,1); ones(n/2,1)];
% C must be a nsamp-by-k*p matrix, to contain the extraction of nsamp p-combinations k times.
% This can be easily done as follows:
for i=1:k
Ck(:,(i-1)*p+1:i*p) = subsets(nsamp, n, p, ncomb, msg, method);
end
% Ck is then provided, e.g., to tclustreg as follows:
out=tclustreg(y,X,k,50,0.01,0.01,'nsamp',Ck);
close all
save tempfileWS