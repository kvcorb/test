load tempfileWS
rng('default')
rng(1)
model=struct;
model.trend=[];
model.trendb=[];
model.seasonal=103;
model.seasonalb=40*[0.1 -0.5 0.2 -0.3 0.3 -0.1 0.222];
model.signal2noiseratio=20;
T=100;
out=simulateTS(T,'model',model,'plots',1);
close all
save tempfileWS