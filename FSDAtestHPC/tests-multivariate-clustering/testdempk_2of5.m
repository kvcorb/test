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
legend1 = legend(gca,'show');
set(legend1,'LineWidth',1,'Interpreter','latex','FontSize',14, 'Location', 'northwest')
% number of components searched by tkmeans
k = g * 6;
% additional input for tkmeans
tkmeansOpt = struct;
tkmeansOpt.reftol = 0.0001;
tkmeansOpt.msg = 1;
tkmplots = struct;
tkmplots.type = 'contourf';
tkmplots.cmap = [0.3 0.2 0.4; 0.4 0.5 0.5; 0.1 0.7 0.9; 0.5 0.3 0.8; 1 1 1];
tkmeansOpt.plots = tkmplots;
tkmeansOpt.nomes = 0;
% saving tkmeans output
tkmeansOut = 1;
DEMP = dempk(X, k, g, 'tkmeansOpt', tkmeansOpt, 'plots', 'ellipse');
cascade;
close all
save tempfileWS