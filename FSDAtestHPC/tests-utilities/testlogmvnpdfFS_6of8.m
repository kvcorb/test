load tempfileWS
msg=0;
X0=X;
eyed=eye(v);
y = logmvnpdfFS(X,mu,Sigma,X0,eyed,n,v,msg);
%  enables to control the display of the error message on the cov matrix
close all
save tempfileWS