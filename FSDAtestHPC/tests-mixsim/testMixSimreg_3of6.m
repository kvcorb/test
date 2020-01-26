load tempfileWS
rng(10,'twister')
p=5;
k=3;
% Specify the distribution of the explanatory variables
Xdistrib=struct;
Xdistrib.type='Uniform';
Xdistrib.a=zeros(p-1,k);
Xdistrib.a(2,3)=1;
Xdistrib.b=ones(p-1,k);
Xdistrib.b(2,3)=3;
% Specify the distribution of the beta coefficients
betadistrib=struct;
betadistrib.type='Normal';
betadistrib.sigma=6;
Q=MixSimreg(k,p,'BarOmega',0.01,'Xdistrib',Xdistrib,'betadistrib',betadistrib);
n=200;
% Probabilitties of overlapping are evaluated at
% Q.Beta(:,1)'*Q.Xdistrib.BarX(:,1) ... Q.Beta(:,3)'*Q.Xdistrib.BarX(:,3)
% Q.betadistrib in this case is equal to
%      type: 'Normal'
%     sigma: 6
%        mu: 0.5000
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
yXplot(y,X(:,2:end),'group',id)
close all
save tempfileWS