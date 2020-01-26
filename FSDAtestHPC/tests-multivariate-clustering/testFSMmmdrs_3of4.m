load tempfileWS
% Therefore the value of mmd becomes much smaller than it should be.
% Please note the dip around step m=140, which is due to entrance of the
% units of the second larger group. This trajectory just after the dip
% collapses into the trajectory which starts from the second group.
% Please use
% mdrrsplot with option databrush in order to explore the units
% belonging to subset. Here we limit ourselves to notice that around m
% =180 all the units from second group are included into subset (plus
% some of group 1 given that the two groups partially overlap). Also
% notice once again the decrease in the unique trajectory of minimum
% Mahalanobis residual after m around 180 which is due to the entry of the
% units of the first smaller group.
close all
rng('default')
rng(10);
n1=60;
n2=150;
v=3;
Y1=randn(n1,v);
Y2=randn(n2,v)+3;
Y=[Y1;Y2];
group=[ones(n1,1);2*ones(n2,1)];
spmplot(Y,group);
title('Two simulated groups')
Y=[Y1;Y2];
figure
% parfor of Parallel Computing Toolbox is used (if present in current
% computer). Parallel pool is not closed after the execution of the random starts
[out]=FSMmmdrs(Y,'nsimul',100,'init',10,'plots',1);
close all
save tempfileWS