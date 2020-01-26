load tempfileWS
load('fishery');
y=fishery.data(:,2);
X=fishery.data(:,1);
% Find starting subset
[out]=LXS(y,X,'nsamp',10000);
[mdr,Un,BB] = FSRmdr(y,X,out.bs);
close all
save tempfileWS