load tempfileWS
plot(x,y,'.');
% thinning over the original bi-variate data
[Wt2,pretain2] = wthin([x,y]);
plot(x(Wt2,:),y(Wt2,:),'k.',x(~Wt2,:),y(~Wt2,:),'r.');
drawnow;
axis manual;
title('bivariate thinning')
clickableMultiLegend(['Retained: ' num2str(sum(Wt2))],['Thinned:   ' num2str(sum(~Wt2))]);
close all
save tempfileWS