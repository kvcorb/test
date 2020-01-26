load tempfileWS
load('fishery');
y=fishery.data(:,2);
X=fishery.data(:,1);
% Find starting subset
[out]=LXS(y,X,'nsamp',10000);
[mdr,Un,BB,Bols,S2] = FSRmdr(y,X,out.bs);
plot(S2(:,1),S2(:,2))
title('Monitoring of s2')
close all
save tempfileWS