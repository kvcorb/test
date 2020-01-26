load tempfileWS
n=72;
p=10;
bdp=0.27;
robest='LTS';
eff='';
rhofunc='';
sizesim=1;
Tallis=1;
thresh=RobRegrSize(n,p,robest,rhofunc,bdp,eff,sizesim,Tallis);
close all
save tempfileWS