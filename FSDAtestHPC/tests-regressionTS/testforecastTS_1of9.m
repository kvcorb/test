close all
rng(1)
model=struct;
model.trend=1;
model.seasonal=103;
modelSIM=model;
modelSIM.trendb=[0 0];
modelSIM.seasonalb=40*[0.1 -0.5 0.2 -0.3 0.3 -0.1 0.222];
modelSIM.signal2noiseratio=20;
T=100;
% Simulate
outSIM=simulateTS(T,'model',modelSIM,'plots',1);
ySIM=outSIM.y;
% Estimate
outEST=LTSts(ySIM,'model',model,'plots',1);
% Forecast
outFORE=forecastTS(outEST,'model',model,'plots',1);
close all
save tempfileWS