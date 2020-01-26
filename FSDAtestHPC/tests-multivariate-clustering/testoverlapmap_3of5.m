load tempfileWS
close all
% Specify k cluster in v dimensions with n obs
k = 8;
v = 4;
n = 5000;
% Generate 8 homogeneous spherical clusters
rng('default') 
rng(10, 'twister');
out = MixSim(k, v, 'sph', true, 'hom', true, 'int', [0 10], 'Display', ...
'off', 'MaxOmega', 0.005, 'Display','off');
% 5 percent noise 
alpha0 = 0.05*n;
% Simulating data
[X, id] = simdataset(n, out.Pi, out.Mu, out.S, 'noiseunits', alpha0);
% Plotting data
figure;
spmplot(X, 'group', id);
str = sprintf('Simulated data with %d groups in %d dimensions and %d units', k, v, n);
title(str,'Interpreter','Latex');
% overlap map on simdataset output
Inputs.Y = X;
Inputs.idx = id;
overlapmap(Inputs, 'plots', 'contourf');
% overlap map on tkmeans solution for simdataset output 
out = tkmeans(X, k*4, 0.05, 'plots', 'contourf', 'Ysave', true);
overlapmap(out, 'plots', 'contourf');
out = tclust(X, 10, 0.05, 100, 'plots', 'contour', 'Ysave', true);
overlapmap(out, 'plots', 'contourf');
cascade;
close all
save tempfileWS