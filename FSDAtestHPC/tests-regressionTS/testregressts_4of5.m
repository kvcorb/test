load tempfileWS
StartDate=[1949,1]
% Imposed level shift in position t=60 and 4 harmonics
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=104;         % four harmonics with time varying seasonality
model.posLS=60;             % level shift in position t=60
out=regressts(y,'model',model,'plots',1,'StartDate',StartDate);
close all
save tempfileWS