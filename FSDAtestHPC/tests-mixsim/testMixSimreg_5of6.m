load tempfileWS
% In this example we compare high and low overlap among regression hyperplanes
p=1;
k=4;
Xdistrib=struct;
Xdistrib.intercept=0;
Xdistrib.type='Uniform';
Xdistrib.a=zeros(p,k);
Xdistrib.b=[4 2 10 5];
betadistrib=struct;
betadistrib.type='HalfNormal';
betadistrib.sigma=6;
n=200;
% Strong overlap BarOmega=0.2
close all
rng(10,'twister')
Q=MixSimreg(k,p,'BarOmega',0.2,'Xdistrib',Xdistrib,'betadistrib',betadistrib);
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
yXplot(y,X,'group',id,'tag','Strong_Overlap')
set(gcf,'Name','Strong overlap')
% Small overlap BarOmega=0.01
rng(10,'twister')
Q=MixSimreg(k,p,'BarOmega',0.01,'Xdistrib',Xdistrib,'betadistrib',betadistrib);
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
yXplot(y,X,'group',id,'tag','Small_Overlap')
set(gcf,'Name','Small overlap')
close all
save tempfileWS