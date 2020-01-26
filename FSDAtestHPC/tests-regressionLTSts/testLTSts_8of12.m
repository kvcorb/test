load tempfileWS
y1=log(y);
% Model with linear trend, six harmonics for seasonal component and
% varying amplitude using a linear trend).
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=106;
model.lshift=0;
model.X=randn(length(y),1);
out=LTSts(y1,'model',model);
close all
% Plot real and fitted values
plot(y1,'Linewidth',1.5);
hold('on')
plot(out.yhat,'r--','Linewidth',1.5)
legend({'Real values','Fitted values'},'Location','SouthEast','interpreter','LaTeX','FontSize',14)
% Using the notation of the paper RPRH: A=1, B=6, G=1 and $\delta_1>0$.
str=strcat('A=1, B=6, G=1, $\delta_1=0$');
numpar = {'model parameters:' , str};
title(gca,numpar,'interpreter','LaTeX','FontSize',16);
close all
save tempfileWS