load tempfileWS
rng('default')
rng(100)
p=4; % p includes the intercept
k=2;
out=MixSimreg(k,p,'BarOmega',0.01);
n=300;
noisevars=0;
noiseunits=300;
[y,X,id]=simdatasetreg(n, out.Pi, out.Beta, out.S, out.Xdistrib,'noisevars',noisevars,'noiseunits',noiseunits);
yXplot(y,X,'group',id);
suplabel('2 regression lines with outliers from uniform','t')
close all
save tempfileWS