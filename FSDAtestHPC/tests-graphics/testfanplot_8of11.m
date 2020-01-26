load tempfileWS
load('loyalty.txt');
y=loyalty(:,4);
X=loyalty(:,1:3);
la=[0 1/3 0.4 0.5];
[out]=FSRfan(y,X,'la',la,'init',size(X,2)+2,'nsamp',20000);
fanplot(out,'xlimx',[100 300],'conflev',0.95);
close all
save tempfileWS