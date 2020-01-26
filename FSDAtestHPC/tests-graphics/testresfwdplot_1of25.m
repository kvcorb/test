n=100;
y=randn(n,1);
X=randn(n,4);
[out]=LXS(y,X,'nsamp',1000);
[out]=FSReda(y,X,out.bs);
% Produce  resfwdplot
resfwdplot(out);
close all
save tempfileWS