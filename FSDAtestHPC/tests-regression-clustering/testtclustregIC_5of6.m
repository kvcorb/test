load tempfileWS
rng(372,'twister');
p=3;
k=4;
Q=MixSimreg(k,p,'BarOmega',0.001);
n=200;
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
yXplot(y,X,id);
% Just consider two values for the restriction factor
out = tclustregIC(y,X(:,2:end),'alphaX',1,'cc',[2 6],'kk',3:6);
tclustICplot(out,'whichIC','MIXMIX')
close all
save tempfileWS