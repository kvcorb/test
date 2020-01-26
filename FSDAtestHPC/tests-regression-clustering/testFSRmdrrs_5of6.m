load tempfileWS
load('fishery.txt');
y=fishery(:,2);
X=fishery(:,1);
% parfor of Parallel Computing Toolbox is used (if present in current
% computer)
figure
[mdrrs,BBrs]=FSRmdrrs(y,X,'nsimul',100,'plots',1,'bsbsteps',[10 300 600]);
% sum(~isnan(BBrs(:,1,1)))
%
% ans =
%
%     10
%
% sum(~isnan(BBrs(:,2,1)))
%
% ans =
%
%    300
%
% sum(~isnan(BBrs(:,3,1)))
%
% ans =
%
%    600
close all
save tempfileWS