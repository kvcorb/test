load tempfileWS
X=load('X.txt');
out=lga(X,4,'niter',1000,'biter',3000);
close all
save tempfileWS