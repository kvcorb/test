X=load('ozone.txt');
% Tranform the response using logs
X(:,end)=log(X(:,end));
% Add a time trend
X=[(-40:39)' X];
% Define y
y=X(:,end);
% Define X
X=X(:,1:end-1);
labels={'Time','1','2','3','4','5','6','7','8'};
% Robust model selection using Cp
[Cpms]=FSRms(y,X,'labels',labels);
% Candlestick plot
cdsplot(Cpms);
close all
save tempfileWS