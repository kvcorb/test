load tempfileWS
close all;
sig  = 0.1;
p    = 4;
n1   = 480;
eps1 = randn(n1,1);
X1   = rand(n1,p);
bet1 = 0.25*ones(p,1);
y1   = X1*bet1+sig*eps1;
n2   = 120;
eps2 = randn(n2,1);
X2   = rand(n2,p);
bet2 = 0.35*ones(p,1);
y2   = X2*bet2+sig*eps2;
y    = [y1;y2];
X    = [X1;X2];
group= 2*ones(n,1);
group(1:n1)=1;
yXplot(y,X,group)
[out] = mpdpR(y, X, 1);
h1 = subplot(2,1,1);
resindexplot(out,'h',h1);
title('alpha=1','FontSize',15);
n = n1+n2;
h2=subplot(2,1,2);
% MLE estimate
[outalpha0] = mpdpR(y, X, 0);
resindexplot(outalpha0,'h',h2);
title('alpha=0','FontSize',15);
% Compare robust and MLE estimate
disp(table(outalpha0.beta,out.beta,'VariableNames',{'MLE alpha=0' 'MD alpha=1'}))
close all
save tempfileWS