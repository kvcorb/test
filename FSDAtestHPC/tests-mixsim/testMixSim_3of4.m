load tempfileWS
state1=2;
randn('state', state1);
rand('state', state1);
out=MixSim(3,5,'BarOmega',0.1, 'MaxOmega',0.2, 'restrfactor',1.1);
state1=2;
randn('state', state1);
rand('state', state1);
out1=MixSim(3,5,'BarOmega',0.1, 'MaxOmega',0.2);
n=200;
[X,id]=simdataset(n, out.Pi, out.Mu, out.S);
spmplot(X,id,[],'box');
set(gcf,'Name','restrfactor=1.1: almost homogeneous groups')
title('\texttt{restrfactor=1.1}: almost homogeneous groups','fontsize',17,'interpreter','latex');
[X1,id1]=simdataset(n, out1.Pi, out1.Mu, out1.S);
figure;
spmplot(X1,id1,[],'box')
set(gcf,'Name','Heterogeneous groups')
title('\texttt{restrfactor=`''}: heterogeneous groups','fontsize',17,'interpreter','latex')
cascade
close all
save tempfileWS