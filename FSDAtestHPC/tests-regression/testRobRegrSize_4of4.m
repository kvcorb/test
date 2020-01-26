load tempfileWS
n=100;
p=5;
bdp=0.3;
robest='S';
eff='';
rhofunc='HY';
sizesim=1;
Tallis=1;
thresh=RobRegrSize(n,p,robest,rhofunc,bdp,eff,sizesim,Tallis);
close all
save tempfileWS