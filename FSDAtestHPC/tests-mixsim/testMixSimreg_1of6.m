p=5;
k=3;
Q=MixSimreg(k,p,'BarOmega',0.01);
n=200;
% Q.Xdistrib.BarX in this case has dimension 5-by-3 and is equal to
% 1.0000    1.0000    1.0000
% 0.5000    0.5000    0.5000
% 0.5000    0.5000    0.5000
% 0.5000    0.5000    0.5000
% 0.5000    0.5000    0.5000
% Probabilities of overlapping are evaluated at
% Q.Beta(:,1)'*Q.Xdistrib.BarX(:,1) ... Q.Beta(:,3)'*Q.Xdistrib.BarX(:,3)
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
yXplot(y,X(:,2:end),'group',id);
close all
save tempfileWS