load tempfileWS
xx=load('wool.txt');
X=xx(:,1:3);
y=log(xx(:,4));
[out]=LXS(y,X,'nsamp',0);
[out]=FSReda(y,X,out.bs,'tstat','scal');
close all
save tempfileWS