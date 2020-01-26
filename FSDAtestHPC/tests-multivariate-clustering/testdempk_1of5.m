close all
% Specify k cluster in v dimensions with n obs
k = 10;
v = 2;
n = 5000;
% Generate homogeneous and spherical clusters
rng(100, 'twister');
out = MixSim(k, v, 'sph', true, 'hom', true, 'int', [0 10], 'Display', 'off', 'BarOmega', 0.05, 'Display','off');
% Simulating data
[X, id] = simdataset(n, out.Pi, out.Mu, out.S);
% Plotting data
gscatter(X(:,1), X(:,2), id);
str = sprintf('Simulated data with %d groups in %d dimensions and %d units', k, v, n);
title(str,'Interpreter','Latex');
% merging algorithm based on hierarchical clustering
g = 3;
DEMP = dempk(X, k*5, g, 'plots', 'contourf');
% merging algorithm based on the threshold value omega star
g = 0.01;
DEMP2 = dempk(X, k*5, g, 'plots', 'contour');
cascade;
close all
save tempfileWS