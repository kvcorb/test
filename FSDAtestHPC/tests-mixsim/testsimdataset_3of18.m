load tempfileWS
rng('default')
rng(100)
out = MixSim(4,2,'BarOmega',0.01);
n=300;
noisevars=0;
noiseunits=3000;
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noisevars',noisevars,'noiseunits',noiseunits);
spmplot(X,id);
title('4 groups with outliers from uniform')
close all
save tempfileWS