load tempfileWS
% Compare MLE estimator with MDPD estimator (EX4).
% Scenario as in example 4 of Durio and Isaia (2011)
% 180 points generated according to the model
% Y  = 0.25*X1+eps
% X1~U(0,0.5) eps~N(0,0.1^2)
% and n2 = 20 points (outliers), drawn from the model
% Y  = 0.25*X2+eps
% X2~U(0.5,1) eps~N(0,0.1^2)
% and m points (m=5, 10, 20, 30 40, 50)
% Y  = 0.7*X3+eps3
% X3~U(0.7,1) eps3~N(0,0.05^2)
close all;
sig  = 0.1;
p    = 1;
n1   = 180;
eps1 = randn(n1,1);
X1   = rand(n1,p)*0.5;
y1   = X1+sig*eps1;
n2   = 20;
eps2 = randn(n2,1);
X2   = rand(n2,p)*0.5+0.5;
y2   = X2+sig*eps2;
% Additional m points
m    = 5;
X3   = rand(m,p)*0.3+0.7;
eps3 = randn(m,1);
y3   = X3+0.05*eps3;
y    = [y1;y2;y3];
X    = [X1;X2;X3];
group= 3*ones(n1+n2+m,1);
group(1:n1)=1;
group(n1+1:n1+n2)=2;
yXplot(y,X,group)
[out] = mpdpR(y, X, 1);
h1=subplot(2,1,1);
resindexplot(out,'h',h1);
title('alpha=1','FontSize',15);
n=n1+n2;
h2=subplot(2,1,2);
% MLE estimate
[outalpha0] = mpdpR(y, X, 0);
resindexplot(outalpha0,'h',h2);
title('alpha=0','FontSize',15);
% Compare robust and MLE estimate
disp(table(outalpha0.beta,out.beta,'VariableNames',{'MLE alpha=0' 'MD alpha=1'}))
close all
save tempfileWS