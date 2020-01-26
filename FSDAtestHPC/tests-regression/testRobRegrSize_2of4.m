load tempfileWS
n=93;
p=5;
bdp='';
eff=0.85;
robest='MM';
rhofunc='ST';
sizesim=1;
thresh=RobRegrSize(n,p,robest,rhofunc,bdp,eff,sizesim);
close all
save tempfileWS