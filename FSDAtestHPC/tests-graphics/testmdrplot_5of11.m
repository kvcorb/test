load tempfileWS
state = 137; state1=4567;
rand('state', state);
randn('state', state1);
X=randn(200,3);
y=chi2rnd(8,200,1);
[outLXS]=LXS(y,X,'nsamp',1000);
[out]=FSReda(y,X,outLXS.bs);
mdrplot(out,'sign',1);
close all
save tempfileWS