load tempfileWS
rng(191372,'twister');
p=3;
k=4;
Q=MixSimreg(k,p,'BarOmega',0.001);
n=200;
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
yXplot(y,X,id);
% CWM with no contrainst on cov(X) 
out = tclustregIC(y,X(:,2:end),'alphaX',1,'ccSigmaX',10^10);
tclustICplot(out,'whichIC','MIXMIX')
close all
save tempfileWS