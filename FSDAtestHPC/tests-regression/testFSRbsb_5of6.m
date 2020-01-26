load tempfileWS
load('fishery');
y=fishery.data(:,1);
X=fishery.data(:,2);
[out]=LXS(y,X);
bsb=out.bs;
[Un,BB] = FSRbsb(y,X,out.bs,'intercept','0');
close all
save tempfileWS