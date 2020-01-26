load tempfileWS
rng(372,'twister');
p=3;
k=2;
Q=MixSimreg(k,p,'BarOmega',0.001);
n=500;
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
% plot the dataset
yXplot(y,X);
% run tclustreg
out=tclustreg(y,X(:,2:end),k,50,0.01,0.01,'intercept',1);
close all
save tempfileWS