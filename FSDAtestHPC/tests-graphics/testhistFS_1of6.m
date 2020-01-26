close all;
y = randn(500,1);
% four groups
groups = randi(4,500,1);
% number of bins
nbins = 10;
[ng, hb] = histFS(y,nbins,groups);
title('Histogram with default color rotation (brcmykg)','interpreter','latex','FontSize',18);
close all
save tempfileWS