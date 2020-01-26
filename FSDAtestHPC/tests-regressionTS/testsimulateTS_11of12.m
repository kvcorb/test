load tempfileWS
rng('default')
rng(100)
model=struct;
model.trend=1;
model.trendb=[5,1000];
model.seasonal='';
model.signal2noiseratio=10;
model.ARb=[0.2 0.7];
T=100;
out=simulateTS(T,'model',model,'plots',1);
y=out.y;
% The lines below just work if the econometric toolbox is present
% The autocorrelation function of y shows just two peaks in
% correspondence of the first two lags
if exist('parcorr','file')>0
figure
parcorr(out.y)
end
close all
save tempfileWS