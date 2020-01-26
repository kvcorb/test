load tempfileWS
rng(1)
model=struct;
model.trend=2;
model.trendb=[5,10,-3];
model.seasonal=2;
model.seasonalb=100*[2 4 0.1 8];
model.signal2noiseratio=20;
model.lshift=30;
model.lshiftb=5000;
T=100;
out=simulateTS(T,'model',model,'plots',1);
close all
save tempfileWS