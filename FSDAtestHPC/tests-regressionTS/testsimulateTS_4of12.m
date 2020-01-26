load tempfileWS
rng(1)
model=struct;
model.trend=[];
model.trendb=[];
model.seasonal=201;
model.seasonalb=40*[0.1 -0.5 10.222 -10];
model.signal2noiseratio=20;
T=100;
out=simulateTS(T,'model',model,'plots',1);
close all
save tempfileWS