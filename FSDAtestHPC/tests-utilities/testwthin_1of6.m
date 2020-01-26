clear all; close all;
% The dataset is bi-dimensional and contain two collinear groups with
% regression structure. One group is dense, with 1000 units; the second
% has 100 units. Thinning in done according to the density of the values
% predicted by the OLS fit.
x1 = randn(1000,1);
x2 = 8 + randn(100,1);
x = [x1 ; x2];
y = 5*x + 0.9*randn(1100,1);
b = [ones(1100,1) , x] \ y;
yhat = [ones(1100,1) , x] * b;
plot(x,y,'.',x,yhat);
%x3 = 0.2 + 0.01*randn(1000,1);
%y3 = 40 + 0.01*randn(1000,1);
%plot(x,y,'.',x,yhat,'--',x3,y3,'.');
% thinning over the predicted values
%[Wt,pretain] = wthin([yhat ; y3], 'retainby','comp2one');
[Wt,pretain] = wthin(yhat, 'retainby','comp2one');
figure;
plot(x(Wt,:),y(Wt,:),'k.',x(~Wt,:),y(~Wt,:),'r.');
drawnow;
axis manual;
title('univariate thinning over predicted ols values')
clickableMultiLegend(['Retained: ' num2str(sum(Wt))],['Thinned:   ' num2str(sum(~Wt))]);
close all
save tempfileWS