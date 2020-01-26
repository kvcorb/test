load tempfileWS
load('loyalty.txt');
y=loyalty(:,4);
X=loyalty(:,1:3);
% la = vector contanining the most common values of the transformation
% parameter
la=[-1 -0.5 0 0.5 1];
[out]=FSRfan(y,X,'la',la);
fanplot(out);
close all
save tempfileWS