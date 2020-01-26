% data model
model=struct;
model.trend=1;                  % linear trend
model.trendb=[0 1];             % parameters of the linear trend
model.s=12;                     % monthly time series
model.seasonal=1;               % 1 harmonic with linear trend
model.seasonalb=[10 10];        % parameter for one harmonic with linear trend
model.lshiftb=100;              % level shift amplitude
model.lshift= 30;               % level shift amplitude
model.signal2noiseratio = 100;  % signal to noise
n = 100;                        % sample size
tmp = rand(n,1);
model.X = tmp.*[1:n]';          % a extra covariate
model.Xb = 1;                   % beta coefficient of the covariate
% generate data
out_sim=simulateTS(n,'plots',1,'model',model);
%run LTStsVarSel with all default options
rng(1);
[out_model_0, out_reduced_0] = LTStsVarSel(out_sim.y);
% optional: add a FS step to the LTSts estimator
% outFS = FSRts(out_sim.y,'model',out_model_0);
% To be fixed: 'Non existent user option found-> '    'ARp'
close all
save tempfileWS