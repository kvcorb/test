close all
rng('default')
rng(10);
n1=100;
n2=100;
v=3;
Y1=rand(n1,v);
Y2=rand(n2,v)+1;
Y=[Y1;Y2];
group=[ones(n1,1);2*ones(n2,1)];
spmplot(Y,group);
title('Two simulated groups')
Y=[Y1;Y2];
close all
% parfor of Parallel Computing Toolbox is used (if present in current computer)
% and pool is cleaned after the execution of the random starts
% The number of workers which is used is the one specified
% in the local/current profile
[out]=FSMmmdrs(Y,'nsimul',100,'init',10,'plots',1);
ylim([2 5])
disp('The two peaks in the trajectories of minimum Mahalanobis distance (mmd).')
disp('clearly show the presence of two groups.')
disp('The decrease after the peak in the trajectories of mmd is due to the masking effect.')
close all
save tempfileWS