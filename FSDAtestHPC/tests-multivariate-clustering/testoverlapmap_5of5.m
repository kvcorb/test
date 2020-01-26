load tempfileWS
clear variables; clc; clf; close all 
% Specify k cluster in v dimensions with n obs
k = 10;
v = 2;
n = 5000;
% Generate homogeneous and spherical clusters
rng('default') 
rng(100, 'twister');
out = MixSim(k, v, 'sph', true, 'hom', true, 'int', [0 10], 'Display', 'off', 'BarOmega', 0.05, 'Display','off');
% Simulating data
[X, id] = simdataset(n, out.Pi, out.Mu, out.S);
% Plotting data
gscatter(X(:,1), X(:,2), id);
str = sprintf('Simulated data with %d groups in %d dimensions and %d units', k, v, n);
title(str,'Interpreter','Latex');
clickableMultiLegend(num2str((1:k)'));
% use tkmeans for a larger number of cluster and without trimming
tkm = tkmeans(X, k*3, 0,'plots', 2,'Ysave',true, 'plots', 'ellipse');
% overlap map with interctive mode
overl = overlapmap(tkm, 'omegaStar', 0.01, 'plots', 'contourf'); 
cascade;
close all
save tempfileWS