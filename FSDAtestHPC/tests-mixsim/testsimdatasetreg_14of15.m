load tempfileWS
clear all
close all
rng(1234,'twister');
% mixture parameters
intercept = 0; % 1/0 = intercept yes/no
p=1+intercept;
k=2;
n=200;
% beta distributed as halfnormal
betadistrib=struct;
betadistrib.type='HalfNormal';
betadistrib.sigma=3;
% explanatory variables distribution chosen by the User from a beta
XdistribB=struct;
XdistribB.intercept=intercept;
XdistribB.type='User';
X1=random('beta',1,5,n,1);             % data generation: user distribution is a beta
XdistribB.BarX = ones(1,k)*mean(X1);   % mean of the generated data: one per group
% overlap level baromega: chosen at random here, in a given range
mino = 0.01; maxo = 0.1;
baromega = mino + (maxo-mino).*rand(1,1);
% estimated mixsim parameters
Q=MixSimreg(k,p,'BarOmega',baromega,'Xdistrib',XdistribB,'betadistrib',betadistrib);
% Simulate the data from the mixim parameters and the user values for X
if intercept
Q.Xdistrib.X = [ones(n,1) X1];
else
Q.Xdistrib.X = X1;
end
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
yXplot(y,X,'group',id,'tag','X_beta');
set(gcf,'Name','X Beta distributed');
title('User-defined distribution for X');
close all
save tempfileWS