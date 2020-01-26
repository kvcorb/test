load tempfileWS
state=100;
randn('state', state);
n=100;
X=randn(n,3);
bet=[3;4;5];
y=3*randn(n,1)+X*bet;
y(1:20)=y(1:20)+13;
%For outlier detection we consider both the nominal individual 1%
%significance level and the simultaneous Bonferroni confidence level.
% Define nominal confidence level
conflev=[0.99,1-0.01/length(y)];
% Define number of subsets
nsamp=3000;
% MM  estimators
[outMM]=MMregeda(y,X,'conflev',conflev(1));
laby='Scaled MM residuals';
resfwdplot(outMM)
close all
save tempfileWS