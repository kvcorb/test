load tempfileWS
% Compute minimum deletion residual and start monitoring it from step
% 60.
load('fishery');
y=fishery.data(:,2);
X=fishery.data(:,1);
% Find starting subset
[out]=LXS(y,X,'nsamp',10000);
[mdr] = FSRmdr(y,X,out.bs,'init',60);
close all
save tempfileWS