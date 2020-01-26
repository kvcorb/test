load('loyalty.txt','loyalty');
y=loyalty(:,4);
X=loyalty(:,1:3);
[outLXS]=LXS(y,X,'nsamp',1000);
[out]=FSReda(y,X,outLXS.bs);
mdrplot(out);
close all
save tempfileWS