load tempfileWS
plot(x,y,'.');
% thinning over the original bi-variate data
[Wt2,pretain2] = wthin([x,y], 'retainby','comp2one');
plot(x(Wt2,:),y(Wt2,:),'k.',x(~Wt2,:),y(~Wt2,:),'r.');
drawnow;
axis manual
clickableMultiLegend(['Retained: ' num2str(sum(Wt2))],['Thinned:   ' num2str(sum(~Wt2))]);
title('"comp2one" thinning over the original bi-variate data');
close all
save tempfileWS