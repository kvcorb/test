load tempfileWS
load fisheriris;
Y=meas;
Mu=grpstats(Y,species);
S=zeros(4,4,3);
S(:,:,1)=cov(Y(1:50,:));
S(:,:,2)=cov(Y(51:100,:));
S(:,:,3)=cov(Y(101:150,:));
pigen=ones(3,1)/3;
% Add 100 outliers and specify a very small value of alpha
noisevars=0;
noiseunits=struct;
noiseunits.number=100;
noiseunits.alpha=0.000001;
% In this case the first argument which is supplied to simdataset is
% the original matrix X
[Ywithnoise,id]=simdataset(Y, pigen, Mu, S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(Ywithnoise,id,[],'box');
title('4 groups with outliers from uniform')
close all
save tempfileWS