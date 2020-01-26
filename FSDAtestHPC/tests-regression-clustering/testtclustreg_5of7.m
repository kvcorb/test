load tempfileWS
rng(372,'twister');
p=3;
k=2;
Q=MixSimreg(k,p,'BarOmega',0.001);
n=200;
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
% plot the dataset
yXplot(y,X);
% Generate the elemental subsets used in tclustreg once and for all.
nsamp  = 100;
ncomb  = bc(n,p);
method = [10*ones(n/2,1); ones(n/2,1)]; % weighted sampling using weights in "method"
msg    = 0;
for i=1:k
C(:,(i-1)*p+1:i*p) = subsets(nsamp, n, p, ncomb, msg, method);
end
% tclustreg using samples in C
out=tclustreg(y,X(:,2:end),k,50,0.01,0.01,'nsamp',C);
close all
save tempfileWS