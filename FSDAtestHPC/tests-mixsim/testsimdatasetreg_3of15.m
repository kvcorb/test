load tempfileWS
clear all
close all
rng('default')
rng(10000)
p=2;  % p includes the intercept
k=4;
out=MixSimreg(k,p,'BarOmega',0.01);
n=300;
noisevars=0;
noiseunits=3000;
[y,X,id]=simdatasetreg(n, out.Pi, out.Beta, out.S, out.Xdistrib,'noisevars',noisevars,'noiseunits',noiseunits);
yXplot(y,X,'group',id);
suplabel('2 regression lines with outliers from uniform','t')
close all
save tempfileWS