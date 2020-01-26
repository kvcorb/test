load tempfileWS
rng(1)
model=struct;
model.trend=[];
model.trendb=[];
model.seasonal=102;
model.seasonalb=40*[0.1 -0.5 0.2 0.3 0.01];
model.signal2noiseratio=20;
model.lshift=30;
model.lshiftb=2000;
T=100;
outSIM=simulateTS(T,'model',model,'plots',1);
y=outSIM.y;
% Contaminate the series.
y(80:90)=y(80:90)+2000;
model1=struct;
model1.trend=1;              % linear trend
model1.s=12;                 % monthly time series
model1.seasonal=104;
model1.lshift=10;
% Automatically serch for level shift and outliers
out=FSRts(y,'model',model1,'msg',0);
close all
save tempfileWS