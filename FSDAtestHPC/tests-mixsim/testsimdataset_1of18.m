out = MixSim(4,2,'BarOmega',0.01);
n=60;
[X,id]=simdataset(n, out.Pi, out.Mu, out.S);
%  Simulate dataset with 10 outliers
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noiseunits',10);
%  Simulate dataset with 100 outliers
out = MixSim(4,3,'BarOmega',0.1);
n=300;
[X,id]=simdataset(n, out.Pi, out.Mu, out.S,'noiseunits',100);
spmplot(X,id);
close all
save tempfileWS