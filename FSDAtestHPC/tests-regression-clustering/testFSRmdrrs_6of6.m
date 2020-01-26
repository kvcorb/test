load tempfileWS
load('fishery.txt');
y=fishery(:,2);
X=fishery(:,1);
% traditional for loop is used
[mdrrs,BBrs]=FSRmdrrs(y,X,'nsimul',100,'plots',1,'numpool',0);
close all
save tempfileWS