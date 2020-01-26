load tempfileWS
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=102;         % two harmonics with time varying seasonality
out=regressts(y,'model',model,'plots',1);
close all
save tempfileWS