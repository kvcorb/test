load tempfileWS
close all;
clear all;
load fishery
data = fishery.data;
X = data(:,1);
y = data(:,2);
n = length(y);
% Bonferronized confidence level
cl = 0.01/n;
% LTS with 60% observations for the LS fit
h = floor(n*0.6);
outLTS = LXS(y,X,'plots',0,'conflev',1-cl,'h',h);
plo.clr = 'rb'; plo.sym = 'xo'; plo.labeladd = 1;
yXplot(y,X,outLTS.weights,plo,'tag','LTSfit');
olsline(1)
price_LTS = X(logical(outLTS.weights))\y(logical(outLTS.weights));
title({'LTS fit using 60% of the data' , [num2str(price_LTS) ' euro/Kg']},'Fontsize',13);
xlabel('Quantity-Ton','Fontsize',14); ylabel('Value-1000euro','Fontsize',14);
h1 = allchild(gca); a1 = gca; f1 = gcf;
% Standard FSR, with Bonferronized band
outFS = FSR(y,X,'plots',0,'bonflev',cl,'h',h);
FSoutliers = ones(n,1); FSoutliers(outFS.outliers) = 0;
yXplot(y,X,'group',FSoutliers,'plo',plo,'tag','FSfit');
olsline(1)
price_FS = X(logical(FSoutliers))\y(logical(FSoutliers));
title({'Standard FS fit' , [num2str(price_FS) ' euro/Kg']},'Fontsize',13);
xlabel('Quantity-Ton','Fontsize',14); ylabel('Value-1000euro','Fontsize',14);
h2 = allchild(gca); a2 = gca; f2 = gcf;
% FSRr, with scale rescaled so that R2 is forced to be 0.9 
outFSr = FSRr(y,X,'alpha',cl,'R2th',0.90,'fullreweight',true,'plotsPI',1,'plots',0);
title({'Prediction interval for FSRr fit' , 'with R2th=0.90.'},'Fontsize',13);
xlabel('Quantity-Ton','Fontsize',14); ylabel('Value-1000euro','Fontsize',14);
h3 = allchild(gca); a3 = gca; f3 = gcf;
FSroutliersr = ones(n,1); FSroutliersr(outFSr.outliersr) = 0;
yXplot(y,X,'group',FSroutliersr,'plo',plo,'tag','FSrfit');
olsline(1)
price_FSr = X(logical(FSroutliersr))\y(logical(FSroutliersr));
title({'FSRr fit, with R2th=0.90' , [num2str(price_FSr) ' euro/Kg']},'Fontsize',13);
xlabel('Quantity-Ton','Fontsize',14); ylabel('Value-1000euro','Fontsize',14);
h4 = allchild(gca); a4 = gca; f4 = gcf;
% move the figure above into a single one with two panels
figure; ax1 = subplot(2,2,1); ax2 = subplot(2,2,2);
ax3 = subplot(2,2,3); ax4 = subplot(2,2,4);
copyobj(h1,ax1); title(ax1,get(get(a1,'title'),'string'));
copyobj(h2,ax2); title(ax2,get(get(a2,'title'),'string'));
copyobj(h3,ax3); title(ax3,get(get(a3,'title'),'string'));
copyobj(h4,ax4); title(ax4,get(get(a4,'title'),'string'));
close(f1); close(f2); close(f3); close(f4);
close all
save tempfileWS