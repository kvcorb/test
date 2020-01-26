load tempfileWS
rng(372,'twister');
p=3;
k=2;
Q=MixSimreg(k,p,'BarOmega',0.001);
n=500;
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
% run rlga
out=rlga([y,X(:,2:end)],k,0.01);
close all
save tempfileWS