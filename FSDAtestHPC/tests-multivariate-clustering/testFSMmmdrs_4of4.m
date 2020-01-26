load tempfileWS
load('fishery.txt');
Y=fishery(:,1:2);
figure
[out]=FSMmmdrs(Y,'nsimul',100,'init',10,'plots',1,'bsbsteps',[10 300 600]);
% sum(~isnan(out.BBrs(:,1,1)))
%
% ans =
%
%     10
%
% sum(~isnan(out.BBrs(:,2,1)))
%
% ans =
%
%    300
%
% sum(~isnan(out.BBrs(:,3,1)))
%
% ans =
%
%    600
close all
save tempfileWS