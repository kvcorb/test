load tempfileWS
load('loyalty.txt');
y=loyalty(:,4);
X=loyalty(:,1:3);
la=[-1 -0.5 0 0.5 1];
[out]=FSRfan(y,X,'la',la);
fanplot(out,'datatooltip',1);
close all
save tempfileWS