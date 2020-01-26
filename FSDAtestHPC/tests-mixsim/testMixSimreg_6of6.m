load tempfileWS
rng(10,'twister')
clear all
close all
intercept = 1;
n=200;
p=1;
k=2;
Xdistrib=struct;
Xdistrib.intercept=intercept;
Xdistrib.type='Uniform';
Xdistrib.a=zeros(p,k);
Xdistrib.b=10*ones(p,k);
% beta distributed as HalfNormal
betadistrib=struct;
betadistrib.type='HalfNormal';
betadistrib.sigma=6;
% beta distributed as normal
betadistrib1=struct;
betadistrib1.type='Normal';
betadistrib2 = betadistrib1;
betadistrib1.mu=  -1;
betadistrib1.sigma=1;
betadistrib2.mu=[-1 , 1];
betadistrib2.sigma=[0.01 , 1];
Q1=MixSimreg(k,p+intercept,'BarOmega',0.01,'Xdistrib',Xdistrib,'betadistrib',betadistrib1);
Q2=MixSimreg(k,p+intercept,'BarOmega',0.01,'Xdistrib',Xdistrib,'betadistrib',betadistrib2);
[y1,X1,id1]=simdatasetreg(n,Q1.Pi,Q1.Beta,Q1.S,Q1.Xdistrib);
[y2,X2,id2]=simdatasetreg(n,Q2.Pi,Q2.Beta,Q2.S,Q2.Xdistrib);
yXplot(y1,X1,'group',id1,'tag','scalar')
title('Betadistrib is a scalar: same parameters for all betas')
yXplot(y2,X2,'group',id2,'tag','vector')
title('Betadistrib is a vector: a parameter for each beta')
cascade;
close all
save tempfileWS