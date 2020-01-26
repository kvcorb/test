load tempfileWS
close all
Y = load('M5data.txt');
id = Y(:,3);
Y = Y(:, 1:2);
G = max(id);
n = length(Y);
noise = length(Y(id==0, 1));
v = 2; % dimensions
id(id==0) = -1; % changing noise label
gg = gscatter(Y(:,1), Y(:,2), id);
str = sprintf('M5 data set with %d groups in %d dimensions and \n%d units where %d%s of them are noise', G, v, n, noise/n*100, '\%');
title(str,'Interpreter','Latex', 'fontsize', 12);
set(findobj(gg), 'MarkerSize',12);
legend1 = legend(gca,'Outliers','Group 1','Group 2','Group 3');
set(legend1,'LineWidth',1,'Interpreter','latex','FontSize',12, 'Location', 'northwest')
% number of components to search
k = G*5;
% null trimming and noise level
alpha0 = 0;
% mimimum overlap cut-off value between pair of merged components
omegaStar = 0.045;
DEMP = dempk(Y, k, G, 'alpha', alpha0, 'tkmeansOut', 1, 'plots', 1);
% setting alpha equal to noise level (usually not appropriate)
alpha = noise/n;
DEMP2 = dempk(Y, k, G, 'alpha', alpha, 'tkmeansOut', 1, 'plots', 1);
% setting alpha greater than the noise level (almost always appropriate)
DEMP3 = dempk(Y, k, G, 'alpha', alpha+0.04, 'tkmeansOut', 1, 'plots', 1);
cascade;
close all
save tempfileWS