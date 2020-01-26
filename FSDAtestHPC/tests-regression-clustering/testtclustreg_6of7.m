load tempfileWS
X  = load('X.txt');
y1 = X(:,end);
X1 = X(:,1:end-1);
k = 2 ;
restrfact = 5; alpha1 = 0.05 ; alpha2 = 0.01;
nsamp=200;
Cnsamp=subsets(nsamp,n,(size(X1,2)+1)*k);
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'nsamp',Cnsamp);
close all
save tempfileWS