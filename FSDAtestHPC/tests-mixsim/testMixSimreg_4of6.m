load tempfileWS
rng(10,'twister')
p=1;
k=5;
Xdistrib=struct;
Xdistrib.intercept=0;
Xdistrib.type='Uniform';
Xdistrib.a=zeros(p,k);
Xdistrib.b=10*ones(p,k);
betadistrib=struct;
betadistrib.type='HalfNormal';
betadistrib.sigma=6;
Q=MixSimreg(k,p,'BarOmega',0.01,'Xdistrib',Xdistrib,'betadistrib',betadistrib);
n=200;
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
yXplot(y,X,'group',id)
close all
save tempfileWS