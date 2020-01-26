load tempfileWS
rng(1)
model=struct;
model.trend=[];
model.trendb=[];
model.seasonal=103;
model.seasonalb=40*[0.1 -0.5 0.2 -0.3 0.3 -0.1 0.222];
model.signal2noiseratio=20;
T=100;
outSIM=simulateTS(T,'model',model,'plots',1);
y=outSIM.y;
y(80:90)=y(80:90)+15000;
model1=struct;
model1.trend=1;              % linear trend
model1.s=12;                 % monthly time series
model1.lshift=0;
model1.seasonal=104;
out=FSRts(y,'model',model1);
close all
save tempfileWS