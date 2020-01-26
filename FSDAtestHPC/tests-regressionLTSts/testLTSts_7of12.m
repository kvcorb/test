load tempfileWS
yLS=y;
yLS(35:end)=yLS(35:end)-300;
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=106;
model.lshift=13;
out=LTSts(yLS,'model',model);
close all
% Plot real and fitted values
plot(yLS,'Linewidth',1.5);
hold('on')
plot(out.yhat,'r--','Linewidth',1.5)
legend({'Real values','Fitted values'},'Location','SouthEast','interpreter','LaTeX','FontSize',14)
% Using the notation of the paper RPRH: A=1, B=6, G=1 and $\delta_1>0$.
str=strcat('A=1, B=6, G=1, $\delta_2=',num2str(out.posLS),'$');
numpar = {'model parameters:' , str};
title(gca,numpar,'interpreter','LaTeX','FontSize',16);
close all
save tempfileWS