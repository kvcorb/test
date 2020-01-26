load tempfileWS
close all
% Specify k cluster in v dimensions with n obs
k = 3;
v = 2;
n = 50000;
% restriction factor
restr = 30;
% Maximum overlap
maxOm = 0.005;
% Generate heterogeneous and elliptical clusters
rng('default') 
rng(500, 'twister');
out = MixSim(k, v, 'sph', false, 'restrfactor', restr, 'int', [0 10], ...
'Display', 'off', 'MaxOmega', maxOm, 'Display','off');
% null noise 
alpha0 = 0;
% Simulating data
[X, id] = simdataset(n, out.Pi, out.Mu, out.S, 'noiseunits', alpha0);
% Plotting data
gg = gscatter(X(:,1), X(:,2), id);    
str = sprintf('Simulated data with %d groups in %d dimensions and %d units, \n with restriction factor %d and maximum overlap %.2f', ... 
k, v, n, restr, maxOm); 
title(str,'Interpreter','Latex');
% use tkmeans for a larger number of cluster and without trimming
tkm = tkmeans(X, k*3, 0,'plots', 2,'Ysave',true, 'plots', 'ellipse'); 
% overlap map with interctive mode
overl = overlapmap(tkm, 'omegaStar', 0.01, 'plots', 'contourf'); 
cascade;
close all
save tempfileWS