load tempfileWS
load('fishery.txt');
y=fishery(:,2);
X=fishery(:,1);
% parfor of Parallel Computing Toolbox is used (if installed)
figure
[mdrrs,BBrs]=FSRmdrrs(y,X,'nsimul',100,'plots',1);
close all
save tempfileWS