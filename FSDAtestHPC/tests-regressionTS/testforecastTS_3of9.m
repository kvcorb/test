load tempfileWS
close all
rng(1)
model=struct;
model.trend=2;
model.seasonal=2;
model.lshift=30;
modelSIM=model;
modelSIM.trendb=[5,10,-3];
modelSIM.seasonalb=100*[2 4 0.1 8];
modelSIM.signal2noiseratio=20;
modelSIM.lshiftb=10000;
T=100;
% Simulate
outSIM=simulateTS(T,'model',modelSIM,'plots',1);
ySIM=outSIM.y;
% Estimate
%  model.lshift=5 implies that LS is investigated from position 5
model.lshift=5;
outEST=LTSts(ySIM,'model',model,'plots',1,'msg',0);
% Forecast
outFORE=forecastTS(outEST,'model',model,'plots',1);
close all
save tempfileWS