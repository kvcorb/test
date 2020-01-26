load tempfileWS
close all
% Specify k cluster in v dimensions with n obs
g = 3;
v = 2;
n = 5000;
% 10 percent trimming and uniform noise
alpha = 0.1;
noise = alpha*n;
% restriction factor
restr = 30;
% Maximum overlap
maxOm = 0.005;
% Generate heterogeneous and elliptical clusters
rng(500, 'twister');
out = MixSim(g, v, 'sph', false, 'restrfactor', restr, 'int', [0 10], ...
'Display', 'off', 'MaxOmega', maxOm, 'Display','off');
% Simulating data
[X,id] = simdataset(n, out.Pi, out.Mu, out.S, 'noiseunits', noise);
% Plotting data
gg = gscatter(X(:,1), X(:,2), id);
str = sprintf('Simulating %d groups in %d dimensions and %d units with %d%s \nuniform noise, setting a restriction factor %d and maximum overlap %.2f', ...
g, v, n, alpha*100, '\%', restr, maxOm);
title(str,'Interpreter','Latex', 'fontsize', 10);
set(findobj(gg), 'MarkerSize',10);
legend1 = legend(gca,'Outliers','Group 1','Group 2','Group 3');
set(legend1,'LineWidth',1,'Interpreter','latex','FontSize',12, 'Location', 'northwest')
% fixing the number of components searched by tkmeans
k = g * 6;
% dempk with hierarchical merging and trimming equal to the level of noise
DEMP = dempk(X, k, g, 'alpha', alpha, 'plots', 'contourf');
% dempk with a threshold value and trimming equal to the level of noise
g = 0.025;
DEMP = dempk(X, k, g, 'alpha', alpha, 'plots', 'contourf');
cascade;
close all
save tempfileWS