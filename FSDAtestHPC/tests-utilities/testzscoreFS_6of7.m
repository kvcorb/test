load tempfileWS
n=200;
v=3;
q=5;
randn('state', 123456);
Y=randn(n,v,q);
% Contaminated data
Ycont=Y;
Ycont(1:5,:,:)=Ycont(1:5,:,:)+10;
scale='Qn';
loc='mean';
dim=2; % work along rows
[Z,Mu1,Sigma1]=zscoreFS(Ycont,loc,scale,dim);
isequal(Z(3,:,2)',zscoreFS(Ycont(3,:,2),loc,scale))
scale='Qn';
loc='median';
dim=1; % work along columns
[Z,Mu1,Sigma1]=zscoreFS(Ycont,loc,scale,dim);
isequal(Z(:,2,4),zscoreFS(Ycont(:,2,4),loc,scale))
scale='Sn';
loc='median';
dim=3; % work along third dimension
[Z,Mu1,Sigma1]=zscoreFS(Ycont,loc,scale,dim);
isequal(squeeze(Z(7,2,:)),zscoreFS(squeeze(Ycont(7,2,:)),loc,scale))
close all
save tempfileWS