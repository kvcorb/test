load tempfileWS
close all; clear all;
load fishery;
X = fishery.data(:,1);
y = fishery.data(:,2);
n = length(y);
% Bonferronized confidence level
cl = 0.005/n;
% FSRr, with scale rescaled so that R2 is forced to be 0.85 
outFSr = FSRr(y,X,'alpha',cl,'R2th',0.85,'fullreweight',true,'plotsPI',1,'plots',0);
h3 = allchild(gca); a3 = gca; f3 = gcf; set(f3,'visible','off');
% Scatter of outliers detected with R2th=0.85 
FSroutliersr = ones(n,1); FSroutliersr(outFSr.outliersr) = 0;
plo.clr = 'rb'; plo.sym = 'xo'; plo.labeladd = 1;
yXplot(y,X,'group',FSroutliersr,'plo',plo,'tag','FSrfit');
olsline(1)
price_FSr = X(logical(FSroutliersr))\y(logical(FSroutliersr));
h4 = allchild(gca); a4 = gca; f4 = gcf; set(f4,'visible','off');
% move the figures above into a single one with two panels
figure; ax3 = subplot(2,1,1); ax4 = subplot(2,1,2);
copyobj(h3,ax3); copyobj(h4,ax4); 
xlabel('Quantity-Ton','Fontsize',14); 
ylabel(ax3,'Value-1000euro','Fontsize',14);
ylabel(ax4,'Value-1000euro','Fontsize',14);
title(ax3,{'"fishery" dataset: FSRr fit with R2th=0.85','Prediction interval and outliers detected'},'Fontsize',20,'Interpreter','LaTex');
close(f3); close(f4);
close all
save tempfileWS