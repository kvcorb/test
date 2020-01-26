load('fishery');
y=fishery.data(:,1);
X=fishery.data(:,2);
[out]=LXS(y,X,'nsamp',10000);
Un = FSRbsb(y,X,out.bs);
close all
save tempfileWS