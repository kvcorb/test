load tempfileWS
clear all; close all;
load fishery;
X = fishery.data;
% some jittering is necessary because duplicated units are not treated:
% this needs to be addressed
X = X + 10^(-8) * abs(randn(677,2));
%tclustreg on fishery data
y1 = X(:,end);
X1 = X(:,1:end-1);
k = 3 ; restrfact = 50; alpha1 = 0.04 ; alpha2 = 0.01;
out = tclustreg(y1,X1,k,restrfact,alpha1,alpha2,'intercept',0,'mixt',0);
%lga and rlga on fishery data
figure('name','RLGA');
out=lga(X,3);
clickableMultiLegend('1','2','3','data1','data2','data3');
axis manual;
alpha = 0.95;
figure('name','LGA');
out=rlga(X,3,1-alpha);
clickableMultiLegend('0','1','2','3','data1','data2','data3');
axis manual;
close all
save tempfileWS