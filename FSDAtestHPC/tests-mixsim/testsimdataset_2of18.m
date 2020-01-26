load tempfileWS
rng('default')
rng(100)
out = MixSim(4,2,'BarOmega',0.01);
n=300;
[X,id]=simdataset(n, out.Pi, out.Mu, out.S);
spmplot(X,id);
title('4 groups without noise and outliers')
close all
save tempfileWS