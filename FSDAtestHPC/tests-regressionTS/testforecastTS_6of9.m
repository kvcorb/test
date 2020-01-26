load tempfileWS
rng(1)
model=struct;
model.trend=1;
model.trendb=[1 1];
model.seasonal=103;
model.seasonalb=40*[0.5 -0.5 0.3 -0.3 0.1 -0.1 0.222];
model.lshift=40;
model.lshiftb=13000;
model.signal2noiseratio=20;
T=150;
FileNameOutput=[pwd filesep 'ysimout.txt'];
outSIM=simulateTS(T,'model',model,'FileNameOutput',FileNameOutput,...
'plots',true,'samescale',true);
y=outSIM.y;
% Data contamination
y(131:140)=y(131:140)-29000;
% Estimation
modelEST=struct;
modelEST.trend=1;
modelEST.seasonal=103;
modelEST.lshift=30;
outEST=LTSts(y,'model',modelEST,'dispresults',true,'plots',0);
% Forecasting
% nfore= number of forecasts;
nfore=36;
% Forecasts with a 99.9 per cent confidence level
OUTfore=forecastTS(outEST,'model',modelEST,'nfore',nfore,'conflev',0.999);
close all
save tempfileWS