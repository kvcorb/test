load tempfileWS
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=102;         % two harmonics with time varying seasonality
% Fit is based just on the first 40 observations
out=regressts(y,'model',model,'bsb',[1:40],'dispresults', true, 'plots',1);
close all
save tempfileWS