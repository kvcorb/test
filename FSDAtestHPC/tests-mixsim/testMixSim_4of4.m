load tempfileWS
clc
close all
rng(10,'twister')
k=4;
v=5;
n=200;
BarOmega=0.10;
StdOmega=0.15;
out=MixSim(k,v,'BarOmega',BarOmega, 'StdOmega',StdOmega,'resN',10, 'Display', 'iter');
[X,id]=simdataset(n, out.Pi, out.Mu, out.S);
rng(10,'twister')
StdOmega1=0.05;
out1=MixSim(k,v,'BarOmega',BarOmega, 'StdOmega',StdOmega1,'resN',10, 'Display', 'iter');
[X1,id1]=simdataset(n, out1.Pi, out1.Mu, out1.S);
disp('Comparison using OmegaMap')
disp('When StdOmega is large in this example groups 3 are 4 do show a strong overlap')
disp('When StdOmega is large in this example groups 1, 2, 3 are quite separate')
disp(out.OmegaMap)
disp('When StdOmega is small the probabilities of overlapping are much more similar')
disp(out1.OmegaMap)
disp('Comparison using interactive scatter plot matrices')
spmplot(X,id,[],'box');
set(gcf,'name',['BarOmega=' num2str(BarOmega) ' StdOmega=' num2str(StdOmega)])
title(['BarOmega=' num2str(BarOmega) ' StdOmega=' num2str(StdOmega)])
figure
spmplot(X1,id1,[],'box');
set(gcf,'name',['BarOmega=' num2str(BarOmega) ' StdOmega=' num2str(StdOmega1)])
title(['BarOmega=' num2str(BarOmega) ' StdOmega=' num2str(StdOmega1)])
cascade
close all
save tempfileWS