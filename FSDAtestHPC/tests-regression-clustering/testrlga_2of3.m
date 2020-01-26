load tempfileWS
X=load('X.txt');
out=rlga(X,4,0.05,'niter',500,'biter',1000);
close all
save tempfileWS