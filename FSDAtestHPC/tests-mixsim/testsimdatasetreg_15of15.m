load tempfileWS
clear all
close all
rng(12345,'twister');
% mixture parameters
intercept = 0;      % 1/0 = intercept yes/no
n=200;
p=1+intercept;
k=2;                %do not change k: it would not work (see below to generalise)
% beta distributed as halfnormal
betadistrib=struct;
betadistrib.type='HalfNormal';
betadistrib.sigma=3;
% explanatory variables distribution chosen by the User from a beta
XdistribB=struct;
XdistribB.intercept=intercept;
XdistribB.type='User';
%for i=1:10
% X beta distributed
X2=random('beta',0.5,1,n,1);
muBeta2 = mean(X2);
X1=random('beta',1,0.5,n,1);
muBeta1 = mean(X1);
% data generation: user distribution is a beta
XdistribB.BarX = [muBeta1 muBeta2]; % mean of the generated data: one per group
% overlap level baromega: chosen at random here, in a given range
mino = 0.01; maxo = 0.05;
maxomega = mino + (maxo-mino).*rand(1,1);
% estimated mixsim parameters
Q=MixSimreg(k,p,'hom',true,'MaxOmega',maxomega,'Xdistrib',XdistribB,'betadistrib',betadistrib);
% Simulate the data from the mixim parameters and the user values for X
if intercept
Q.Xdistrib.X = [ones(k*n,1) , [X1 ; X2]];
else
Q.Xdistrib.X = [X1 ; X2];
end
[y,X,id]=simdatasetreg(k*n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
yXplot(y,X,'group',id,'tag','X_beta');
set(gcf,'Name','X Beta distributed');
title('User-defined distribution for X');
close all
save tempfileWS