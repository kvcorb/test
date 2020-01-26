% The dataset presents two parallel components without contamination.
X  = load('X.txt');
y1 = X(:,end);
X1 = X(:,1:end-1);
k = 2 ;
restrfact = 5; alpha1 = 0.05 ; alpha2 = 0.01;
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2);
restrfact = 2; alpha1 = 0.05 ; alpha2 = 0.01;
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'mixt',2);
% Comparison with robust linear grouping
out = rlga(X,k,alpha2);
close all
save tempfileWS