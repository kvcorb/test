rng(10,'twister')
out=MixSim(3,4)
n=200;
[X,id]=simdataset(n, out.Pi, out.Mu, out.S);
spmplot(X,id)
close all
save tempfileWS