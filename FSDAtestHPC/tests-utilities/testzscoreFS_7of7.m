load tempfileWS
p=3;
X=randn(100,p);
loc='median';
scale=['modmad' num2str(p)];
% Project the data using v vectors   
v=10;
proj=randn(p,v);
Y=X*proj;
% Standardize the n projected points using median and modified MAD
% Note that Y has v columns but the original matrix X has p columns
[Z,Mu1,Sigma1]=zscoreFS(Y,loc,scale);
close all
save tempfileWS