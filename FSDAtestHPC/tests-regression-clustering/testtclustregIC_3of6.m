load tempfileWS
rng(372,'twister');
p=3;
k=2;
Q=MixSimreg(k,p,'BarOmega',0.001);
n=500;
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
yXplot(y,X,id);
% run tclustreg with alphaX=1 that is using CWM.
out = tclustregIC(y,X(:,2:end),'alphaLik',0.0,'alphaX',1);
close all
tclustICplot(out,'whichIC','CLACLA')
close all
save tempfileWS