load tempfileWS
% House price data 
load hprice.txt;
n=size(hprice,1);
y=hprice(:,1);
X=hprice(:,2:5);
outFSR=FSR(y,X,'plots',0,'msg',0);
dout=n-length(outFSR.ListOut);
% init = point to start monitoring diagnostics along the FS
init=20;
[outLXS]=LXS(y,X,'nsamp',10000);
outEDA=FSReda(y,X,outLXS.bs,'conflev',[0.95 0.99],'init',init);
p=size(X,2)+1;
% Set font size, line width and line style
figure;
lwd=2.5;
FontSize=14;
linst={'-','--',':','-.','--',':'};
nr=3;
nc=2;
xlimL=init; % lower value fo xlim
xlimU=n+1;  % upper value of xlim
close all
for j=1:p
subplot(nr,nc,j);
hold('on')
% plot 95% and 99% HPD  trajectories
plot(outEDA.Bols(:,1),outEDA.betaINT(:,1:2,j),'LineStyle',linst{4},'LineWidth',lwd,'Color','b')
plot(outEDA.Bols(:,1),outEDA.betaINT(:,3:4,j),'LineStyle',linst{4},'LineWidth',lwd,'Color','r')
% plot estimate of beta1_j
plot(outEDA.Bols(:,1),outEDA.Bols(:,j+1)','LineStyle',linst{1},'LineWidth',lwd,'Color','k')
% Set ylim
ylimU=max(outEDA.betaINT(:,4,j));
ylimL=min(outEDA.betaINT(:,3,j));
ylim([ylimL ylimU])
% Set xlim
xlim([xlimL xlimU]);
% Add vertical line in correspondence of the step prior to the
% entry of the first outlier
line([dout; dout],[ylimL; ylimU],'Color','r','LineWidth',lwd);
ylabel(['$\hat{\beta_' num2str(j-1) '}$'],'Interpreter','LaTeX','FontSize',20,'rot',-360);
set(gca,'FontSize',FontSize);
if j>(nr-1)*nc
xlabel('Subset size m','FontSize',FontSize);
end
end
% Subplot associated with the monitoring of sigma^2
subplot(nr,nc,6);
hold('on')
% 99%
plot(outEDA.sigma2INT(:,1),outEDA.sigma2INT(:,4:5),'LineStyle',linst{4},'LineWidth',lwd,'Color','r')
% 95%
plot(outEDA.sigma2INT(:,1),outEDA.sigma2INT(:,2:3),'LineStyle',linst{2},'LineWidth',lwd,'Color','b')
% Plot rescaled S2
plot(outEDA.S2(:,1),outEDA.S2(:,4),'LineWidth',lwd,'Color','k')
ylabel('$\hat{\sigma}^2$','Interpreter','LaTeX','FontSize',20,'rot',-360);
set(gca,'FontSize',FontSize);
% Set ylim
ylimU=max(outEDA.sigma2INT(:,5));
ylimL=min(outEDA.sigma2INT(:,4));
ylim([ylimL ylimU])
% Set xlim
xlim([xlimL xlimU]);
% Add vertical line in correspondence of the step prior to the
% entry of the first outlier
line([dout; dout],[ylimL; ylimU],'Color','r','LineWidth',lwd);
xlabel('Subset size m','FontSize',FontSize);
% Add multiple title
suplabel(['Housing data; confidence intervals of the parameters monitored in the interval ['...
num2str(xlimL) ',' num2str(xlimU) ...
']'],'t');
disp(['The vertical lines are located in the' ...
' step prior to the inclusion of the first outlier'])
close all
save tempfileWS