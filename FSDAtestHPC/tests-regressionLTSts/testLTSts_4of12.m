load tempfileWS
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=102;         % two harmonics with time varying seasonality
model.lshift=0;             % no level shift
out=LTSts(y,'model',model);
close all
% Plot real and fitted values
plot(y,'Linewidth',1.5);
hold('on')
plot(out.yhat,'r--','Linewidth',1.5)
legend({'Real values','Fitted values'},'Location','SouthEast','interpreter','LaTeX','FontSize',14)
numpar = {'model parameters:' , 'A=1, B=2, G=1, $\delta_1=0$'};
title(gca,numpar,'interpreter','LaTeX','FontSize',16);
close all
save tempfileWS