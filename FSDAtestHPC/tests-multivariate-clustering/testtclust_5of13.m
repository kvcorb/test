load tempfileWS
close all
Y=load('M5data.txt');
% plot(Y(:,1),Y(:,2),'o')
% Scatter plot matrix with univariate boxplot on the main diagonal
spmplot(Y(:,1:2),Y(:,3),[],'box')
out=tclust(Y(:,1:2),3,0,1000,'nsamp',100,'plots',1)
out=tclust(Y(:,1:2),3,0,10,'nsamp',100,'plots',1)
out=tclust(Y(:,1:2),3,0.1,1,'nsamp',1000,'plots',1,'equalweights',1)
out=tclust(Y(:,1:2),3,0.1,1000,'nsamp',100,'plots',1)
cascade
close all
save tempfileWS