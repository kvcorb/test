load tempfileWS
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=104;         % four harmonics with time varying seasonality
% Call LTSts
out=LTSts(y,'model',model');
% Extract best initial subset from LTSts.
[~,indres]=sort(abs(out.residuals));
bs=indres(1:50);
[mdr,Un,BB,Bols,S2,Exflag] =FSRtsmdr(y,bs,'model',model,'init',length(bs)+1,'plots',1);
close all
save tempfileWS