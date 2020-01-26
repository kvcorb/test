load tempfileWS
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=104;         % four harmonics with time varying seasonality
init=80;
[mdr,Un,BB,Bols,S2] =FSRtsmdr(y,0,'model',model,'init',80,'bsbsteps',[90 120]);
% BB has just two columns
% First column contains information about units forming subset at step m=90
% sum(~isnan(BB(:,1))) is 90
% Second column contains information about units forming subset at step m=120
% sum(~isnan(BB(:,2))) is 120
disp(sum(~isnan(BB(:,1))))
disp(sum(~isnan(BB(:,2))))
close all
save tempfileWS