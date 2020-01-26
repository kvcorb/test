% Monitor minimum deletion residual in each step of the forward search.
% Common part to all examples: load fishery dataset.
load('fishery');
y=fishery.data(:,2);
X=fishery.data(:,1);
% Find starting subset
[out]=LXS(y,X,'nsamp',10000);
[mdr] = FSRmdr(y,X,out.bs);
plot(mdr(:,1),mdr(:,2))
title('Monitoring of minimum deletion residual')
close all
save tempfileWS