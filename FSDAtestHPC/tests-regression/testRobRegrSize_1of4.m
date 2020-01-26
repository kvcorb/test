n=232;
p=10;
bdp='';
robest='MM';
eff=0.87;
rhofunc='TB';
sizesim=1;
thresh=RobRegrSize(n,p,robest,rhofunc,bdp,eff,sizesim);
close all
save tempfileWS