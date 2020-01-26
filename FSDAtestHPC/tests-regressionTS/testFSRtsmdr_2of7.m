load tempfileWS
% Set up a personalized model.
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=104;         % four harmonics with time varying seasonality
% Choose step to start monitoring.
init=80;
out1=FSRtsmdr(y,0,'model',model,'init',80,'plots',1);
close all
save tempfileWS