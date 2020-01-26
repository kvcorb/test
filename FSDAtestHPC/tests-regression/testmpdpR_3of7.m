load tempfileWS
% 600 points generated according to the model
% Y=0.5*X1+0.5*X2+eps
% and n2 = 120 points (outliers), drawn from the model
% X1,X2~U(0,1) eps~N(0,0.1^2)
close all;
n   = 600;
p   = 2;
sig = 0.1;
eps = randn(n,1);
X   = rand(n,p);
bet = 0.5*ones(p,1);
y   = X*bet+sig*eps;
[outalpha1] = mpdpR(y, X, 1);
h1 = subplot(2,1,1);
resindexplot(outalpha1,'h',h1);
title('alpha=1','FontSize',15);
h2 = subplot(2,1,2);
[outalpha0] = mpdpR(y, X, 0);
resindexplot(outalpha0,'h',h2);
title('alpha=0','FontSize',15);
close all
save tempfileWS