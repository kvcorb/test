load tempfileWS
% Model with linear trend, two harmonics for seasonal component and
% varying amplitude using a linear trend.
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=104;         % two harmonics with time varying seasonality
bsini=1:72;
out=regressts(y,'model',model,'bsb',bsini);    
outCR=regressts(y,'model',model,'bsb',bsini,'smallsamplecor',true,'asymptcor',true);   
h1=subplot(2,1,1);
title('Estimate of the scale without correction factors')
resindexplot(out.residuals,'h',h1)
h2=subplot(2,1,2);
resindexplot(outCR.residuals,'h',h2)
title('Estimate of the scale with correction factors')
close all
save tempfileWS