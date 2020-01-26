load tempfileWS
close all
rng(1)
model=struct;
model.trend=2;
model.seasonal=3;
modelSIM=model;
modelSIM.trendb=[100 10 -0.05];
modelSIM.seasonalb=400*[0.1 -0.5 0.2 -0.3 0.3 -0.1];
modelSIM.signal2noiseratio=1;
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