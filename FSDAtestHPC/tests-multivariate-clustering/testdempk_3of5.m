load tempfileWS
close all
% Specify k cluster in v dimensions with n obs
g = 3;
v = 2;
n = 5000;
% null trimming and noise level
alpha0 = 0;
% restriction factor
restr = 30;
% Maximum overlap
maxOm = 0.005;
% Generate heterogeneous and elliptical clusters
rng(500, 'twister');
out = MixSim(g, v, 'sph', false, 'restrfactor', restr, 'int', [0 10], ...
'Display', 'off', 'MaxOmega', maxOm, 'Display','off');
% Simulating data
[X, id] = simdataset(n, out.Pi, out.Mu, out.S);
% Plotting data
gg = gscatter(X(:,1), X(:,2), id);
str = sprintf('Simulated data with %d groups in %d dimensions and %d \nunits, with restriction factor %d and maximum overlap %.2f', ...
g, v, n, restr, maxOm);
title(str,'Interpreter','Latex', 'fontsize', 12);
set(findobj(gg), 'MarkerSize',10);
legend1 = legend(gca,'Group 1','Group 2','Group 3');
set(legend1,'LineWidth',1,'Interpreter','latex','FontSize',12, 'Location', 'northwest')
% number of components searched by tkmeans
disp('RUNNING TKMEANS WITH 18 COMPONENTS; THEN MERGING WITH dempk');
k = g * 6;
% additional input for clusterdata (i.e. hierOpt)
linkagearg = 'weights';
DEMP = dempk(X, k, g, 'linkagearg', linkagearg, 'plots', 'ellipse');
cascade;
close all
save tempfileWS