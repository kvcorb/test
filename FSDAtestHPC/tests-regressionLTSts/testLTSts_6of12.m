load tempfileWS
yLS=y;
yLS(55:end)=yLS(55:end)+130;
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=1;
model.lshift=13;            % impose level shift
out=LTSts(yLS,'model',model);
close all
% Plot real and fitted values
plot(yLS,'Linewidth',1.5);
hold('on')
plot(out.yhat,'r--','Linewidth',1.5)
legend({'Real values','Fitted values'},'Location','SouthEast','interpreter','LaTeX','FontSize',14)
% Using the notation of the paper RPRH: A=1, B=1, G=0 and $\delta_1>0$.
str=strcat('A=1, B=1, G=0, $\delta_2=',num2str(out.posLS),'$');
numpar = {'model parameters:' , str};
title(gca,numpar,'interpreter','LaTeX','FontSize',16);
close all
save tempfileWS