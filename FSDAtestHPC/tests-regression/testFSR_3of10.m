load tempfileWS
n=200;
p=3;
X=rand(n,p);
y=rand(n,1);
[out]=FSR(y,X,'init',60,'plots',0);
close all
save tempfileWS