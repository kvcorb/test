load tempfileWS
x1 = randn(85,1);
x2 = 8 + randn(10,1);
x = [x1 ; x2];
y = 5*x + 0.9*randn(95,1);
b = [ones(95,1) , x] \ y;
yhat = [ones(95,1) , x] * b;
plot(x,y,'.',x,yhat,'--');
% thinning over the predicted values
[Wt,pretain] = wthin(yhat, 'retainby','comp2one');
plot(x(Wt,:),y(Wt,:),'k.',x(~Wt,:),y(~Wt,:),'r.');
drawnow;
axis manual
title('univariate thinning over ols values predicted on a small dataset')
clickableMultiLegend(['Retained: ' num2str(sum(Wt))],['Thinned:   ' num2str(sum(~Wt))]);
close all
save tempfileWS