load tempfileWS
n=100;
y=randn(n,1);
X=randn(n,4);
[out]=Sregeda(y,X);
% Produce  resfwdplot
resfwdplot(out);
close all
save tempfileWS